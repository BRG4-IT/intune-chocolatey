<#
    script for (un)installing a chocolatey package
    
    examples:
    
    # installing firefox with chocolatey (for package name see https://community.chocolatey.org/packages)
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox"
    
    # installing firefox with chocolatey and log script output to `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-firefox-yyyy-MM-dd-HHmmss.log
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -Log

    # installing firefox with parameters (Note: all valid parameters for a choco package can be listed by running
    # choco info <packagename>
    # on your locla computer)
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -Parameter "/NoDesktopShortcut /NoAutoUpdate"
    
    # uninstalling firefox with chocolatey and removing all firefox desktop icons
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -Uninstall

    # installing choco package "geogebra" and adds a desktop icon for the program with the name "GeoGebra"
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "geogebra" -DesktopIcon "GeoGebra"

    # installing choco package "geogebra" and adds a desktop icon for the program with the name "GeoGebra 5.0"
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "geogebra" -DesktopIcon "GeoGebra" -AppendVersion

    # installing choco package "geogebra" andadds a desktop icon for the program with the name "GeoGebra GeoGebra 5.0.134.0"
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "geogebra" -DesktopIcon "GeoGebra" -AppendVersion -FullVersion

    # installing choco package "scribus", adds a desktop icon for the program with the name "Scribus" and removes any other desktop icons for this program
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "scribus" -DesktopIcon "Scribus" -DesktopIconUnique

    # uninstalling PuTTY with chocolatey and removing all custom "PuTTY" desktop icons 
    # When using -DesktopIcon for creating custom icons, use this parameter also in the uninstall command!
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "putty.install" -DesktopIcon "PuTTY" -Uninstall
    
    # install firefox with chocolatey and remove the Desktop Icon
    # (if provided by the package author the install parameter /NoDesktopShortcut is recommended.)
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -RemoveDesktopIcon

    # install libreoffice with chocolatey and remove the Desktop Icon named "LibreOffice 7.2"
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "libreoffice-fresh" -DesktopIcon "LibreOffice" -RemoveDesktopIcon

#>

param (
    [Parameter(Mandatory=$true)] # name of the chocolatey package (see https://community.chocolatey.org/packages)
    [string]$Name = '',

    [Parameter(Mandatory=$false)] # additional parameters passed to the choco install command
    [string]$Parameter = '',
    
    [Parameter(Mandatory=$false)] # if provided the package is uninstalled
    [switch]$Uninstall = $false,
    
    [Parameter(Mandatory=$false)] # a program link (LNK) from the start menu folder is copied to the desktop with the name given 
    [string]$DesktopIcon = '',

    [Parameter(Mandatory=$false)] # if set, removes all other desktop icons for the program
    [switch]$DesktopIconUnique = $false,

    [Parameter(Mandatory=$false)] # if set, tries do remove desktop icon for the program
    [switch]$RemoveDesktopIcon = $false,

    [Parameter(Mandatory=$false)] # if set, tries do remove desktop icon for the program
    [switch]$AppendVersion = $false,

    [Parameter(Mandatory=$false)] # if set, logs script parameters and script output to file
    [switch]$Log = $false,

    [Parameter(Mandatory=$false)] # if set, the full version number is used for desktop icon name in combination with the -AppendVersion switch
    [switch]$FullVersion = $false
)

$IntuneLogPath = "$($env:ALLUSERSPROFILE)\Microsoft\IntuneManagementExtension\Logs"
if ($Log) {
    $ErrorActionPreference="SilentlyContinue"
    Stop-Transcript | out-null
    $ErrorActionPreference = "Continue"
    $LogPath = "$($env:SystemDrive)"
    if (Test-Path "$IntuneLogPath") {
        $LogPath = $IntuneLogPath
    }
    Start-Transcript -path "$LogPath\choco-install-package-$Name-$(get-date -f yyyy-MM-dd-HHmmss).log" -append
    if ([Environment]::Is64BitProcess) {
        Write-Host "Script running as 64-bit process."
    }
    else {
        Write-Host "Script running as 32-bit process."
    }
    Write-Host "Script parameters:"
    foreach ($p in $PsBoundParameters.GetEnumerator()) {
        Write-Host "$($p.Key) = $($p.Value)"
    }
    Write-Host "`n"
}

if (-not (Test-Path $env:ChocolateyInstall)) {
    Write-Host "Chocolatey not installed! Install manually or set chocolatey installation as dependency in intune"
    exit 1
}

if ($Name.Length -eq 0) {
    Write-Host "Missing Argument for parameter -Name (chocolatey package name)"
    exit 1
}


### Program installation/uninstallation

if ($Uninstall) {
    Write-Host "Uninstall chocolatey package $Name..."
    choco uninstall "$Name" -y
}
else {
    # if a user deletes the program directory, choco lists the program still as installed
    # thus we have to choco UNinstall first, before installing package again.
    $InstalledPackages = choco list --localonly
    $packageList = $InstalledPackages.Split([Environment]::NewLine)
    $found = $packageList | where {$_ -match "$Name *"}
    if (($found).Count -gt 0) {
        Write-Host "There seems to be a broken $Name choco installation. Uninstalling chocolatey package first..."
        choco uninstall "$Name" -y
    }
    
    Write-Host "Installing chocolatey package $Name..."
    if ($Parameter.Length -eq 0) {
        choco install "$Name" -y
    }
    else {
        choco install "$Name" -y --params="$Parameter"
    }
}


### create/remove Desktop icon

### determine context

$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    write-host "SYSTEM context (Shortcut applies for all users)"
    $tagetPath = "$([Environment]::GetFolderPath('CommonDesktopDirectory'))"
}
else {
    write-host "USER context (Shortcut only applies for the logged on user)"
    $tagetPath = "$([Environment]::GetFolderPath("Desktop"))"
}


### shortcut(s)

if ($Uninstall -or $RemoveDesktopIcon) {
    if ([string]::IsNullOrEmpty($DesktopIcon)) {
        $DesktopIcon = $Name
    }
    
    Write-Host "Looking for $DesktopIcon icons in $tagetPath"
    Get-ChildItem -path "$tagetPath\*" -File -Include *.lnk -Force | Where-Object {($_.Name -like "$DesktopIcon.lnk") -or ($_.Name -match "^$DesktopIcon [0-9.]+.lnk$")} | Select Name,FullName | foreach {
        Write-Host "Removing desktop icons for $Name ($($_.FullName))..."
        Remove-Item -Path $_.FullName -Force
    }
}
elseif ($DesktopIcon) {
    Write-Host "Trying to create a Desktop Link"
    $WScriptShell = New-Object -ComObject WScript.Shell
    $prgExePath = ""
    $prgVersion = ""

    ### 1. find program info

    $LNKfiles = ""
    # first try to find a LNK file in the start menu directories
    @(
        "$env:ProgramData\Microsoft\Windows\Start Menu\Programs",
        "$env:AppData\Microsoft\Windows\Start Menu\Programs"
    ) | foreach {
        $startMenuLNKs = Get-ChildItem -path "$_\*" -recurse -Include *.lnk | Select Name,FullName | Sort CreationTime -Descending # most recent program version on the top
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -like "$Name.lnk"}
        }
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -match "^$Name [0-9.]+\.lnk$"}
        }
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -like "$DesktopIcon.lnk"}
        }
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -match "^$DesktopIcon [0-9.]+\.lnk$"}
        }
    }
    if ($LNKfiles) {
        $LNKfile = $LNKfiles | select -First 1
        $prgExePath = $WScriptShell.CreateShortcut($($LNKfile.FullName)).TargetPath
        $prgVersion = (Get-Item $prgExePath).VersionInfo.ProductVersion
        Write-Output "Best match: $($LNKfile.FullName) ($prgExePath, Version: $prgVersion)"
    }
    else {
        Write-Output "no matching Sortcut (.lnk) file found in start menu folders..."
        $latestExe = Get-ChildItem -path "${env:ProgramW6432}\*","${env:ProgramFiles(x86)}\*" -recurse -Include "$DesktopIcon*.exe","$Name*.exe" -ErrorAction Ignore | Sort CreationTime -Descending | select * -First 1        
        if (!$latestExe) {
            Write-Output "no matching executable (.exe) file found in program files folders..."
        }
        else {
            $prgExePath = $latestExe.FullName
            $prgVersion = $latestExe.VersionInfo.ProductVersion
            Write-Output "matching executable (.exe) file found ($prgExePath, Version: $prgVersion)..."
        }
    }

    ### 2. create shortcut

    if (-not [string]::IsNullOrEmpty($prgExePath) ) {
        if ($DesktopIconUnique) {
            write-host "trying to find and remove any existing desktop icons for the program"
            $desktopPaths = @($tagetPath, "$([Environment]::GetFolderPath("Desktop"))") | select -Unique
            $desktopPaths | foreach {
                $currentDesktopIcons = Get-ChildItem -path "$_\*.lnk" -Force | Select Name,FullName | Sort Name
                $existingLNKfiles = $currentDesktopIcons | Where-Object {($_.Name -match "^$Name( [0-9.]+)?\.lnk$") -or ($_.Name -match "^$DesktopIcon( [0-9.]+)?\.lnk$")}
                $existingLNKfiles | foreach {
                    write-host "removing: $($_.Name) ($($_.FullName))"
                    Remove-Item -Path $_.FullName
                }
            }
        }

        if (-not $AppendVersion) {
            $targetFullPath = "$tagetPath\$DesktopIcon.lnk"
        }
        else {
            $versionString = $prgVersion -replace ",","." # some prgs like Audacity use "," as version seperator... 
            if (!$FullVersion) {
                $versionString = $versionString.Split(".")[0..1] -join(".")
            }
            $targetFullPath = "$tagetPath\$DesktopIcon $versionString.lnk"
        }

        Write-Host "Creating Desktop Link $targetFullPath"
        $Shortcut = $WScriptShell.CreateShortcut($targetFullPath)
        $Shortcut.TargetPath = "$prgExePath"
        $Shortcut.Save()
    }
}

if ($Log) {
    Stop-Transcript
}

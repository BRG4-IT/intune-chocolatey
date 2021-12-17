<#
    script for (un)installing a chocolatey package
    
    examples:
    
    # installing firefox with chocolatey
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox"
    
    # installing firefox with chocolatey tries to ensure a desktop icon for the program with the name "Firefox"
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -DesktopIcon "Firefox"

    # install firefox with chocolatey and remove the Desktop Icon
    # (if provided by the package author the install parameter /NoDesktopShortcut is recommended.)
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -RemoveDesktopIcon

    # install firefox with chocolatey and remove the Desktop Icon named "LibreOffice 7.2"
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "libreoffice-fresh" -DesktopIcon "LibreOffice" -RemoveDesktopIcon

    # installing firefox with parameters (Note: valid parameters for a certain package can be looked up 
    # at the chocolatey community website for a certain (https://community.chocolatey.org/packages/) 
    # or command: choco info <packagename>)
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -Parameter "/NoDesktopShortcut /NoAutoUpdate"
    
    # uninstalling firefox with chocolatey
    powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -Uninstall
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
    [switch]$DesktopIconUnique = $false

    [Parameter(Mandatory=$false)] # if set, tries do remove desktop icon for the program
    [switch]$RemoveDesktopIcon = $false
)

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
    Write-Host "uninstall chocolatey package $Name..."
    choco uninstall "$Name" -y
}
else {
    # if a user deletes the program directory, choco lists the program still as installed
    # thus we have to choco UNinstall first, before installing package again.
    $InstalledPackages = choco list --localonly
    $packageList = $InstalledPackages.Split([Environment]::NewLine)
    $found = $packageList | where {$_ -match "$Name *"}
    if (($found).Count -gt 0) {
        Write-Host "uninstalling chocolatey package $Name..."
        choco uninstall "$Name" -y
    }
    
    Write-Host "installing chocolatey package $Name..."
    if ($Parameter.Length -eq 0) {
        choco install "$Name" -y
    }
    else {
        choco install "$Name" -y --params="$Parameter"
    }
}


### create/remove Desktop icon

$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    write-host "SYSTEM context (Shortcut applies for all users)"
    $tagetPath = "$([Environment]::GetFolderPath('CommonDesktopDirectory'))"
}
else {
    write-host "USER context (Shortcut only applies for the logged on user)"
    $tagetPath = "$([Environment]::GetFolderPath("Desktop"))"
}

if ($Uninstall -or $RemoveDesktopIcon) {
    if ([string]::IsNullOrEmpty($DesktopIcon)) {
        $DesktopIcon = $Name
    }
    
    Write-Host "removing desktop icons for $Name..."
    Write-Host "looking for $DesktopIcon in $tagetPath"
    Get-ChildItem -path "$tagetPath\*" -File -Include *.lnk -Force | Where-Object {($_.Name -like "$DesktopIcon.lnk") -or ($_.Name -match "^$DesktopIcon [0-9.]+.lnk$")} | Select Name,FullName | foreach {
        write-host $_.FullName
        Remove-Item -Path $_.FullName -Force
    }
}
elseif ($DesktopIcon) {
    Write-Host "Trying to create Desktop Link"
    $LNKfiles = ""
    # first try to find a LNK file in the start menu directories
    @(
        "$env:ProgramData\Microsoft\Windows\Start Menu\Programs",
        "$env:AppData\Microsoft\Windows\Start Menu\Programs"
    ) | foreach {
        $startMenuLNKs = Get-ChildItem -path "$_\*" -recurse -Include *.lnk | Select Name,FullName | Sort Name -Descending # most recent program version on the top
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -like "$Name.lnk"}
        }
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -match "^$Name [0-9.]+.lnk$"}
        }
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -like "$DesktopIcon.lnk"}
        }
        if (!$LNKfiles) {
            $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -match "^$DesktopIcon [0-9.]+.lnk$"}
        }
    }
    if (!$LNKfiles) {
        Write-Output "Sorry, no matching Sortcut (.lnk) file found in start menu folders..."
    }
    else {
        $LNKfile = $LNKfiles | select -First 1
        Write-Output "Best match: $($LNKfile.FullName)"
        if ($DesktopIconUnique) {
            write-host "removing any existing desktop icons for the program"
            $currentDesktopIcons = Get-ChildItem -path "$tagetPath\*.lnk" -Force | Select Name,FullName | Sort Name
            $existingLNKfiles = $currentDesktopIcons | Where-Object {($_.Name -like "$Name.lnk") -or ($_.Name -match "^$Name [0-9.]+.lnk$") -or ($_.Name -like "$DesktopIcon") -or ($_.Name -match "^$DesktopIcon [0-9.]+.lnk$")}
            $existingLNKfiles | foreach {
                write-host "removing: $($_.Name)"
                Remove-Item -Path $_.FullName
            }
        }
        Write-Host "Creating Desktop Link"
        Copy-Item -Path $LNKfile.FullName -Destination "$tagetPath\$DesktopIcon.lnk" -Force
    }
}
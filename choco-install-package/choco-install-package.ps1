<#
    script for (un)installing a chocolatey package
    
    examples:
    
    # installing firefox with chocolatey or upgrade if outdated
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox"
    
    # installing firefox with chocolatey if not yet installed
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -NoUpgrade

    # installing firefox with parameters (Note: valid parameters for a certain package can be looked up 
    # at the chocolatey community website for a certain (https://community.chocolatey.org/packages/) )
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -Parameter "/NoDesktopShortcut /NoAutoUpdate"
    
    # uninstalling firefox with chocolatey
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -Uninstall
#>

param (
    [string]$Name = '',
    [string]$Parameter = '',
    [switch]$Uninstall = $false,
    [switch]$NoUpgrade = $false
)

if (-not (Test-Path $env:ChocolateyInstall)) {
    Write-Host "Chocolatey not installed! Install manually or set chocolatey installation as dependency in intune"
    exit 1
}

if ($Name.Length -eq 0) {
    Write-Host "Missing Argument for parameter -Name (chocolatey package name)"
    exit 1
}

if ($Uninstall) {
    Write-Host "uninstall chocolatey package $Name..."
    choco uninstall "$Name" -y
}
else {
    $InstalledPackages = choco list --localonly
    if ($InstalledPackages -like "*$Name*") {
        if ($NoUpgrade) {
            Write-Host "chocolatey package $Name allready installed."
        }
        else {
            Write-Host "upgrading chocolatey package $Name..."
            choco upgrade "$Name" -y
        }
    }
    Else {
        Write-Host "installing chocolatey package $Name..."
        if ($Parameter.Length -eq 0) {
            choco install "$Name" -y
        }
        else {
            choco install "$Name" -y --params "$Parameter"
        }
    }
}
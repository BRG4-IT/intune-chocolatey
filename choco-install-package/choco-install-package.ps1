<#
    script for (un)installing a chocolatey package
    
    examples:
    
    # installing firefox with chocolatey or upgrade if outdated
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox"
    
    # installing firefox with parameters (Note: valid parameters for a certain package can be looked up 
    # at the chocolatey community website for a certain (https://community.chocolatey.org/packages/) )
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -Parameter "/NoDesktopShortcut /NoAutoUpdate"
    
    # uninstalling firefox with chocolatey
    powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -Uninstall
#>

param (
    [string]$Name = '',
    [string]$Parameter = '',
    [switch]$Uninstall = $false
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
    # if a user deletes the program directory, choco lists the program still as installed
    # thus we first choco UNinstall the program before installing it again.
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
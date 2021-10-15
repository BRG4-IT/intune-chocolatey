### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "C:\Program Files\GIMP 2\uninst\unins000.exe")) {
    exit 1
}
$packageName = "gimp" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
if ($LastExitCode -eq 0) {
    $outdatedPackages = choco outdated
    if ($outdatedPackages -like "*$packageName*") {
        # package installed, but outdated
        exit 1
    }
    else {
        # package is installed and up to date
        exit 0
    }
}
else {
    exit $LastExitCode
}

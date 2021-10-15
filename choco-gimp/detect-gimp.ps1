### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "C:\Program Files\GIMP 2\uninst\unins000.exe")) {
    exit 1
}
$packageName = "gimp" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:PROGRAMFILES\Inkscape\bin\inkscape.exe")) {
    exit 1
}
$packageName = "inkscape" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



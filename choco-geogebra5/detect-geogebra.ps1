### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "${env:ProgramFiles(x86)}\GeoGebra 5.0\GeoGebra.exe")) {
    exit 1
}
$packageName = "geogebra" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



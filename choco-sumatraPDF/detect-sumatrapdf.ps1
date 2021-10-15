### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:LOCALAPPDATA\SumatraPDF\SumatraPDF.exe")) {
    exit 1
}
$packageName = "sumatrapdf.install" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



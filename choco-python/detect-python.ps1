### a script exit code 0 signals intune "nothing to do"...

If (-Not (Test-Path -Path "$ENV:SystemRoot\py.exe")) {
    exit 1
}
$packageName = "python" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



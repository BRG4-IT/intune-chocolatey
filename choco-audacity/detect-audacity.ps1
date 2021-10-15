### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:ProgramW6432\Audacity\Audacity.exe")) {
    exit 1
}
$packageName = "audacity" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode

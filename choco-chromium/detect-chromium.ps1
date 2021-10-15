### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:ProgramW6432\Chromium\Application\chrome.exe")) {
    exit 1
}
$packageName = "chromium" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



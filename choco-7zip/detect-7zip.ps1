### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:PROGRAMFILES\7-zip\7z.exe")) {
    exit 1
}
$packageName = "7zip" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode

### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:PROGRAMFILES\MuseScore 3\bin\MuseScore3.exe")) {
    exit 1
}
$packageName = "musescore" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode

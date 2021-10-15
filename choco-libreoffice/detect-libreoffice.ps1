### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:PROGRAMFILES\LibreOffice\program\swriter.exe")) {
    exit 1
}
$packageName = "libreoffice-fresh" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



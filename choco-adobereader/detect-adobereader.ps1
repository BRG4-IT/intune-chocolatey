### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "${env:ProgramFiles(x86)}\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe")) {
    exit 1
}
$packageName = "adobereader" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode

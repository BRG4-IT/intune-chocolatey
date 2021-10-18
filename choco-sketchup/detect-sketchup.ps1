### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "$env:PROGRAMFILES\SketchUp\SketchUp 2017\SketchUp.exe")) {
    exit 1
}
$packageName = "sketchup" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode

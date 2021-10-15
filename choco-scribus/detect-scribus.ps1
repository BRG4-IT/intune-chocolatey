### a script exit code 0 signals intune "nothing to do"...
If (-Not (Test-Path -Path "HKLM:\SOFTWARE\Classes\.sla")) {
    exit 1
}
$packageName = "scribus" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode


C:\Program Files\Audacity\
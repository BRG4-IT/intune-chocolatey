# checking for a successful choco InkScape installation


### check chocolatey

$packageName = "inkscape" 
$installedPackages = $(choco list --localonly --idonly).Split([Environment]::NewLine)
if ($packageName -notin $installedPackages) {
    Write-Output "choco package '$packageName' not installed!"
    exit 1
}
else {
    Write-Output "choco package '$packageName' installed..."
}


### check executable path

$results = Get-ChildItem -path "${env:ProgramW6432}\*","${env:ProgramFiles(x86)}\*" -recurse -Include "inkscape.exe" -ErrorAction Ignore  | select * -First 1 
If ($results) {
    Write-Output "Executable found ($($results.FullName))..."
}
else {
    Write-Host "Executable missing"
    exit 1
}


Write-Output "Everything seems fine."
exit 0


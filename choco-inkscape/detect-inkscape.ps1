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

If (-Not (Test-Path -Path "$env:PROGRAMFILES\Inkscape\bin\inkscape.exe")) {
    Write-Host "Executable missing"
    exit 1
}
else {
    Write-Output "Executable found..."
}


Write-Output "Everything seems fine."
exit 0

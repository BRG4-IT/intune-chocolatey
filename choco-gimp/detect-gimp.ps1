# checking for a successful choco gimp installation

$chocoPackageFilePath = "$env:ChocolateyInstall\lib\gimp\gimp.nupkg"
If (-Not (Test-Path -Path "$chocoPackageFilePath")) {
    Write-Output "choco $chocoPackageFilePath program package file not found"
    exit 1
}

$path = (Get-ChildItem "$env:ProgramW6432" -Directory | Sort | Where-Object {$_.Name -match "gimp*"} | Select -Last 1).FullName
If ([string]::IsNullOrEmpty($path)) {
    Write-Output "program path not found"
    exit 1
}

$exefile = (Get-ChildItem "$path\bin" -File | Sort | Where-Object {$_.Name -match "gimp-\d+.\d+.exe"} | Select -Last 1).FullName
If ([string]::IsNullOrEmpty($exefile)) {
    Write-Output "program executeable not found"
    exit 1
}

Write-Output "gimp package and executable successfuly detected."
exit 0

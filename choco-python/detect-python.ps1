# checking for a successful choco Python installation


### check chocolatey

$packageName = "python"
$installedPackages = $(choco list --localonly --idonly).Split([Environment]::NewLine)
if ($packageName -notin $installedPackages) {
    Write-Output "choco package '$packageName' not installed!"
    exit 1
}
else {
    Write-Output "choco package '$packageName' installed..."
}



### check StartMenu entries

$shortcutName = "^Python [0-9.]+ \(64-bit\)\.lnk$"
$LNKfiles = ""
@(
    "$env:ProgramData\Microsoft\Windows\Start Menu\Programs",
    "$env:AppData\Microsoft\Windows\Start Menu\Programs"
) | foreach {
    $startMenuLNKs = Get-ChildItem -path "$_\*" -recurse -Include *.lnk | Select Name,FullName | Sort Name -Descending # most recent program version on the top
    if (!$LNKfiles) {
        $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -match $shortcutName}
    }
}
if (!$LNKfiles) {
    Write-Output "No shortcut file '$shortcutName' found in start menu folders!"
    exit 1
}
else {
    Write-Output "Startmenu Shortcut '$($LNKfiles.Name)' ($shortcutName) found..."
}


### check existence of executable file found in StartMenu Shortcut

$LNKfile = $LNKfiles | select -First 1
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcutTarget = $WScriptShell.CreateShortcut($LNKfile.FullName).TargetPath
if (-not (Test-Path $shortcutTarget)) {
    Write-Host "Path '$shortcutTarget' is missing!"
    exit 1
}
else {
    Write-Output "Executable '$shortcutTarget' found..."
}

Write-Output "Everything seems fine."
exit 0













### a script exit code 0 signals intune "nothing to do"...

If (-Not (Test-Path -Path "$ENV:SystemRoot\py.exe")) {
    exit 1
}
$packageName = "python" 
choco feature enable --name="'useEnhancedExitCodes'" -y
choco list -e $packageName --local-only
exit $LastExitCode



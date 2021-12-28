# checking for a successful choco MuseScore installation

$packageName = "musescore"
$shortcutNameRegExp = "^MuseScore( [0-9.]+)?\.lnk$"


### check chocolatey

$installedPackages = $(choco list --localonly --idonly).Split([Environment]::NewLine)
if ($packageName -notin $installedPackages) {
    Write-Output "choco package '$packageName' not installed!"
    exit 1
}
else {
    Write-Output "choco package '$packageName' installed..."
}



### check StartMenu entries

$LNKfiles = ""
@(
    "$env:ProgramData\Microsoft\Windows\Start Menu\Programs",
    "$env:AppData\Microsoft\Windows\Start Menu\Programs"
) | foreach {
    $startMenuLNKs = Get-ChildItem -path "$_\*" -recurse -Include *.lnk | Select Name,FullName | Sort Name -Descending # most recent program version on the top
    if (!$LNKfiles) {
        $LNKfiles = $startMenuLNKs | Where-Object {$_.Name -match $shortcutNameRegExp}
    } 
}
if (!$LNKfiles) {
    Write-Output "No shortcut file '$shortcutNameRegExp' found in start menu folders!"
    exit 1
}
else {
    Write-Output "Startmenu Shortcut '$($LNKfiles.Name)' ($shortcutNameRegExp) found..."
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


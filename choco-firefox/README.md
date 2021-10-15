## Firefox Webbrowser (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Firefox Webbrowser</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Firefox is a free and open-source web browser developed by the Mozilla Foundation and its subsidiary, the Mozilla Corporation. Firefox uses the Gecko rendering engine to display web pages, which implements current and anticipated web standards.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Mozilla Corporation</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.mozilla.org/de/firefox/</textarea>

### Icon: 

![firefox icon](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Firefox_logo%2C_2019.svg/120px-Firefox_logo%2C_2019.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Firefox_logo%2C_2019.svg/462px-Firefox_logo%2C_2019.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Firefox_logo%2C_2019.svg/462px-Firefox_logo%2C_2019.svg.png)

### Install:
<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox"</textarea>


### Uninstall:
<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES%\Mozilla Firefox\</textarea>

File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">firefox.exe</textarea>

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-firefox.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-firefox-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
## Inkscape (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Inkscape</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Inkscape is a free and open-source vector graphics editor used to create vector images, primarily in Scalable Vector Graphics (SVG) format. Other formats can be imported and exported.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Inkscape Community</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://inkscape.org/</textarea>

### Icon: 

![inkscape cion](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/120px-Inkscape_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/480px-Inkscape_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/480px-Inkscape_Logo.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "inkscape"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "inkscape" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES%\Inkscape\bin\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">inkscape.exe</textarea>

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-inkscape.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-inkscape-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
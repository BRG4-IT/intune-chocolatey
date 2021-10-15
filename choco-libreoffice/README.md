## LibreOffice (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
LibreOffice</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
LibreOffice is a free and open-source office productivity software suite. The LibreOffice suite consists of programs for word processing, creating and editing of spreadsheets, slideshows, diagrams and drawings, working with databases, and composing mathematical formulae.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
The Document Foundation</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://de.libreoffice.org/</textarea>

### Icon: 

![libreoffice icon](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/LibreOffice_icon_3.3.1_48_px.svg/100px-LibreOffice_icon_3.3.1_48_px.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/LibreOffice_icon_3.3.1_48_px.svg/400px-LibreOffice_icon_3.3.1_48_px.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/LibreOffice_icon_3.3.1_48_px.svg/400px-LibreOffice_icon_3.3.1_48_px.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "libreoffice-fresh"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "libreoffice-fresh" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES%\LibreOffice\program\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
swriter.exe</textarea>

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-libreoffice.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-libreoffice-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
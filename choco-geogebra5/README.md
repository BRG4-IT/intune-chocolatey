## GeoGebra 5 (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
GeoGebra 5</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
GeoGebra is an interactive geometry, algebra, statistics and calculus application, intended for learning and teaching mathematics and science from primary school to university level.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Markus Hohenwarter</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://geogebra.org/</textarea>

### Icon: 

![chromium icon](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/120px-Geogebra.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/480px-Geogebra.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/480px-Geogebra.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "geogebra"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "geogebra" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES(X86)%\GeoGebra 5.0\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
GeoGebra.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-geogebra.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-geogebra-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
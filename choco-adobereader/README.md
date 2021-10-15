## Adobe Acrobat Reader DC (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Adobe Acrobat Reader DC</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Adobe Acrobat is a family of application software and Web services developed by Adobe Inc. to view, create, manipulate, print and manage Portable Document Format (PDF) files.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Adobe Inc.</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://acrobat.adobe.com/</textarea>

### Icon: 

![Audacity icon](https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Adobe_Acrobat_DC_logo_2020.svg/120px-Adobe_Acrobat_DC_logo_2020.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Adobe_Acrobat_DC_logo_2020.svg/480px-Adobe_Acrobat_DC_logo_2020.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Adobe_Acrobat_DC_logo_2020.svg/480px-Adobe_Acrobat_DC_logo_2020.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "adobereader"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "adobereader" -Uninstall</textarea>

### Installationsverhalten: 

__System__


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES(X86)%\Adobe\Acrobat Reader DC\Reader\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
AcroRd32.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-adobereader.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-adobereader-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
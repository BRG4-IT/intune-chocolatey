## Audacity (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Audacity</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Audacity is a free and open-source digital audio editor and recording application software, available for Windows, macOS, Linux, and other Unix-like operating systems.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
The Audacity Team</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.audacityteam.org/</textarea>

### Icon: 

![Audacity icon](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/120px-Audacity_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/480px-Audacity_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/480px-Audacity_Logo.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "audacity"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "audacity" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%ProgramW6432%\Audacity\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
Audacity.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-audacity.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-audacity-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
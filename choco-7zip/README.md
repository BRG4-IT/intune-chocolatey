## 7-Zip (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app" rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name" rows="1" cols="100">
7-Zip</textarea>

### Description (Beschreibung):

<textarea name="description" rows="5" cols="100">
7-Zip is a free and open-source file archiver, a utility used to place groups of files within compressed containers known as "archives".</textarea>

### Publisher (Herausgeber)

<textarea name="publisher" rows="1" cols="100">
Igor Pavlov</textarea>


### Informations-URL:

<textarea name="info" rows="1" cols="100">
https://www.7-zip.org/</textarea>

### Icon: 

![7-Zip icon](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/7ziplogo.svg/120px-7ziplogo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/7ziplogo.svg/480px-7ziplogo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/7ziplogo.svg/480px-7ziplogo.svg.png)


### Install:
<textarea name="install" rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "7zip"</textarea>


### Uninstall:
<textarea name="uninstall" rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "7zip" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath" rows="1" cols="100">
%PROGRAMFILES%\7-zip\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename" rows="1" cols="100">
7z.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript" rows="1" cols="100">
detect-7zip.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2" rows="1" cols="100">
detect-7zip-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
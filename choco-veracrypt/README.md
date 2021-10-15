## VeraCrypt (intune/chocolatey)

Info: Scripted silent install fails if fast boot is enabled.

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app" rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name" rows="1" cols="100">
VeraCrypt</textarea>

### Description (Beschreibung):

<textarea name="description" rows="5" cols="100">
VeraCrypt is an open-source utility for on-the-fly encryption (OTFE).[5] The software can create a virtual encrypted disk that works just like a regular disk but within a file. It can also encrypt a partition or (in Windows) the entire storage device with pre-boot authentication.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher" rows="1" cols="100">
IDRIX</textarea>


### Informations-URL:

<textarea name="info" rows="1" cols="100">
http://www.veracrypt.fr/en/Home.html</textarea>

### Icon: 

![VeraCrypt icon](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/VeraCrypt_Logo.svg/120px-VeraCrypt_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/VeraCrypt_Logo.svg/480px-VeraCrypt_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/VeraCrypt_Logo.svg/480px-VeraCrypt_Logo.svg.png)


### Install:
<textarea name="install" rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "veracrypt"</textarea>


### Uninstall:
<textarea name="uninstall" rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "veracrypt" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath" rows="1" cols="100">
%PROGRAMFILES%\VeraCrypt\</textarea>

File or Folder/Datei oder Ordner: 

<textarea name="filename" rows="1" cols="100">
VeraCrypt.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript" rows="1" cols="100">
detect-veracrypt.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2" rows="1" cols="100">
detect-veracrypt-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
## Chocolatey (intune)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Chocolatey</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Chocolatey is a machine-level, command-line package manager and installer for Windows software. It uses the NuGet packaging infrastructure and Windows PowerShell to simplify the process of downloading and installing software.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Chocolatey Software, Inc.</textarea>


### Informations-URL:

<textarea name="info"  rows="1" cols="100">
https://chocolatey.org/</textarea>

### Icon: 

![Chocolatey icon](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Chocolatey_icon.png/120px-Chocolatey_icon.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Chocolatey_icon.png/480px-Chocolatey_icon.png](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Chocolatey_icon.png/480px-Chocolatey_icon.png)


### Install:
<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install.ps1</textarea>


### Uninstall:
<textarea name="uninstall"  rows="1" cols="100">powershell.exe -executionpolicy bypass .\choco-install.ps1 -uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%ALLUSERSPROFILE%\chocolatey\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
choco.exe</textarea>

Detection method: File or folder exists



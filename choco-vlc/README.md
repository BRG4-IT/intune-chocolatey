## VLC Media Player (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
VLC Media Player</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVD, Audio CD, VCD, and various streaming protocols.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
VideoLAN</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.videolan.org/</textarea>

### Icon:

![VLC icon](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/120px-VLC_Icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/424px-VLC_Icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/424px-VLC_Icon.svg.png)






### Install:
<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vlc"</textarea>


### Uninstall:
<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vlc" -Uninstall</textarea>



### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES%\VideoLAN\VLC\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">vlc.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warining: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-vlc.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-vlc-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey






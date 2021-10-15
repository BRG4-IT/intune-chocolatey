## GIMP (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
GIMP</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
GIMP is a free and open-source raster graphics editor used for image manipulation (retouching) and image editing, free-form drawing, transcoding between different image file formats, and more specialized tasks. 
</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
GIMP Development Team</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.gimp.org/</textarea>

### Icon: 

![gimp icon](https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/The_GIMP_icon_-_gnome.svg/120px-The_GIMP_icon_-_gnome.svg.png)


[https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/The_GIMP_icon_-_gnome.svg/480px-The_GIMP_icon_-_gnome.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/The_GIMP_icon_-_gnome.svg/480px-The_GIMP_icon_-_gnome.svg.png)

### Install:
<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "gimp"</textarea>


### Uninstall:
<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "gimp" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%ProgramW6432%\GIMP 2\uninst\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">unins000.exe</textarea>

Detection method: File or folder exists

(looking for a better detection rule independet of Version, since GIMP 2 will change in the future)

OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-gimp.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-gimp-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
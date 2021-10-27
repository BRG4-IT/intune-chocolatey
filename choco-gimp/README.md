## GIMP (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
GIMP
```

### Description (Beschreibung):

```
GIMP is a free and open-source raster graphics editor used for image manipulation (retouching) and image editing, free-form drawing, transcoding between different image file formats, and more specialized tasks.

```

### Publisher (Herausgeber)

```
GIMP Development Team
```


### Informations-URL:

```
https://www.gimp.org/
```

### Icon:

![GIMP icon](https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/The_GIMP_icon_-_gnome.svg/120px-The_GIMP_icon_-_gnome.svg.png)


[https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/The_GIMP_icon_-_gnome.svg/480px-The_GIMP_icon_-_gnome.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/The_GIMP_icon_-_gnome.svg/480px-The_GIMP_icon_-_gnome.svg.png)

### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "gimp"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "gimp" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ProgramW6432%\GIMP 2\uninst\
```


File or Folder/Datei oder Ordner:

```
unins000.exe
```

Detection method: File or folder exists

(looking for a better detection rule independet of Version, since GIMP 2 will change in the future)

OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-gimp.ps1](./detect-gimp.ps1)

for install or upgrade outdated use:

[detect-gimp-outdated.ps1](./detect-gimp-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

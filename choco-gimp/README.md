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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "gimp" -DesktopIcon "GIMP"
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-gimp-yyyy-MM-dd-HHmmss.log`.


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "gimp" -DesktopIcon "GIMP" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-gimp.ps1](./detect-gimp.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

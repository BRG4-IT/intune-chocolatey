## Blender (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
Blender
```

### Description (Beschreibung):

```
Blender is a free and open-source 3D computer graphics software toolset used for creating animated films, visual effects, art, 3D printed models, motion graphics, interactive 3D applications, virtual reality, and computer games. Blender's features include 3D modeling, UV unwrapping, texturing, raster graphics editing, rigging and skinning, fluid and smoke simulation, particle simulation, soft body simulation, sculpting, animating, match moving, rendering, motion graphics, video editing, and compositing. 
```

### Publisher (Herausgeber)

```
Blender Foundation
```


### Informations-URL:

```
https://www.blender.org/
```

### Icon:

![Blender icon](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Blender_logo_no_text.svg/148px-Blender_logo_no_text.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Blender_logo_no_text.svg/587px-Blender_logo_no_text.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Blender_logo_no_text.svg/587px-Blender_logo_no_text.svg.png)


### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "blender"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "blender" -Uninstall
```


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\blender\
```


File or Folder/Datei oder Ordner:

```
blender.nupkg
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-blender.ps1](./detect-blender.ps1)

for install or upgrade outdated use:

[detect-blender-outdated.ps1](./detect-blender-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

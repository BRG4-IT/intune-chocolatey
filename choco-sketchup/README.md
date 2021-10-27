## SketchUp (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin)


### Name:

```
SketchUp
```

### Description (Beschreibung):

```
SketchUp is a 3D modeling computer program for a wide range of drawing applications.
```

### Publisher (Herausgeber)

```
Trimble Inc.
```


### Informations-URL:

```
https://www.sketchup.com/
```

### Icon:

![SketchUp icon](https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Sketchup_logo.png/480px-Sketchup_logo.png)

[https://upload.wikimedia.org/wikipedia/commons/4/43/Sketchup_logo2.png](https://upload.wikimedia.org/wikipedia/commons/4/43/Sketchup_logo2.png)


### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "sketchup"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "sketchup" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\SketchUp\SketchUp 2017\
```


File or Folder/Datei oder Ordner:

```
SketchUp.exe
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-sketchup.ps1](./detect-sketchup.ps1)

for install or upgrade outdated use:

[detect-sketchup-outdated.ps1](./detect-sketchup-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

## SketchUp (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "sketchup"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "sketchup" -Uninstall
```



### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-sketchup.ps1](./detect-sketchup.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

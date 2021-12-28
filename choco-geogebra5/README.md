## GeoGebra 5 (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
GeoGebra 5
```

### Description (Beschreibung):

```
GeoGebra is an interactive geometry, algebra, statistics and calculus application, intended for learning and teaching mathematics and science from primary school to university level.
```

### Publisher (Herausgeber)

```
Markus Hohenwarter
```


### Informations-URL:

```
https://geogebra.org/
```

### Icon:

![GeoGebra icon](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/120px-Geogebra.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/480px-Geogebra.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/480px-Geogebra.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "geogebra" -DesktopIcon "GeoGebra"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "geogebra" -DesktopIcon "GeoGebra" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-geogebra.ps1](./detect-geogebra.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

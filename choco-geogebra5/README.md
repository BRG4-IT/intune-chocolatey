## GeoGebra 5 (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

```
choco-install-package.intunewin
```


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

![chromium icon](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/120px-Geogebra.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/480px-Geogebra.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Geogebra.svg/480px-Geogebra.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "geogebra"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "geogebra" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES(X86)%\GeoGebra 5.0\
```


File or Folder/Datei oder Ordner: 

```
GeoGebra.exe
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-geogebra.ps1](./detect-geogebra.ps1)

for install or upgrade outdated use:

[detect-geogebra-outdated.ps1](./detect-geogebra-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey
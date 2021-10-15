## Inkscape (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

```
choco-install-package.intunewin
```


### Name:

```
Inkscape
```

### Description (Beschreibung):

```
Inkscape is a free and open-source vector graphics editor used to create vector images, primarily in Scalable Vector Graphics (SVG) format. Other formats can be imported and exported.
```

### Publisher (Herausgeber)

```
Inkscape Community
```


### Informations-URL:

```
https://inkscape.org/
```

### Icon: 

![inkscape cion](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/120px-Inkscape_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/480px-Inkscape_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/480px-Inkscape_Logo.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "inkscape"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "inkscape" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\Inkscape\bin\
```


File or Folder/Datei oder Ordner: 

```
inkscape.exe
```

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-inkscape.ps1](./detect-inkscape.ps1)

for install or upgrade outdated use:

[detect-inkscape-outdated.ps1](./detect-inkscape-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey
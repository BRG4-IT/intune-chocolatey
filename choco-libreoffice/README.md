## LibreOffice (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin)


### Name:

```
LibreOffice
```

### Description (Beschreibung):

```
LibreOffice is a free and open-source office productivity software suite. The LibreOffice suite consists of programs for word processing, creating and editing of spreadsheets, slideshows, diagrams and drawings, working with databases, and composing mathematical formulae.
```

### Publisher (Herausgeber)

```
The Document Foundation
```


### Informations-URL:

```
https://de.libreoffice.org/
```

### Icon:

![LibreOffice icon](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/LibreOffice_icon_3.3.1_48_px.svg/100px-LibreOffice_icon_3.3.1_48_px.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/LibreOffice_icon_3.3.1_48_px.svg/400px-LibreOffice_icon_3.3.1_48_px.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/LibreOffice_icon_3.3.1_48_px.svg/400px-LibreOffice_icon_3.3.1_48_px.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "libreoffice-fresh"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "libreoffice-fresh" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\LibreOffice\program\
```


File or Folder/Datei oder Ordner:

```
swriter.exe
```

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-libreoffice.ps1](./detect-libreoffice.ps1)

for install or upgrade outdated use:

[detect-libreoffice-outdated.ps1](./detect-libreoffice-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

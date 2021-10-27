## ImageGlass (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin)


### Name:

```
ImageGlass
```

### Description (Beschreibung):

```
A free and open source image viewer supporting over 70+ image file formats. This application will allow you to better manage your pictures thanks to the options it includes and the extension it enables to install for adding more functions and widening its possibilities.
```

### Publisher (Herausgeber)

```
Dương Diệu Pháp
```


### Informations-URL:

```
https://imageglass.org/
```

### Icon:

![ImageGlass icon](https://raw.githubusercontent.com/d2phap/ImageGlass/prod/Assets/Logo/New/iglogo_128.png)

[https://raw.githubusercontent.com/d2phap/ImageGlass/prod/Assets/Logo/New/iglogo512.png](https://raw.githubusercontent.com/d2phap/ImageGlass/prod/Assets/Logo/New/iglogo512.png)


### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "imageglass"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "imageglass" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\ImageGlass\
```


File or Folder/Datei oder Ordner:

```
ImageGlass.exe
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-imageglass.ps1](./detect-imageglass.ps1)

for install or upgrade outdated use:

[detect-imageglass-outdated.ps1](./detect-imageglass-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

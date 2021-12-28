## ImageGlass (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "imageglass"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "imageglass" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-imageglass.ps1](./detect-imageglass.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

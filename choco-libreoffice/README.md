## LibreOffice (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "libreoffice-fresh" -DesktopIcon "LibreOffice" -RemoveDesktopIcon
```
__Note: We remove the general LibreOffice X.X icon from the desktop, but add desktop icons for _Writer, Calc_ and _Impress._ See [https://github.com/BRG4-IT/StartMenu-to-Desktop](https://github.com/BRG4-IT/StartMenu-to-Desktop) for more information. If you want to keep the _LibreOffice_ icon, just remove the `-RemoveDesktopIcon` option from the command line above.__

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-inkscape-yyyy-MM-dd-HHmmss.log`.


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "libreoffice-fresh" -DesktopIcon "LibreOffice" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-libreoffice.ps1](./detect-libreoffice.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

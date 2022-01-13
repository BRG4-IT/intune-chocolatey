## Inkscape (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


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

![Inkscape cion](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/120px-Inkscape_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/480px-Inkscape_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Inkscape_Logo.svg/480px-Inkscape_Logo.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "inkscape" -DesktopIcon "InkScape"
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-inkscape-yyyy-MM-dd-HHmmss.log`.


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "inkscape" -DesktopIcon "InkScape" -Uninstall
```

### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-inkscape.ps1](./detect-inkscape.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey


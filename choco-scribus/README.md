## Scribus (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
Scribus
```

### Description (Beschreibung):

```
Scribus is free and open-source desktop publishing (DTP) software available for most desktop operating systems. It is designed for layout, typesetting, and preparation of files for professional-quality image-setting equipment. Scribus can also create animated and interactive PDF presentations and forms. Example uses include writing newspapers, brochures, newsletters, posters, and books.
```

### Publisher (Herausgeber)

```
Scribus Development Team
```


### Informations-URL:

```
https://www.scribus.net/
```

### Icon:

![Scribus icon](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Scribus_logo.svg/120px-Scribus_logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Scribus_logo.svg/480px-Scribus_logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Scribus_logo.svg/480px-Scribus_logo.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "scribus" -DesktopIcon "Scribus" -DesktopIconUnique
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-scribus-yyyy-MM-dd-HHmmss.log`.



### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "scribus" -DesktopIcon "Scribus" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-scribus.ps1](./detect-scribus.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey



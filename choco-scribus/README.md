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
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "scribus"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "scribus" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: Registry Key/Registrirungschlüssel

Key Path/Schlüsselpfad:

```
HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sla
```


Detection method: key exists/Schlüssel vorhanden


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-scribus.ps1](./detect-scribus.ps1
)


for install or upgrade outdated use:

[detect-scribus-outdated.ps1](./detect-scribus-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

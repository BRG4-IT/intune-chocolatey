## Firefox (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
Firefox
```

### Description (Beschreibung):

```
Firefox is a free and open-source web browser developed by the Mozilla Foundation and its subsidiary, the Mozilla Corporation. Firefox uses the Gecko rendering engine to display web pages, which implements current and anticipated web standards.
```

### Publisher (Herausgeber)

```
Mozilla Corporation
```


### Informations-URL:

```
https://www.mozilla.org/de/firefox/
```

### Icon:

![Firefox icon](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Firefox_logo%2C_2019.svg/120px-Firefox_logo%2C_2019.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Firefox_logo%2C_2019.svg/462px-Firefox_logo%2C_2019.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Firefox_logo%2C_2019.svg/462px-Firefox_logo%2C_2019.svg.png)

### Install:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "firefox" -Uninstall
```

### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-firefox.ps1](./detect-firefox.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

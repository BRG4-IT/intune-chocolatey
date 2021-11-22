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
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "firefox" -Uninstall
```


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\firefox\
```

File or Folder/Datei oder Ordner:

```
firefox.nupkg
```

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-firefox.ps1](./detect-firefox.ps1)

for install or upgrade outdated use:

[detect-firefox-outdated.ps1](./detect-firefox-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

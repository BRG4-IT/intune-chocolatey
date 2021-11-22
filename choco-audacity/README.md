## Audacity (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
Audacity
```

### Description (Beschreibung):

```
Audacity is a free and open-source digital audio editor and recording application software, available for Windows, macOS, Linux, and other Unix-like operating systems.
```

### Publisher (Herausgeber)

```
The Audacity Team
```


### Informations-URL:

```
https://www.audacityteam.org/
```

### Icon:

![Audacity icon](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/120px-Audacity_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/480px-Audacity_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/480px-Audacity_Logo.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "audacity"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "audacity" -Uninstall
```


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\audacity\
```


File or Folder/Datei oder Ordner:

```
audacity.nupkg
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-audacity.ps1](./detect-audacity.ps1)

for install or upgrade outdated use:

[detect-audacity-outdated.ps1](./detect-audacity-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

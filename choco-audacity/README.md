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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "audacity"
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-audacity-yyyy-MM-dd-HHmmss.log`.


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "audacity" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-audacity.ps1](./detect-audacity.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey


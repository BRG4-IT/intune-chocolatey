## Chocolatey (intune)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install/choco-install.intunewin](../choco-install/choco-install.intunewin?raw=true)


### Name:

```
Chocolatey
```

### Description (Beschreibung):

```
Chocolatey is a machine-level, command-line package manager and installer for Windows software. It uses the NuGet packaging infrastructure and Windows PowerShell to simplify the process of downloading and installing software.
```

### Publisher (Herausgeber)

```
Chocolatey Software, Inc.
```


### Informations-URL:

```
https://chocolatey.org/
```

### Icon:

![Chocolatey icon](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Chocolatey_icon.png/120px-Chocolatey_icon.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Chocolatey_icon.png/480px-Chocolatey_icon.png](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Chocolatey_icon.png/480px-Chocolatey_icon.png)


### Install:
```
powershell.exe -executionpolicy bypass -file ".\choco-install.ps1"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install.ps1" -uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-choco.ps1](../choco-install/detect-choco.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__
## Chocolatey (intune)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[..\choco-install\choco-install.intunewin](..\choco-install\choco-install.intunewin)


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
powershell.exe -executionpolicy bypass .\choco-install.ps1
```


### Uninstall:
```powershell.exe -executionpolicy bypass .\choco-install.ps1 -uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ALLUSERSPROFILE%\chocolatey\
```


File or Folder/Datei oder Ordner:

```
choco.exe
```

Detection method: File or folder exists

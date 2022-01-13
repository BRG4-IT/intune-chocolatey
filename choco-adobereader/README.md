## Adobe Acrobat Reader DC (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
Adobe Acrobat Reader DC
```

### Description (Beschreibung):

```
Adobe Acrobat is a family of application software and Web services developed by Adobe Inc. to view, create, manipulate, print and manage Portable Document Format (PDF) files.
```

### Publisher (Herausgeber)

```
Adobe Inc.
```


### Informations-URL:

```
https://acrobat.adobe.com/
```

### Icon:

![Adobe Acrobat Reader icon](https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Adobe_Acrobat_DC_logo_2020.svg/120px-Adobe_Acrobat_DC_logo_2020.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Adobe_Acrobat_DC_logo_2020.svg/480px-Adobe_Acrobat_DC_logo_2020.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Adobe_Acrobat_DC_logo_2020.svg/480px-Adobe_Acrobat_DC_logo_2020.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "adobereader"
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-adobereader-yyyy-MM-dd-HHmmss.log`.


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "adobereader" -Uninstall
```

### Installationsverhalten:

__System__


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-adobereader.ps1](./detect-adobereader.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

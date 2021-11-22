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
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "adobereader"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "adobereader" -Uninstall
```

### Installationsverhalten:

__System__


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\adobereader\
```


File or Folder/Datei oder Ordner:

```
adobereader.nupkg
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-adobereader.ps1](./detect-adobereader.ps1)

for install or upgrade outdated use:

[detect-adobereader-outdated.ps1](./detect-adobereader-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

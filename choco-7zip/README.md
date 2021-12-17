## 7-Zip (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
7-Zip
```

### Description (Beschreibung):

```
7-Zip is a free and open-source file archiver, a utility used to place groups of files within compressed containers known as "archives".
```

### Publisher (Herausgeber)

```
Igor Pavlov
```


### Informations-URL:

```
https://www.7-zip.org/
```

### Icon:

![7-Zip icon](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/7ziplogo.svg/120px-7ziplogo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/7ziplogo.svg/480px-7ziplogo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/7ziplogo.svg/480px-7ziplogo.svg.png)


### Install:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "7zip"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "7zip" -Uninstall
```


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\7zip\
```


File or Folder/Datei oder Ordner:

```
7zip.nupkg
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-7zip.ps1](./detect-7zip.ps1)

for install or upgrade outdated use:

[detect-7zip-outdated.ps1](./detect-7zip-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

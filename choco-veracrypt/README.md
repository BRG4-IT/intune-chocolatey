## VeraCrypt (intune/chocolatey)

Info: Scripted silent install fails if fast boot is enabled.

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin)


### Name:

```
VeraCrypt
```

### Description (Beschreibung):

```
VeraCrypt is an open-source utility for on-the-fly encryption (OTFE).[5] The software can create a virtual encrypted disk that works just like a regular disk but within a file. It can also encrypt a partition or (in Windows) the entire storage device with pre-boot authentication.
```

### Publisher (Herausgeber)

```
IDRIX
```


### Informations-URL:

```
http://www.veracrypt.fr/en/Home.html
```

### Icon:

![VeraCrypt icon](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/VeraCrypt_Logo.svg/120px-VeraCrypt_Logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/VeraCrypt_Logo.svg/480px-VeraCrypt_Logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/VeraCrypt_Logo.svg/480px-VeraCrypt_Logo.svg.png)


### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "veracrypt"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "veracrypt" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\VeraCrypt\
```

File or Folder/Datei oder Ordner:

```
VeraCrypt.exe
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-veracrypt.ps1](./detect-veracrypt.ps1)

for install or upgrade outdated use:

[detect-veracrypt-outdated.ps1](./detect-veracrypt-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

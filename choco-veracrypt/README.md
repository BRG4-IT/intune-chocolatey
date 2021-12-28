## VeraCrypt (intune/chocolatey)

Info: Scripted silent install fails if fast boot is enabled.

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "veracrypt"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "veracrypt" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-veracrypt.ps1](./detect-veracrypt.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

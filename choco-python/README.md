## Python (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

```
choco-install-package.intunewin
```


### Name:

```
Python
```

### Description (Beschreibung):

```
Python is a programming language that lets you work more quickly and integrate your systems more effectively.

```

### Publisher (Herausgeber)

```
Python Software Foundation
```


### Informations-URL:

```
https://www.python.org/
```

### Icon: 

![Python icon](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/120px-Python-logo-notext.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/480px-Python-logo-notext.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/480px-Python-logo-notext.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "python"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "python" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%SystemRoot%\
```


File or Folder/Datei oder Ordner: 

```py.exe
```

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-python.ps1](./detect-python.ps1)

for install or upgrade outdated use:

[detect-python-outdated.ps1](./detect-python-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey
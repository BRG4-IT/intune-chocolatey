## Python (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Python</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Python is a programming language that lets you work more quickly and integrate your systems more effectively.
</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Python Software Foundation</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.python.org/</textarea>

### Icon: 

![Python icon](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/120px-Python-logo-notext.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/480px-Python-logo-notext.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/480px-Python-logo-notext.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "python"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "python" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%SystemRoot%\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">py.exe</textarea>

Detection method: File or folder exists


OR/ODER (unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-python.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-python-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
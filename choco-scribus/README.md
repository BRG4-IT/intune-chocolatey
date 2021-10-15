## Scribus (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Scribus</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Scribus is free and open-source desktop publishing (DTP) software available for most desktop operating systems. It is designed for layout, typesetting, and preparation of files for professional-quality image-setting equipment. Scribus can also create animated and interactive PDF presentations and forms. Example uses include writing newspapers, brochures, newsletters, posters, and books.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Scribus Development Team</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.scribus.net/</textarea>

### Icon: 

![Audacity icon](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Scribus_logo.svg/120px-Scribus_logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Scribus_logo.svg/480px-Scribus_logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Scribus_logo.svg/480px-Scribus_logo.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "scribus"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "scribus" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: Registry Key/Registrirungschlüssel

Key Path/Schlüsselpfad:

<textarea name="filepath"  rows="1" cols="100">
HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sla</textarea>


Detection method: key exists/Schlüssel vorhanden


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-scribus.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-scribus-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
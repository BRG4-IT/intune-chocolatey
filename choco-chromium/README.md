## Chromium (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Chromium Webbrowser</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Chromium is a free and open-source codebase for a web browser, principally developed and maintained by Google. Google uses the code to make its Chrome web browser, which has additional features.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Google</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.chromium.org/</textarea>

### Icon: 

![chromium icon](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Chromium_Material_Icon.svg/120px-Chromium_Material_Icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Chromium_Material_Icon.svg/480px-Chromium_Material_Icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Chromium_Material_Icon.svg/480px-Chromium_Material_Icon.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "chromium"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "chromium" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%ProgramW6432%\Chromium\Application\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">chrome.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-chromium.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-chromium-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
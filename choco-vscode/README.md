## Visual Studio Code (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Visual Studio Code</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Visual Studio Code is an integrated development environment made by Microsoft for Windows, Linux and macOS.Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git. Users can change the theme, keyboard shortcuts, preferences, and install extensions that add additional functionality. 
</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Microsoft</textarea>


### Informations-URL:

<textarea name="info"  rows="1" cols="100">
https://code.visualstudio.com/</textarea>

### Icon: 

![Chocolatey icon](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/120px-Visual_Studio_Code_1.35_icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/480px-Visual_Studio_Code_1.35_icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/480px-Visual_Studio_Code_1.35_icon.svg.png)


### Install:
<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vscode"</textarea>


### Uninstall:
<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vscode" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%PROGRAMFILES%\Microsoft VS Code\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
Code.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-vscode.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-vscode-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
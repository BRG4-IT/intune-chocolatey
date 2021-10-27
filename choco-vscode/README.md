## Visual Studio Code (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[..\choco-install-package\choco-install-package.intunewin](..\choco-install-package\choco-install-package.intunewin)


### Name:

```
Visual Studio Code
```

### Description (Beschreibung):

```
Visual Studio Code is an integrated development environment made by Microsoft for Windows, Linux and macOS.Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git. Users can change the theme, keyboard shortcuts, preferences, and install extensions that add additional functionality.

```

### Publisher (Herausgeber)

```
Microsoft
```


### Informations-URL:

```
https://code.visualstudio.com/
```

### Icon:

![Visual Studio Code icon](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/120px-Visual_Studio_Code_1.35_icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/480px-Visual_Studio_Code_1.35_icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/480px-Visual_Studio_Code_1.35_icon.svg.png)


### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vscode"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vscode" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\Microsoft VS Code\
```


File or Folder/Datei oder Ordner:

```
Code.exe
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-vscode.ps1](./detect-vscode.ps1)

for install or upgrade outdated use:

[detect-vscode-outdated.ps1](./detect-vscode-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

## Sumatra PDF (intune/chocolatey)

### App-Typ: 

__Windows-App (Win32)__

App-Paketdatei auswählen:

<textarea name="app"  rows="1" cols="100">
choco-install-package.intunewin</textarea>


### Name:

<textarea name="name"  rows="1" cols="100">
Sumatra PDF</textarea>

### Description (Beschreibung):

<textarea name="description"  rows="5" cols="100">
Sumatra PDF is a free and open-source document viewer that supports many document formats including: Portable Document Format (PDF), Microsoft Compiled HTML Help (CHM), DjVu, EPUB, FictionBook (FB2), MOBI, PRC, Open XML Paper Specification (OpenXPS, OXPS, XPS), and Comic Book Archive file (CB7, CBR, CBT, CBZ). If Ghostscript is installed, it supports PostScript files.</textarea>

### Publisher (Herausgeber)

<textarea name="publisher"  rows="1" cols="100">
Krzysztof Kowalczyk</textarea>


### Informations-URL:

<textarea name="ifno"  rows="1" cols="100">
https://www.sumatrapdfreader.org/</textarea>

### Icon: 

![Sumatra PDF](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Sumatra_PDF_logo.svg/120px-Sumatra_PDF_logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Sumatra_PDF_logo.svg/480px-Sumatra_PDF_logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Sumatra_PDF_logo.svg/480px-Sumatra_PDF_logo.svg.png)

### Install:

<textarea name="install"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "sumatrapdf.install"</textarea>


### Uninstall:

<textarea name="uninstall"  rows="1" cols="100">
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "sumatrapdf.install" -Uninstall</textarea>


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

<textarea name="filepath"  rows="1" cols="100">
%LOCALAPPDATA%\SumatraPDF\</textarea>


File or Folder/Datei oder Ordner: 

<textarea name="filename"  rows="1" cols="100">
SumatraPDF.exe</textarea>

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

<textarea name="detectionscript"  rows="1" cols="100">
detect-sumatrapdf.ps1</textarea>

for install or upgrade outdated use:

<textarea name="detectionscript2"  rows="1" cols="100">
detect-sumatrapdf-outdated.ps1</textarea>

### Dependencies (Abhängigkeiten):

chocolatey
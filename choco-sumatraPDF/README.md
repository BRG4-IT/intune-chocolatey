## Sumatra PDF (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
Sumatra PDF
```

### Description (Beschreibung):

```
Sumatra PDF is a free and open-source document viewer that supports many document formats including: Portable Document Format (PDF), Microsoft Compiled HTML Help (CHM), DjVu, EPUB, FictionBook (FB2), MOBI, PRC, Open XML Paper Specification (OpenXPS, OXPS, XPS), and Comic Book Archive file (CB7, CBR, CBT, CBZ). If Ghostscript is installed, it supports PostScript files.
```

### Publisher (Herausgeber)

```
Krzysztof Kowalczyk
```


### Informations-URL:

```
https://www.sumatrapdfreader.org/
```

### Icon:

![Sumatra PDF](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Sumatra_PDF_logo.svg/120px-Sumatra_PDF_logo.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Sumatra_PDF_logo.svg/480px-Sumatra_PDF_logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Sumatra_PDF_logo.svg/480px-Sumatra_PDF_logo.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "sumatrapdf.install" -parameter "'/Path:C:\program files\Sumatrapdf'"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "sumatrapdf.install" -Uninstall
```


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\sumatrapdf.install\
```


File or Folder/Datei oder Ordner:

```
sumatrapdf.install.nupkg
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-sumatrapdf.ps1](./detect-sumatrapdf.ps1)

for install or upgrade outdated use:

[detect-sumatrapdf-outdated.ps1](./detect-sumatrapdf-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

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

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-sumatrapdf.install-yyyy-MM-dd-HHmmss.log`.


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "sumatrapdf.install" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-sumatrapdf.ps1](./detect-sumatrapdf.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

## Chromium (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin)


### Name:

```
Chromium
```

### Description (Beschreibung):

```
Chromium is a free and open-source codebase for a web browser, principally developed and maintained by Google. Google uses the code to make its Chrome web browser, which has additional features.
```

### Publisher (Herausgeber)

```
Google
```


### Informations-URL:

```
https://www.chromium.org/
```

### Icon:

![Chromium icon](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Chromium_Material_Icon.svg/120px-Chromium_Material_Icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Chromium_Material_Icon.svg/480px-Chromium_Material_Icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Chromium_Material_Icon.svg/480px-Chromium_Material_Icon.svg.png)

### Install:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "chromium"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "chromium" -Uninstall
```


### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ProgramW6432%\Chromium\Application\
```


File or Folder/Datei oder Ordner:

```
chrome.exe
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-chromium.ps1](./detect-chromium.ps1)

for install or upgrade outdated use:

[detect-chromium-outdated.ps1](./detect-chromium-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

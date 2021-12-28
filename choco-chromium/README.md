## Chromium (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "chromium"
```


### Uninstall:

```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "chromium" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-chromium.ps1](./detect-chromium.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

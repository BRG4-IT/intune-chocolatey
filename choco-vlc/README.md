## VLC Media Player (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
VLC Media Player
```

### Description (Beschreibung):

```
VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVD, Audio CD, VCD, and various streaming protocols.
```

### Publisher (Herausgeber)

```
VideoLAN
```


### Informations-URL:

```
https://www.videolan.org/
```

### Icon:

![VLC icon](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/120px-VLC_Icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/424px-VLC_Icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/424px-VLC_Icon.svg.png)






### Install:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "vlc"
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-vlc-yyyy-MM-dd-HHmmss.log`.



### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "vlc" -Uninstall
```



### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-vlc.ps1](./detect-vlc.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

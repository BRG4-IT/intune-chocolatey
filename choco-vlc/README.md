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
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vlc"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "vlc" -Uninstall
```



### Detection ruls (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%PROGRAMFILES%\VideoLAN\VLC\
```


File or Folder/Datei oder Ordner:

```
vlc.exe
```

Detection method: File or folder exists


OR/ODER (Warining: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-vlc.ps1](./detect-vlc.ps1)

for install or upgrade outdated use:

[detect-vlc-outdated.ps1](./detect-vlc-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

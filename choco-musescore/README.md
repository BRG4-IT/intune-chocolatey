## MuseScore (intune/chocolatey)

### App-Typ:

__Windows-App (Win32)__

App-Paketdatei auswählen:

[../choco-install-package/choco-install-package.intunewin](../choco-install-package/choco-install-package.intunewin?raw=true)


### Name:

```
MuseScore
```

### Description (Beschreibung):

```
MuseScore is an open-source "What-You-See-Is-What-You-Get" scorewriter for Windows, macOS, and Linux supporting a wide variety of file formats and input methods. It supports unlimited staves, linked parts and part extraction, tablature, MIDI input and output, percussion notation, cross-staff beaming, automatic transposition, lyrics (multiple verses), fretboard diagrams, and in general everything commonly used in sheet music. Style options to change the appearance and layout are available, and style sheets can be saved and applied to other scores. There are pre-defined templates for many types of ensembles. Functionality can be extended by making use of the many freely available plugins. MuseScore can also play back scores through the built-in sequencer and SoundFont sample library. Multiple SoundFonts can be loaded into MuseScore's synthesizer. It includes a mixer to mute, solo, or adjust the volume of individual parts, and chorus, reverb and other effects are supported during playback. MIDI output to external devices and software synthesizers is also possible.
```

### Publisher (Herausgeber)

```
MuseScore BVBA
```


### Informations-URL:

```
https://musescore.org/
```

### Icon:

![MuseScore icon](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Musescore_icon.svg/120px-Musescore_icon.svg.png)

[https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Musescore_icon.svg/480px-Musescore_icon.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Musescore_icon.svg/480px-Musescore_icon.svg.png)


### Install:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "musescore"
```


### Uninstall:
```
powershell.exe -executionpolicy bypass .\choco-install-package.ps1 -Name "musescore" -Uninstall
```


### Detection rules (Erkennungsregeln):

Regelformat (Rule type): __Erkennungsregeln manuell konfigurieren__

Rule type/Regel Typ: File/Datei

Path/Pfad:

```
%ChocolateyInstall%\lib\musescore\
```


File or Folder/Datei oder Ordner:

```
musescore.nupkg
```

Detection method: File or folder exists


OR/ODER (Warning: unsigned scripts prompt user!)

Regelformat (Rule type): __Benutzerdefiniertes Skript für die Erkennung verwenden__

Script:

for install only use:

[detect-musescore.ps1](./detect-musescore.ps1)

for install or upgrade outdated use:

[detect-musescore-outdated.ps1](./detect-musescore-outdated.ps1)

### Dependencies (Abhängigkeiten):

chocolatey

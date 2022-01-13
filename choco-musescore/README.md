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
MuseScore is a free and open-source "What-You-See-Is-What-You-Get" scorewriter for Windows, macOS, and Linux supporting a wide variety of file formats and input methods. It supports unlimited staves, linked parts and part extraction, tablature, MIDI input and output, percussion notation, cross-staff beaming, automatic transposition, lyrics (multiple verses), fretboard diagrams, and in general everything commonly used in sheet music. Style options to change the appearance and layout are available, and style sheets can be saved and applied to other scores. There are pre-defined templates for many types of ensembles. Functionality can be extended by making use of the many freely available plugins. MuseScore can also play back scores through the built-in sequencer and SoundFont sample library. Multiple SoundFonts can be loaded into MuseScore's synthesizer. It includes a mixer to mute, solo, or adjust the volume of individual parts, and chorus, reverb and other effects are supported during playback. MIDI output to external devices and software synthesizers is also possible.
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
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "musescore" -DesktopIcon "MuseScore" -DesktopIconUnique
```

Note: You may also want to use the `-Log` switch. If provided the install process is logged to a file `%ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs\choco-install-package-musescore-yyyy-MM-dd-HHmmss.log`.


### Uninstall:
```
powershell.exe -executionpolicy bypass -file ".\choco-install-package.ps1" -Name "musescore" -DesktopIcon "MuseScore" -Uninstall
```


### Detection rules (Erkennungsregeln):

Rule format (Regelformat): __Use a custom detection script (Benutzerdefiniertes Skript für die Erkennung verwenden)__

Script file (Skriptdatei): [detect-musescore.ps1](./detect-musescore.ps1?raw=true)

Run script as 32-bit process on 64-bit clients: __No__

Enforce script signature check: __No__

### Dependencies (Abhängigkeiten):

chocolatey

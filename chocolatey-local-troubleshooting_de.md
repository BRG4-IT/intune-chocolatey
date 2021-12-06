# Lokale Hilfe bei Intune Chocolatey Installationen

## Teste choco Befehl

Öffne ein Konsolenfenster (Tastenkombination `WIN+X` dann `Windows PowerShell` oder `Eingabeaufforderung` auswählen) und tippe den Befehl:

    choco

Erhältst du eine Ausgabe der Art

    Chocolatey v0.11.3
    Please run 'choco -?' or 'choco <command> -?' for help menu.

ist alles OK. Wenn nicht, musst der _chocolatey packet manager_ installiert werden.


## Chocolatey Paket Manager installieren

Für die Installation eine _Powershell Konsole mit Administrativen Rechten_ öffnen  (Tastenkombination `WIN+X` dann `Windows PowerShell (Admin)` auswählen). Um die Reste einer misslungene vorherige Installation zu löschen, den folgenden Befehl ausführen:

```
Remove-Item "$env:ALLUSERSPROFILE\chocolatey" -Force -Recurse -ErrorAction SilentlyContinue
```

Danach kopiere die Befehlszeile auf der Seite [https://chocolatey.org/install](https://chocolatey.org/install) in die administrative Powershell Konsole. Sind bei der Ausführung keine Fehler aufgetreten, teste erneut den `choco` Befehl. Nach einem Neustart des Computers sollten jetzt nach und nach die ausständigen Programminstallation über Intune erfolgen.


## Installation eines Chocolatey Paketes

Ist nur die Intune-Installation eines einzelnen Chocolatey Programm-Pakets gescheitert, kann dieses über eine  _Powershell Konsole mit Administrativen Rechten_ öffnen (Tastenkombination `WIN+X` dann `Windows PowerShell (Admin)` auswählen) installiert werden.

Zuerst eine eventuell vorhande Version deinstallieren (entsprechende Befehlszeile kopieren):

    choco uninstall 7zip -y
    choco uninstall adobereader -y
    choco uninstall audacity -y
    choco uninstall blender -y
    choco uninstall chromium -y
    choco uninstall firefox -y
    choco uninstall geogebra -y
    choco uninstall gimp -y
    choco uninstall imageglass -y
    choco uninstall inkscape -y
    choco uninstall libreoffice-fresh -y
    choco uninstall musescore -y
    choco uninstall python -y
    choco uninstall scribus -y
    choco uninstall sketchup -y
    choco uninstall sumatrapdf.uninstall -y
    choco uninstall veracrypt -y
    choco uninstall vlc -y
    choco uninstall vscode -y

Dann die Installation wiederholen (entsprechende Befehlszeile kopieren):

    choco install 7zip -y
    choco install adobereader -y
    choco install audacity -y
    choco install blender -y
    choco install chromium -y
    choco install firefox -y
    choco install geogebra -y
    choco install gimp -y
    choco install imageglass -y
    choco install inkscape -y
    choco install libreoffice-fresh -y
    choco install musescore -y
    choco install python -y
    choco install scribus -y
    choco install sketchup -y
    choco install sumatrapdf.install -y --params='/Path:C:\program files\Sumatrapdf'
    choco install veracrypt -y
    choco install vlc -y
    choco install vscode -y
    
## Logfiles einsehen

Für Analysezwecke kann es sinnvoll sein, vorerst die lokalen Logfiles einzusehen.

Alle Chocolatey Logfiles sind in folgendem Verzeichnis zu finden:

    %ALLUSERSPROFILE%\chocolatey\logs

Alle Intune Management Extension Log-Dateien sind in folgendem Verzeichnis zu finden:

    %ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\Logs


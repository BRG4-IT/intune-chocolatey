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


## Installation/Deinstallation eines Chocolatey Paketes

Ist nur die Intune-Installation/Deinstallation einzelner Chocolatey Programm-Pakets gescheitert, können diese über eine  _Powershell Konsole mit Administrativen Rechten_ öffnen (Tastenkombination `WIN+X` dann `Windows PowerShell (Admin)` auswählen) am lokalen Computer installiert/deinstalliert werden.

Kopiere die folgende Befehlszeile in die Console und führe die Befehle aus (Eingabetaste drücken) um die PowerShell Skripte für die Installation/Deinstallation aus dem Internet herunterzuladen:

```
$chocoIntunePath="$Env:ChocolateyInstall\intune";if (!(Test-Path $chocoIntunePath)) {New-Item -ItemType directory -Path $chocoIntunePath};cd $chocoIntunePath;wget "https://github.com/BRG4-IT/intune-chocolatey/blob/main/choco-install-package/choco-install-package.ps1?raw=true" -OutFile "choco-install-package.ps1"
```

Um einzelene Programme zu installieren oder zu deinstallieren, verwende die Befehlszeilen die unter den Überschriften Install/Uninstall auf den [README-Seiten der einzelnen Programme](https://github.com/BRG4-IT/intune-chocolatey#step-2-deploy-chocolatey-packages-with-intune) dokumentiert sind.

    
## Logfiles einsehen

Für Analysezwecke kann es sinnvoll sein, vorerst die Logfiles auf dem lokalen Computer einzusehen.

Alle Chocolatey Logfiles sind in folgendem Verzeichnis zu finden:

    %ALLUSERSPROFILE%\chocolatey\logs

Alle Intune Management Extension Log-Dateien sind in folgendem Verzeichnis zu finden:

    %ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\Logs


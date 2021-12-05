# Lokale Hilfe bei Intune Chocolatey Installationen

## Logfile einsehen

Alle Chocolatey Log-Dateien sind in folgendem Verzeichnis zu finden:

    %ALLUSERSPROFILE%\chocolatey\logs

Alle Intune Management Extension Log-Dateien sind in folgendem Verzeichnis zu finden:

    %ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\Logs


## Neuinstallation eine Paketes erzwingen

Um eine Neuinstallation eines Pakets zu erzwingen, zuerst eine _Powershell Console mit Administrativen Rechten_ öffnen  (Tastenkombination `WIN+X` dann `Windows PowerShell (Admin)` auswählen), darin dann einen der folgenden Befehle absetzen:

    choco install 7zip -y --force
    choco install adobereader -y --force
    choco install audacity -y --force
    choco install blender -y --force
    choco install chromium -y --force
    choco install firefox -y --force
    choco install geogebra -y --force
    choco install gimp -y --force
    choco install imageglass -y --force
    choco install inkscape -y --force
    choco install libreoffice-fresh -y --force
    choco install musescore -y --force
    choco install python -y --force
    choco install scribus -y --force
    choco install sketchup -y --force
    choco install sumatrapdf.install -y --force --params='/Path:C:\program files\Sumatrapdf'
    choco install veracrypt -y --force
    choco install vlc -y --force
    choco install vscode -y --force
    

## Deinstallation eine Paketes

Manchmal "glaubt" chocolatey, dass eine misslungene Installation erfolgreich war (zum Beispiel wenn die Paketdatei heruntergeladen wurde, aber während der Programminstallation der Computer heruntergefahren wird). In diesem Fall zuerst ein Packet deinstallieren, dann neu installieren.

Um ein Paket zu deinstallieren, zuerst eine _Powershell Console mit Administrativen Rechten_ öffnen  (Tastenkombination `WIN+X` dann `Windows PowerShell (Admin)` auswählen), darin dann einen der folgenden Befehle absetzen:

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

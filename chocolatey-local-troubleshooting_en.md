# Local Help with Intune Chocolatey Installations

## View Log Files

All Chocolatey log files can be found in the following directory:

    %ALLUSERSPROFILE%\chocolatey\logs

All Intune Management Extension log files can be found in the following directory:

    %ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\Logs


## Force Installation of a Package

To force a new installation of a package, first open a _Powershell Console with administrative rights_ (key combination `WIN+X` then select `Windows PowerShell (Admin)`), then issue one of the following commands:

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

## Uninstalling a Package

Sometimes chocolatey "thinks" that a failed installation was successful (for example if the package file was downloaded, but during the program installation the computer is shut down). In this case, first uninstall a package, then install it again.

To uninstall a package, first open a _Powershell Console with administrative rights_ (key combination `WIN+X` then select `Windows PowerShell (Admin)`), then issue one of the following commands:

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

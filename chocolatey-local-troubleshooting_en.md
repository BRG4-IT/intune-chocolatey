# Local help for Intune Chocolatey installations

## Test choco command

Open a console window (key combination `WIN+X` then select __Windows PowerShell__ or __Command Prompt__) and type the command:

    choco

If you get an output like

    Chocolatey v0.11.3
    Please run 'choco -?' or 'choco <command> -?' for help menu.

everything is OK. If not, you need to install the _chocolatey packet manager._


## Install Chocolatey packet manager

For the installation open a _Powershell console with administrative rights_ (key combination `WIN+X` then select __Windows PowerShell (Admin)__). To delete any remains of a previous failed installation run the following command:

```
Remove-Item "$env:ALLUSERSPROFILE\chocolatey" -Force -Recurse -ErrorAction SilentlyContinue
```

Then copy the command line found at [https://chocolatey.org/install](https://chocolatey.org/install) to the administrative Powershell console. If no errors occurred during execution, test the `choco` command again. After restarting the computer, the remaining program installation should now be done one by one via Intune.


## Installation of a Chocolatey package

If only the Intune installation of a single Chocolatey program package failed, this can be installed via a _Powershell console with administrative rights_ open (key combination `WIN+X` then select __Windows PowerShell (Admin)__).

First uninstall any existing version (copy the appropriate command line):

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

Then repeat the installation (copy the corresponding command line):

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
    
## View log files

For analysis purposes, it may be useful to view the local log files first.

All Chocolatey logfiles can be found in the following directory:

    %ALLUSERSPROFILE%\chocolatey\logs.

All Intune Management Extension log files can be found in the following directory:

    %ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs.


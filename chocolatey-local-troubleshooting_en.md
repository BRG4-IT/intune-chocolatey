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


## Installation/Uninstallation of a Chocolatey package

If only the Intune installation/uninstallation of a single Chocolatey program package failed, this can be installed via a _Powershell console with administrative rights_ open (key combination `WIN+X` then select __Windows PowerShell (Admin)__).

Copy the following command line to the Console and execute the commands (press Enter) to download the PowerShell scripts for installation/uninstallation from the Internet:

```
$chocoIntunePath="$Env:ChocolateyInstall\intune";if (!(Test-Path $chocoIntunePath)) {New-Item -ItemType directory -Path $chocoIntunePath};cd $chocoIntunePath;wget "https://github.com/BRG4-IT/intune-chocolatey/blob/main/choco-install-package/choco-install-package.ps1?raw=true" -OutFile "choco-install-package.ps1"
```

To install or uninstall individual programs, use the command lines documented under the Install/Uninstall headings on the [README pages of each program](https://github.com/BRG4-IT/intune-chocolatey#step-2-deploy-chocolatey-packages-with-intune).
    

## View log files

For analysis purposes, it may be useful to view the local log files first.

All Chocolatey logfiles can be found in the following directory:

    %ALLUSERSPROFILE%\chocolatey\logs.

All Intune Management Extension log files can be found in the following directory:

    %ALLUSERSPROFILE%\Microsoft\IntuneManagementExtension\logs.


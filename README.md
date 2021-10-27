# Deploying Software with intune and chocolatey

[Chocolatey](https://chocolatey.org/) is a [package manager](https://en.wikipedia.org/wiki/Package_manager) for [Windows](https://en.wikipedia.org/wiki/Microsoft_Windows). Deploying Software with [intune](https://de.wikipedia.org/wiki/Microsoft_Intune) using chocolatey makes life easier.

## Step 1: deploy chocolatey with intune

Please follow instructions found in [./choco-install/README.md](./choco-install/README.md)

## Step 2: deploy chocolatey packages with intune

Please follow instructions found in:

- [./choco-7zip/README.md](./choco-7zip/README.md)
- [./choco-adobereader/README.md](./choco-adobereader/README.md)
- [./choco-audacity/README.md](./choco-audacity/README.md)
- [./choco-chromium/README.md](./choco-chromium/README.md)
- [./choco-firefox/README.md](./choco-firefox/README.md)
- [./choco-geogebra5/README.md](./choco-geogebra5/README.md)
- [./choco-gimp/README.md](./choco-gimp/README.md)
- [./choco-inkscape/README.md](./choco-inkscape/README.md)
- [./choco-libreoffice/README.md](./choco-libreoffice/README.md)
- [./choco-python/README.md](./choco-python/README.md)
- [./choco-scribus/README.md](./choco-scribus/README.md)
- [./choco-sumatraPDF/README.md](./choco-sumatraPDF/README.md)
- [./choco-veracrypt/README.md](./choco-veracrypt/README.md)
- [./choco-vlc/README.md](./choco-vlc/README.md)
- [./choco-vscode/README.md](./choco-vscode/README.md)


## Convert scripts to .intunewin

You will find all necessary `.intunewin` precompiled in [.\choco-install\choco-install.intunewin](.\choco-install\choco-install.intunewin) and [.\choco-install-package\choco-install-package.intunewin](.\choco-install-package\choco-install-package.intunewin). If you like you can compile the files on your own:

1. Clone/download this repository
2. Download the [IntuneWinAppUtil](https://github.com/Microsoft/Microsoft-Win32-Content-Prep-Tool) Programm
3. Move `IntuneWinAppUtil.exe` to the root of this repository
4. Open a command prompt or a Powershell console
5. Navigate to the root of this repository
6. Execute the following commands:

```
.\IntuneWinAppUtil.exe -c .\choco-install -s choco-install.ps1 -o .\choco-install
```

and

```
.\IntuneWinAppUtil.exe -c .\choco-install-package -s choco-install-package.ps1 -o .\choco-install-package
```


## Client Troubleshooting

Please follow instructions found in [./chocolatey-local-troubleshooting_de.md](./chocolatey-local-troubleshooting_de.md)
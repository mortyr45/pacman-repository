# Kovacsmiki pacman repository

This git repository hosts PKGBUILDs and built packages to use on archlinux systems.

The packages hosted are built without proper testing. **Use at your own risk!**

## How to use the repository

First you need to install the gpg key used to sign all the packages in the repository.
```bash
sudo pacman-key --recv-keys 2829C5029D612D94
sudo pacman-key --lsign 2829C5029D612D94
# If your receive an error stating no secret key available, run the following command, then the previous once more:
sudo pacman-key --init
```
Then install the repository package.
```bash
sudo pacman -U [link]
# get the link from the releases page.
# eg.: https://pacman.kovacsmiki.com/x86_64/kovacsmiki-repository-20230530-1-any.pkg.tar.zst
```
Lastly, add the repository configuration to your /etc/pacman.conf
```bash
Include = /etc/pacman.d/kovacsmiki-repository.conf
```

## Packages in the repositorys

Most packages in the repository are not modified in any way. If they are, or there is any additional information about a package, it will be written in the following list:

Package name|Source|Notes
---|---|---
ani-cli|[Archlinux AUR](https://aur.archlinux.org/packages/ani-cli)|Watch anime from your terminal.
archlinux-devtools|Own|Metapackage for various archlinux tools.
auto-cpufreq|[Archlinux AUR](https://aur.archlinux.org/packages/auto-cpufreq)|Automatic CPU speed & power optimizer.
cpu-x|[Archlinux AUR](https://aur.archlinux.org/packages/cpu-x)|A Free software that gathers information on CPU, motherboard and more.
easyrpg-player|[Archlinux AUR](https://aur.archlinux.org/packages/easyrpg-player)|Plays RPG Maker 2000/2003 games.
kovacsmiki-repository|Own|Package for the kovacsmiki repository.
ibus-mozc|[Archlinux AUR](https://aur.archlinux.org/packages/ibus-mozc)|Use mozc with ibus.
iwgtk|[Archlinux AUR](https://aur.archlinux.org/packages/iwgtk)|Lightweight wireless networking GUI (front-end for iwd).
liblcf|[Archlinux AUR](https://aur.archlinux.org/packages/liblcf)|Dependency of easyrpg-player.
min|[Archlinux AUR](https://aur.archlinux.org/packages/min)|A fast, minimal browser that protects your privacy.
mozc|[Archlinux AUR](https://aur.archlinux.org/packages/mozc)|Japanese input.
rkdeveloptool|[Archlinux AUR](https://aur.archlinux.org/packages/rkdeveloptool)|Development tool for Rockchip SOC.
teamviewer|[Archlinux AUR](https://aur.archlinux.org/packages/teamviewer)|All-In-One Software for Remote Support and Online Meetings.
ttf-ms-fonts|[Archlinux AUR](https://aur.archlinux.org/packages/ttf-ms-fonts)|Core TTF Fonts from Microsoft.
visual-studio-code-bin|[Archlinux AUR](https://aur.archlinux.org/packages/visual-studio-code-bin)|Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)

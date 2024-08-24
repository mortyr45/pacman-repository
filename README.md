# Kovacsmiki pacman repository

This git repository hosts PKGBUILDs and built packages to use on archlinux systems.

The packages hosted are built without proper testing. **Use at your own risk!**

## How to use the repository

Download and then install the repository package.
```bash
wget https://pacman.kovacsmiki.com/x86_64/kovacsmiki-repository-20230823-1-any.pkg.tar.zst
sudo pacman -U kovacsmiki-repository-20230823-1-any.pkg.tar.zst
```
Add the repository configuration to your /etc/pacman.conf
```bash
Include = /etc/pacman.d/kovacsmiki-repository.conf
```

Lastly, do a system upgrade.
```bash
sudo pacman -Syu
```

## Packages in the repository

Most packages in the repository are not modified in any way. If they are, or there is any additional information about a package, it will be written in the following list:

Package name|Source|Notes
---|---|---
ani-cli|[Archlinux AUR](https://aur.archlinux.org/packages/ani-cli)|Watch anime from your terminal.
archlinux-devtools|Own|Metapackage for various archlinux tools.
auto-cpufreq|[Archlinux AUR](https://aur.archlinux.org/packages/auto-cpufreq)|Automatic CPU speed & power optimizer.
cpu-x|[Archlinux AUR](https://aur.archlinux.org/packages/cpu-x)|A Free software that gathers information on CPU, motherboard and more.
defold|[Archlinux AUR](https://aur.archlinux.org/packages/defold)|Defold is a completely free to use game engine for development of desktop, mobile and web games.
easyrpg-player|[Archlinux AUR](https://aur.archlinux.org/packages/easyrpg-player)|Plays RPG Maker 2000/2003 games.
kovacsmiki-repository|Own|Package for the kovacsmiki repository.
iwgtk|[Archlinux AUR](https://aur.archlinux.org/packages/iwgtk)|Lightweight wireless networking GUI (front-end for iwd).
liblcf|[Archlinux AUR](https://aur.archlinux.org/packages/liblcf)|Dependency of easyrpg-player.
min|[Archlinux AUR](https://aur.archlinux.org/packages/min)|A fast, minimal browser that protects your privacy.
mkinitcpio-tailscale|[Archlinux AUR](https://aur.archlinux.org/packages/mkinitcpio-tailscale)|mkinitcpio hook to launch Tailscale on systemd or busybox based initramfs
openvpn-update-systemd-resolved|[Archlinux AUR](https://aur.archlinux.org/packages/openvpn-update-systemd-resolved)|OpenVPN systemd-resolved Updater.
rkdeveloptool|[Archlinux AUR](https://aur.archlinux.org/packages/rkdeveloptool)|Development tool for Rockchip SOC.
stripe-cli|[Archlinux AUR](https://aur.archlinux.org/packages/stripe-cli)|CLI for Stripe.
teamviewer|[Archlinux AUR](https://aur.archlinux.org/packages/teamviewer)|All-In-One Software for Remote Support and Online Meetings.
ttf-ms-fonts|[Archlinux AUR](https://aur.archlinux.org/packages/ttf-ms-fonts)|Core TTF Fonts from Microsoft.
visual-studio-code-bin|[Archlinux AUR](https://aur.archlinux.org/packages/visual-studio-code-bin)|Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version).
waypipe|[Archlinux AUR](https://aur.archlinux.org/packages/waypipe)|A proxy for Wayland protocol applications; like ssh -X

# Windows

Windows 10 setup

## Contents

- [Virtual Machines](#virtual-machines)
- [WSL2](wsl2.md)
  - Install Linux
  - Install Windows Terminal
  - Edit `hosts`
  - Access using Windows File Explorer
- [VS Code](vscode.md): Open a WSL project in Code
- [Docker & Kubernetes](docker.desktop.md): Docker Desktop
- Git
  - [GitKraken](https://www.gitkraken.com/)
- [Keymap]:(#keymap)

---

## Virtual Machines

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads)

### Set Virtualization

In BIOS Setup:

- Intel: Enable Virtualization Technology
- AMD: Enable SVM mode

## Keymap

[randyrants/sharpkeys](https://github.com/randyrants/sharpkeys)

### `Caps Lock` to `Escape`

1. Add
   - Map this key: `Special: Caps Lock(00_3A)`
   - To this key: `Special: Escape(00_01)`
1. Write to Registry
1. Log out or Reboot

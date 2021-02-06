# Windows

Windows 10 setup

## Contents

- [Virtual Machines](#virtual-machines)
- [WSL2](wsl2.md)
  - Install Linux
  - Install Windows Terminal
  - Static IP
  - Edit `hosts`
  - Access using Windows File Explorer
- [VS Code](vscode.md): Open a WSL project in Code
- [Docker & Kubernetes](docker.desktop.md): Docker Desktop
- Git
  - [GitKraken](https://www.gitkraken.com/)
- [Keymap]:(#keymap)

---

## Virtual Machines

- [Vagrant](https://www.vagrantup.com/downloads)
  - plugin: [vmware](https://www.vagrantup.com/vmware). $79 per seat.
- VMware: [Fusion](https://www.vmware.com/products/fusion.html), [Workstation Player](https://www.vmware.com/products/workstation-player.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Vagrant + VMware

```bash
vagrant plugin install vagrant-vmware-desktop
vagrant plugin license vagrant-vmware-desktop ~/license.lic
vagrant plugin list
```

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

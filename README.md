# Windows

Windows 10 setup

## Contents

- [Chocolatey](https://chocolatey.org/): Package manager
- [Termianl](#termianl)
  - Windows Terminal
  - Hyper
- [Virtual Machines](#virtual-machines)
- [WSL2](wsl2.md)
  - Install Linux
  - Static IP
  - Edit `hosts`
  - Access using Windows File Explorer
- [VS Code](vscode.md): Open a WSL project in Code
- [Docker & Kubernetes](docker.desktop.md): Docker Desktop
- Git
  - [GitKraken](https://www.gitkraken.com/)
- [Keymap]:(#keymap)

---

## Termianl

### Windows Terminal

- [Install and set up Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/get-started)

1. Install `Windows Terminal` from the Microsoft Store.

### Hyper

- [Hyper](https://hyper.is/)
- [github](https://github.com/vercel/hyper)

Open PowerShell as **Administrator** and run:

```bash
choco install hyper
```

## Virtual Machines

- [Vagrant](https://www.vagrantup.com/downloads)
  - [WSL](https://www.vagrantup.com/docs/other/wsl)
  - plugin: [vmware](https://www.vagrantup.com/vmware). $79 per seat.
- VMware: [Fusion](https://www.vmware.com/products/fusion.html), [Workstation Player](https://www.vmware.com/products/workstation-player.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Vagrant

```bash
vagrant plugin install vagrant-vbguest
```

```bash
vi ~/.bashrc

export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export PATH="$PATH:/mnt/c/Program\ Files/Oracle/VirtualBox"
```

### Vagrant + VMware

```bash
vagrant plugin install vagrant-vmware-desktop
vagrant plugin license vagrant-vmware-desktop $HOME/license.lic
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

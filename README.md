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
  - [Vagrant VMware Utility](https://www.vagrantup.com/vmware/downloads)
  - [Default Provider](https://www.vagrantup.com/docs/providers/basic_usage#default-provider)
- VMware: [Fusion](https://www.vmware.com/products/fusion.html), [Workstation Player](https://www.vmware.com/products/workstation-player.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Vagrant

on PowerShell:

```bash
vagrant plugin install vagrant-vbguest
vagrant up
vagrant ssh
```

### Vagrant + VMware
```bash
vagrant plugin install vagrant-vmware-desktop
vagrant plugin license vagrant-vmware-desktop $HOME/license.lic
vagrant plugin list
```

#### Usage

```bash
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.provider "vmware_desktop" do |vb|
    vb.gui = false
    vb.cpus = 2
    vb.memory = "1024"
  end

  # config.vm.provider "virtualbox" do |vb|
  #   vb.gui = true
  #   vb.memory = "1024"
  # end
end
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

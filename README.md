# Windows

Windows 10 setup

## Set Virtualization

In BIOS Setup:

- Intel: Enable Virtualization Technology
- AMD: Enable SVM mode

---

## Windows Subsystem for Linux 2

- [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/)
  - [Install](https://docs.microsoft.com/en-us/windows/wsl/install-win10#manual-installation-steps)

Update to the latest Windows version.

### Enable the Windows Subsystem for Linux

Open PowerShell as **Administrator** and run:

```ps
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

### Enable Virtual Machine feature

```ps
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Restart your machine to complete the WSL install and update to WSL 2.

### Download the Linux kernel update package

1. Download: [Link](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package)
2. Run the update package downloaded in the previous step.

### Set WSL 2 as your default version

Open PowerShell and run:

```ps
wsl --set-default-version 2
```

### Install your Linux distribution of choice

1. Open the **Microsoft Store** and select your favorite **Linux distribution**.
2. Search `Ubuntu`.
3. From the distribution's page, select "**Get**".
4. Start `Ubuntu`.

### Install Windows Terminal

- [Install and set up Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/get-started)

1. Install `Windows Terminal` from the Microsoft Store.

### Access

#### Accessing Windows Files from Linux

```bash
cd /mnt/c
```

#### Accessing Linux Files from Windows

1. `Windows logo key` + `R`.
2. type `\\wsl$\Ubuntu`.

or in Linux:

```bash
powershell.exe start .
```

#### Map a Network Drive

1. `Windows logo key`  + `E`.
2. Select This `PC` from the left pane. Then, on the `Computer tab`, select `Map network drive`.
   - Drive: `U:`
   - Folder: `\\wsl$\Ubuntu`

### GPU accelerate

- [GPU accelerated machine learning training in the Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/tutorials/gpu-compute)

---

## Docker & Kubernetes

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

1. Install and Start.
2. Login Docker Hub.
3. Settings
   1. Kubernetes: Enable Kubernetes.
4. Apply and Restart.

---

## VS Code

- [Visual Studio Code](https://code.visualstudio.com/)

### Remote Development

- [Install](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

### Update Linux distribution

In Ubuntu:

```bash
sudo apt-get update
sudo apt-get install wget ca-certificates
```

Restart Ubuntu in Widowns Terminal:

```bash
wsl --shutdown
wsl -d Ubuntu
```

### Open a WSL project in Visual Studio Code

Make a project in Linux:

```bash
mkdir ~/my-project
cd ~/my-project
echo 'hello' > hello
```

In Linux:

```bash
code .
```

In VS Code:

1. `CTRL` + `SHIFT` + `P`
2. `REMOTE-WSL`

---

## Git

- [GitKraken](https://www.gitkraken.com/)

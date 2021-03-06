# Windows Subsystem for Linux 2

- [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/)
  - [Install](https://docs.microsoft.com/en-us/windows/wsl/install-win10#manual-installation-steps)

Update to the latest Windows version.

## Enable the Windows Subsystem for Linux

Open PowerShell as **Administrator** and run:

```ps
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

## Enable Virtual Machine feature

```ps
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Restart your machine to complete the WSL install and update to WSL 2.

## Download the Linux kernel update package

1. Download: [Link](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package)
2. Run the update package downloaded in the previous step.

## Set WSL 2 as your default version

Open PowerShell and run:

```ps
wsl --set-default-version 2
```

## Install your Linux distribution of choice

1. Open the **Microsoft Store** and select your favorite **Linux distribution**.
2. Search `Ubuntu`.
3. From the distribution's page, select "**Get**".
4. Start `Ubuntu`.

---

## Access

### Accessing Windows Files from Linux

```bash
cd /mnt/c
```

### Accessing Linux Files from Windows

1. `Windows logo key` + `R`.
2. type `\\wsl$\Ubuntu`.

or in Linux:

```bash
powershell.exe start .
```

### Map a Network Drive

1. `Windows logo key`  + `E`.
2. Select This `PC` from the left pane. Then, on the `Computer tab`, select `Map network drive`.
   - Drive: `U:`
   - Folder: `\\wsl$\Ubuntu`

## GPU accelerate

- [GPU accelerated machine learning training in the Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/tutorials/gpu-compute)

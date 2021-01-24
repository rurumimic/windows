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

## Install Windows Terminal

- [Install and set up Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/get-started)

1. Install `Windows Terminal` from the Microsoft Store.

---

## Hosts

### Linux's IP

In Linux:

```bash
ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1

192.168.65.149
```

In Powershell:

```bash
wsl -d Ubuntu -- ip addr show eth0 | select-string -pattern "inet\b" | out-string | %{$_.trim()} | %{($_ -split ' ')[1]} | %{($_ -split '/')[0]} | set-variable -name "ubuntu"
```

```bash
# echo $ubuntu
get-variable -name "ubuntu"

Name      Value
----      -----
ubuntu    192.168.65.149
```

### Windows' hosts

Run Windows Powershell as Administrator:

```bash
add-content C:\Windows\System32\drivers\etc\hosts -value "`r`n# Windows Subsystem for Linux 2"
add-content C:\Windows\System32\drivers\etc\hosts -value "$ubuntu ubuntu.local"
```

### Auto script

[wsl.ps1](ps1/wsl.ps1)

1. Save `wsl.ps1` in `C:\Windows`
1. Open **Task Scheduler**
1. Create Task
   - General
      - Name: WSL
      - Description: WSL set up
      - Run with highest privileges
      - Configure for: Windows 10
   - Actions → New
     - Action: Start a program
     - Program/script: `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`
     - Add arguments: `-ExecutionPolicy Bypass -File C:\Windows\wsl.ps1`
   - Conditions
     - Power
       - Start the task only if the computer is on AC power: uncheck
   - Settings
     - Allow task to be run on demand: check
     - Do not start a new instance
2. Taks Scheduler Library
   - Run the task
3. `F5` Refresh Task Scheduler

### Verify hosts file

In Windows Powershell, run notepad as Administrator:

```bash
cat C:\Windows\System32\drivers\etc\hosts
# or
Start-Process notepad C:\Windows\System32\drivers\etc\hosts -Verb RunAs
```

```bash
# Windows Subsystem for Linux 2
192.168.65.149 ubuntu.local
```

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

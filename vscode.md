# VS Code

- [Visual Studio Code](https://code.visualstudio.com/)

## Remote Development

- [Install](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## Update Linux distribution

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

## Open a WSL project in Visual Studio Code

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

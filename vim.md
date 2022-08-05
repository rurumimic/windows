# Vim

## Microsoft Visual C++ Redistributable

- ms docs: [vc redist](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170)

Download for X64: `https://aka.ms/vs/17/release/vc_redist.x64.exe`

## Languages

### Python

- [download](https://www.python.org/downloads/)
- [3.10.6](https://www.python.org/downloads/release/python-3106/)

```bash
ls $HOME\AppData\Local\Programs\Python\Python310
```

### Node

- [download](https://nodejs.org/ko/download/)

## NeoVim

- [neovim](https://github.com/neovim/neovim)
- [install](https://github.com/neovim/neovim/wiki/Installing-Neovim#windows)
- [releases](https://github.com/neovim/neovim/releases)

- `nvim-win64.zip`
- `nvim-win64.msi`: default path `C:\Program Files\Neovim\bin`

## SpaceVim

- [spacevim](https://spacevim.org/)
- [install](https://spacevim.org/quick-start-guide/#windows)

### Python

```bash
pip install greenlet-1.1.2-cp310-cp310-win_amd64.whl msgpack-1.0.4-cp310-cp310-win_amd64.whl pynvim-0.4.3.tar.gz
```

```bash
export PYTHON_HOST_PROG='$HOME\AppData\Local\Programs\Python\Python310\python.exe'
export PYTHON3_HOST_PROG='$HOME\AppData\Local\Programs\Python\Python310\python.exe'
```

```bash
nvim
:checkhealth
```

```bash
## Python 3 provider (optional)
- INFO: Using: g:python3_host_prog = "$HOME\AppData\Local\Programs\Python\Python310\python.exe"
- INFO: Executable: C:\Users\admin\AppData\Local\Programs\Python\Python310\python.exe
- INFO: Python version: 3.10.6
- INFO: pynvim version: 0.4.3
- OK: Latest pynvim is installed.
```

### init.toml

```bash
nvim $HOME\.SpaceVim.d\init.toml
```

```toml
```

### Languages

#### Rust

```bash
:CocInstall coc-rust-analyzer
```

- [rustfmt](https://github.com/rust-lang/rustfmt/releases)

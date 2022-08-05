# Vim

## Microsoft Visual C++ Redistributable

- ms docs: [vc redist](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170)

Download for X64: `https://aka.ms/vs/17/release/vc_redist.x64.exe`

## Python

- [download](https://www.python.org/downloads/)
- [3.10.6](https://www.python.org/downloads/release/python-3106/)

```bash
ls 
```

## NeoVim

- [neovim](https://github.com/neovim/neovim)
- [install](https://github.com/neovim/neovim/wiki/Installing-Neovim#windows)
- [releases](https://github.com/neovim/neovim/releases)

- `nvim-win64.zip`
- `nvim-win64.msi`: default path `C:\Program Files\Neovim\bin`

```bash
mkdir -p $home\AppData\Local\nvim
```

```bash
nvim
:checkhealth
```

### Python

```bash
pip install greenlet-1.1.2-cp310-cp310-win_amd64.whl msgpack-1.0.4-cp310-cp310-win_amd64.whl pynvim-0.4.3.tar.gz
```

```bash
nvim $home\AppData\Local\nvim\init.vim
```

```bash
let g:python3_host_prog='C:\Users\admin\AppData\Local\Programs\Python\Python310\python.exe'
let g:python_host_prog='C:\Users\admin\AppData\Local\Programs\Python\Python310\python.exe'
```

### (option) Spell

```bash
mkdir -p $home\AppData\Local\nvim\site\spell
ii $home\AppData\Local\nvim\site\spell
```

Save [en.utf-8.spl](https://github.com/vim/vim/blob/master/runtime/spell/en.utf-8.spl) and 
[en.utf-8.sug](https://github.com/vim/vim/blob/master/runtime/spell/en.utf-8.sug)

## SpaceVim

- [spacevim](https://spacevim.org/)
- [install](https://spacevim.org/quick-start-guide/#windows)




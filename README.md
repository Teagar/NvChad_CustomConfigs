# NvChad Custom Configs

**Welcome to the NvChad v2 custom configuration repository!** This setup is designed to transform your Neovim experience into a lightning-fast, feature-rich, and visually stunning coding environment.

## Dashboard

![home!](img/home.png)

## Install dependencies
- [Neovim](https://github.com/neovim/neovim/tags) (0.9.0+ or Stable)
- [MSYS2](https://www.msys2.org/) (C++ *Windows* Compiler)
- [GIT](https://git-scm.com/downloads)
- [NodeJs](https://nodejs.org/en/)
- [Ripgrep](https://github.com/BurntSushi/ripgrep)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts)
- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=en-id&gl=id) (*Windows*)
- [Powershell](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=en-id&gl=id) (*Windows*)
- [NvChad](https://nvchad.com/)

# Config Linux (Linux Debian Based)

- Make sure the account is administrator

```bash
visudo
[nama user] ALL=(ALL:ALL) ALL
[nama user] ALL=(ALL) NOPASSWD:ALL
```

- Install Neovim

```
sudo apt-get install wget
mkdir download
cd download
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.deb
sudo apt-get install ./nvim-linux64.deb
nvim --version
```

- Check GCC availability

```bash
gcc --version
```

- Install git

```bash
sudo apt-get install git
git --version
```

- Install NodeJS

```bash
sudo apt-get install curl
sudo apt install build-essential libssl-dev
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm install 18.12.1
node --version
npm --version
```

- Install unzip, ripgrep

```bash
sudo apt-get install unzip
sudo apt-get install ripgrep
```

- Install Lazygit

```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
lazygit --version
```

## Config Linux / MAC
- Rename Config Original
```bash
mv ~/.config/nvim/lua/custom/ ~/.config/nvim/lua/custom_backup
```
- New Clone Config
```bash
git clone https://github.com/Teagar/NvChad_CustomConfigs ~/.config/nvim/lua/custom
```
## Config Windows
- Rename Config Original
```bash
Rename-Item "$env:LOCALAPPDATA\nvim\lua\custom" "$env:LOCALAPPDATA\nvim\lua\custom_backup"
```
- New Clone Config
```bash
git clone https://github.com/Teagar/NvChad_CustomConfigs "$env:LOCALAPPDATA\nvim\lua\custom"
```


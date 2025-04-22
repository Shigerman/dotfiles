# dotfiles
My PC config

## macOS config

```
cd ~
git clone git@github.com:Shigerman/dotfiles.git
rm -f ~/.config/karabiner/karabiner.json
mkdir -p ~/.config/karabiner
ln ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json
echo '. "${HOME}/dotfiles/bash-cfg.sh"' >> ~/.bash_profile
printf '#!/bin/sh\n. ~/.bash_profile\n' >> ~/.zshrc
echo -e "[include]\npath = ~/dotfiles/git-cfg.toml\n" >> ~/.gitconfig
. ~/.zshrc
```

## Windows config

```ps1
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
scoop install git sudo
sudo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
sudo Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
wsl --set-default-version 2
explorer https://aka.ms/wsl2kernel
explorer https://github.com/microsoft/wiinget-cli/releases
# Reboot, install Ubuntu from App Store and run it
scoop bucket add extras
scoop install windows-terminal mpc-hc-fork
wsl
sudo apt update
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
cd ~
git config --global user.email "<mail>"
git clone git@github.com:Shigerman/dotfiles.git
echo '. "${HOME}/dotfiles/bash-cfg.sh"' >> ~/.bashrc
echo -e "[include]\npath = ~/dotfiles/git-cfg.toml\n" >> ~/.gitconfig
. ~/.bashrc
```

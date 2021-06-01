# dotfiles
My pc config

## Usage

```
cd ~
git clone git@github.com:Shigerman/dotfiles.git
rm -f ~/.config/karabiner/karabiner.json
ln ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json
echo '. "${HOME}/dotfiles/bash-cfg.sh"' >> ~/.bash_profile
printf '#!/bin/sh\n. ~/.bash_profile\n' > ~/.zshrc
echo -e "[include]\npath = ~/dotfiles/git-cfg.toml\n" >> ~/.gitconfig
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
curl https://pyenv.run | bash
. ~/.bashrc
pyenv install 3.8.5
pyenv global 3.8.5
```

## License

The following licensing applies to the dotfiles project: Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0). For more information go to https://creativecommons.org/licenses/by-nc-nd/4.0/

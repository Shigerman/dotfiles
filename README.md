# dotfiles
My PC config

## macOS config

```sh

# install programs
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
brew install uv
uv python list
uv python install cpython-3.13.3-macos-aarch64-none

# keyboard mapping tool
cd ~
git clone git@github.com:Shigerman/dotfiles.git
mkdir ~/.config
ln -fs ~/dotfiles/karabiner ~/.config/karabiner

# execute shell configuration in bash and zsh
echo '. "${HOME}/dotfiles/bash-cfg.sh"' >> ~/.bash_profile
printf '#!/bin/sh\n. ~/.bash_profile\n' >> ~/.zshrc
# apply shell configuration
. ~/.zshrc

```

## Windows config

Use Terminal app (with PowerShell)

```ps1

# install programs
winget install Git.Git
winget install astral-sh.uv
uv python list
uv python install cpython-3.13.1-windows-x86_64-none

cd ~
git clone git@github.com:Shigerman/dotfiles.git

# enable Windows Subsystem for Linux
wsl --install

```

Additional steps for any new pc:
* create manually ~/.gitconfig with content from git-cfg.toml
* choose screenshot instrument

# dotfiles
My PC config

## macOS config

```sh

# install programs
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
brew install uv
uv python list
uv python install 3.14 --default

# keyboard mapping tool
cd ~
git clone git@github.com:Shigerman/dotfiles.git
mkdir ~/.config
ln -fs ~/dotfiles/karabiner ~/.config/karabiner
brew install karabiner

# execute shell configuration in bash and zsh
echo '. "${HOME}/dotfiles/bash-cfg.sh"' >> ~/.bash_profile
printf '#!/bin/sh\n. ~/.bash_profile\n' >> ~/.zshrc
# apply shell configuration
. ~/.zshrc

```


## Windows config

Use Terminal app (with PowerShell), not cmd

```ps1

# install programs
winget install Git.Git
winget install astral-sh.uv
uv python list
uv python install 3.14 --default

cd ~
git clone git@github.com:Shigerman/dotfiles.git

- show file name extensions
- show hidden items

# enable Windows Subsystem for Linux
wsl --install

```

For any new pc:
- create manually ~/.gitconfig with content from git-cfg.toml

# box-cfg
My pc config

## Usage

```
cd ~
git clone git@github.com:Shigerman/box-cfg.git
rm -f ~/.config/karabiner/karabiner.json
ln ~/box-cfg/karabiner.json ~/.config/karabiner/karabiner.json
echo '. "${HOME}/box-cfg/bash-cfg.sh"' >> ~/.bash_profile
echo -e "[include]\npath = ~/box-cfg/git-cfg.toml\n" >> ~/.gitconfig
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
cd ~
git config --global user.email "<mail>"
git clone git@github.com:Shigerman/box-cfg.git
echo '. "${HOME}/box-cfg/bash-cfg.sh"' >> ~/.bashrc
echo -e "[include]\npath = ~/box-cfg/git-cfg.toml\n" >> ~/.gitconfig
```

## License

The following licensing applies to the box-cfg project: Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0). For more information go to https://creativecommons.org/licenses/by-nc-nd/4.0/

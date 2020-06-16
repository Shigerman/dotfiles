# box-cfg
My pc config

## Usage

```
cd ~
git clone git@github.com:Shigerman/box-cfg.git
# Add source "${HOME}/box-cfg/bash-cfg.sh" into ~/.bash_profile
rm -f ~/.config/karabiner/karabiner.json
ln ~/box-cfg/karabiner.json ~/.config/karabiner/karabiner.json
echo -e "[include]\npath = ~/box-cfg/git-cfg.toml\n" >> ~/.gitconfig
```

## License

The following licensing applies to the box-cfg project: Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0). For more information go to https://creativecommons.org/licenses/by-nc-nd/4.0/

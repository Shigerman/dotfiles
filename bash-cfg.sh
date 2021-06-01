alias cdd='cd ${HOME}/Documents'
alias cde='cd ${HOME}/Desktop'
alias cdc='cd ${HOME}/dotfiles'
alias g='git'
if command -v gls &> /dev/null; then
    alias ll='gls -l -h -A -F --color --group-directories-first $@'
else
    alias ll='ls -l -h -A -F --color --group-directories-first $@'
fi
# Built-in 'venv' installs bundled, outdated 'pip'
alias vec='python3 -m virtualenv .venv'
alias vea='. .venv/bin/activate'
alias ved='deactivate'

alias pon="poetry init --no-interaction"
alias poi='poetry install'
alias poa='poetry add'

alias por='poetry run'
alias pop='poetry run python'
alias pom='poetry run python manage.py'

export PYTHONDONTWRITEBYTECODE=1
export PIPENV_VENV_IN_PROJECT=1
export POETRY_VIRTUALENVS_IN_PROJECT=1
export PYTHONSTARTUP=~/dotfiles/pythonstartup.py
# For commands like 'pipenv open flask'
export EDITOR=code
# WSL2 display server address
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

set_bash_prompt() {
    PS1="\\W "
    branch_name=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ $? = "0" ]; then
        PS1="$PS1(\[\033[0;36m\]$branch_name\[\033[0m\]) "
    fi

    if [ -e "$VIRTUAL_ENV" ]; then
        venv_name=$(basename "$VIRTUAL_ENV")
        PS1="$PS1\[\033[0;32m\]🐍\[\033[0m\] "
    fi
    PS1="$PS1\[\033[0;33m\]\\$\[\033[0m\] "
}
PROMPT_COMMAND=set_bash_prompt

if [ -d "$HOME/.pyenv" ]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

if [ -d "$HOME/.nodenv" ]; then
    export PATH="$HOME/.nodenv/bin:$PATH"
    eval "$(nodenv init -)"
fi

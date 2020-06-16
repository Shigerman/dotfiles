alias cdd='cd ${HOME}/Documents'
alias cde='cd ${HOME}/Desktop'
alias cdc='cd ${HOME}/box-cfg'
alias g='git'
alias ll='gls -l -h -A -F --color --group-directories-first $@'
export PYTHONDONTWRITEBYTECODE=1
export PYTHONSTARTUP=~/box-cfg/pythonstartup.py

set_bash_prompt() {
    PS1="\\W "
    branch_name=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ $? = "0" ]; then
        PS1="$PS1(\[\033[0;33m\]$branch_name\[\033[0m\]) "
    fi

    if [ -e "$VIRTUAL_ENV" ]; then
        venv_name=$(basename "$VIRTUAL_ENV")
        PS1="$PS1[\[\033[0;32m\]$venv_name\[\033[0m\]] "
    fi
    PS1="$PS1\\$ "
}
PROMPT_COMMAND=set_bash_prompt

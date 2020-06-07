alias cdd='cd ${HOME}/Documents'
alias cde='cd ${HOME}/Desktop'
alias cdc='cd ${HOME}/box-cfg'
alias g='git'
alias ll='gls -l -h -A -F --color --group-directories-first $@'
export PYTHONDONTWRITEBYTECODE=1
export PYTHONSTARTUP=~/box-cfg/pythonstartup.py

set_bash_prompt() {
    branch_name=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if test $? = "0"; then
        PS1="\\W (\[\033[0;33m\]$branch_name\[\033[0m\]) \\$ "
    else
        PS1="\\W \\$ "
    fi
}
PROMPT_COMMAND=set_bash_prompt

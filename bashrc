# fresh
source ~/.fresh/build/shell.sh

# aliases
alias be='bundle exec'
alias rmds="find . -name '*.DS_Store' -type f -delete"

# prompt
PROMPT_COMMAND='__git_ps1 "\u @ \w" "\\\$ "'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

# exports
export CLICOLOR=1

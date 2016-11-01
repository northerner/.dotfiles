# fresh
source ~/.fresh/build/shell.sh

# chruby
if [ -d "/usr/local/share/chruby" ]; then
  source /usr/local/share/chruby/chruby.sh
fi

# rbenv 
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# tokens
if [ -e "$HOME/.tokens" ]; then
  source "$HOME/.tokens"
fi

# aliases
alias be='bundle exec'
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias gg='git grep'

# prompt
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

# exports
export CLICOLOR=1
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8

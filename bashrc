# fresh
source ~/.fresh/build/shell.sh

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# asdf
if [ -d "$HOME/.asdf" ]; then
  source ~/.asdf/asdf.sh
  source ~/.asdf/completions/asdf.bash
fi

# Homebrew shell completion
if type brew 2&>/dev/null; then
  . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
else
  echo "run: brew install git bash-completion"
fi

# tokens
if [ -e "$HOME/.tokens" ]; then
  source "$HOME/.tokens"
fi

# aliases
alias be='bundle exec'
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias gg='git grep -n'
alias gco='git checkout'
alias gd='git diff'
alias gs='git status'

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
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=~/bin:${PATH}
export PATH=~/.cargo/bin:${PATH}
export GOPATH="~/go"
export GOBIN="$GOPATH/bin"
export PATH=$GOBIN:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

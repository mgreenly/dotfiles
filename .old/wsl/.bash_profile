
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


if [ -d "/home/mgreenly/.local/bin" ]; then
  # add local/bin if it's available
  export PATH=$HOME/.local/bin:$PATH
fi

if [ -d "$HOME/.local/go/bin" ]; then
  # add go if it's available
  export PATH=$HOME/.local/go/bin:$PATH
fi

if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi

eval "$(direnv hook bash)"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

[ -f "/home/mgreenly/.ghcup/env" ] && source "/home/mgreenly/.ghcup/env" # ghcup-env


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


alias vim=vim.gtk3
export EDITOR=vim
#export TERM=screen-256color

cd $HOME


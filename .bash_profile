# load the default $HOME/.bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/go" ] ; then
  export PATH="$HOME/.local/go/bin:$PATH"
fi

if [ -e "$HOME/.local/zig" ] ; then
  export PATH="$HOME/.local/zig:$PATH"
fi

if [ -e "$HOME/.local/roc" ] ; then
  export PATH="$HOME/.local/roc:$PATH"
fi

if [ -e "$HOME/.local/roc" ] ; then
  export PATH="$PATH:$HOME/.rvm/bin"
  source "$HOME/.rvm/scripts/rvm"
fi

eval "$(direnv hook bash)"

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

TERM="xterm-256color"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
fi
unset color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# disable key bindings for XON/XOFF flow control (ctrl+s and ctrl+q)
stty -ixon

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
  LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
  CPATH="$HOME/.local/include:$CPATH"
fi

if [ -d "$HOME/.opt/awscli/bin" ]; then
  PATH="$HOME/.opt/awscli/bin:$PATH"
fi

ERLANG_ACTIVATION_FILE="$HOME/.opt/erlang/activate"
if [ -e $ERLANG_ACTIVATION_FILE ]; then
  source $ERLANG_ACTIVATION_FILE
fi

if [ -d "$HOME/.opt/elixir/bin" ]; then
  PATH="$HOME/.opt/elixir/bin:$PATH"
fi

if [ -d "$HOME/.opt/chibi/bin" ] ; then
  PATH="$HOME/.opt/chibi/bin:$PATH"
  LD_LIBRARY_PATH="$HOME/.opt/chibi/lib:$LD_LIBRARY_PATH"
  CPATH="$HOME/.opt/chibi/include:$CPATH"
fi

if [ -d "$HOME/.opt/chicken/bin" ] ; then
  PATH="$HOME/.opt/chicken/bin:$PATH"
  LD_LIBRARY_PATH="$HOME/.opt/chicken/lib:$LD_LIBRARY_PATH"
  CPATH="$HOME/.opt/chicken/include:$CPATH"
fi

if [ -d "$HOME/.opt/gambit/bin" ] ; then
  PATH="$HOME/.opt/gambit/bin:$PATH"
  LD_LIBRARY_PATH="$HOME/.opt/gambit/lib:$LD_LIBRARY_PATH"
  CPATH="$HOME/.opt/gambit/include:$CPATH"
fi

if [ -d "$HOME/.opt/gauche/bin" ] ; then
  PATH="$HOME/.opt/gauche/bin:$PATH"
  if hash rlwrap 2>/dev/null; then
    alias gosh="rlwrap gosh"
  fi
fi

if [ -d "$HOME/.opt/go" ]; then
  export PATH=$HOME/.opt/go/bin:$HOME/.go/bin:$PATH
  export GOPATH=$HOME/.go
fi


HASKELL_ENVIRONMENT_FILE="$HOME/.ghc/activate"
if [ -f "$HASKELL_ENVIRONMENT_FILE" ]; then
  source "$HASKELL_ENVIRONMENT_FILE"
fi

if [ -d "$HOME/.opt/idris/bin" ] ; then
  PATH="$HOME/.opt/idris/bin:$PATH"
fi

#
# check if javac is installed.  If so use it's path to find the jdk.
#
if [ -e "/usr/bin/javac" ]; then 
  JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
fi

# if javac isn't installed check if java exists and use it's path to find the jre.
if [[ -z $JAVA_HOME ]] && [[ -e "/usr/bin/java" ]]; then
  JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
fi


if [ -d "$HOME/.opt/node/bin" ]; then
  PATH="$HOME/.opt/node/bin:$PATH"
fi

if [ -e "$HOME/.cargo/env" ] ; then
  source $HOME/.cargo/env
fi


#if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
#  source "$HOME/.nix-profile/etc/profile.d/nix.sh" 
#fi


# rvm's scripts are retarded and complain if there path doesn't 
# first in the list so we source it's script last
if [ -f "$HOME/.rvm/scripts/rvm" ] ; then
  source "$HOME/.rvm/scripts/rvm"
fi

if [ ! -z "$CPATH" ]; then export CPATH; fi
if [ ! -z "$LD_LIBRARY_PATH" ]; then export LD_LIBRARY_PATH; fi
if [ ! -z "$GOPATH" ]; then export GOPATH; fi
if [ ! -z "$JAVAHOME" ]; then export JAVAHOME; fi

export PATH

export EDITOR=vim

alias dc="docker-compose"
alias dm="docker-machine"
alias kc="kubectl"
alias ls='ls --color=auto --group-directories-first'

KUBECTL_ENV_FILE=$HOME/git/secrets/envs/test.k8s.logic-refinery.io
if [ -f "$KUBECTL_ENV_FILE" ]; then
  source "$KUBECTL_ENV_FILE"
fi

target=/usr/lib/dart/bin
if [ -d "$target" ]; then
  PATH="$target:$HOME/.pub-cache/bin:$PATH"
fi

export GOSRC=$(echo $GOPATH | cut -d: -f1)/src
export MONOREPO=$(echo $GOSRC)/github.com/logic-refinery
xmodmap -e 'keycode 135 = NoSymbol'

export DROPBOX_DIR=$HOME/Documents/Dropbox

#if [ -f "${HOME}/.gpg-agent-info" ]; then
#     source "${HOME}/.gpg-agent-info"
#       export GPG_AGENT_INFO
#       export SSH_AUTH_SOCK
#       export SSH_AGENT_PID
#else
#    eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
#fi

#alias vim=nvim

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# . /home/mgreenly/.nix-profile/etc/profile.d/nix.sh

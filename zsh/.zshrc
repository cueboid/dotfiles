autoload -U colors && colors

export PS1="%{%F{207}%}%n%{%F{15}%}@%{%F{15}%}%m %{%F{7}%}%1~ %{%f%}$ "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTCONTROL=ignoreboth

# setting means cd can not be ommited when changing directory, just type a path to cd into it
setopt auto_cd

# auto completion stuff
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vi mode stuff
bindkey -v
export KEYTIMEOUT=1

# HACK: fixes backspace just not working when going from normal to insert mode
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

# improve ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias pm="pulsemixer"
alias lg='lazygit'
alias zj='zellij'
alias mk='make'
alias n='nvim'

if ! command -v hx &> /dev/null; then
	alias hx='helix'
fi

export EDITOR=nvim
export VISUAL=nvim

pfetch


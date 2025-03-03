# uses some stuff from https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# setting means cd can not be ommited when changing dir, just type dir to cd into it
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

echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# improve ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

if ! command -v hx &> /dev/null; then
    alias hx='helix'
fi

export EDITOR=hx
export VISUAL=hx

pfetch


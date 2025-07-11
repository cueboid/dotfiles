autoload -Uz colors compinit vcs_info bashcompinit
colors

# history
HISTSIZE=10000
SAVEHIST=10000
[[ ! -d "$XDG_STATE_HOME/zsh" ]] && mkdir -p "$XDG_STATE_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME"/zsh/history
HISTCONTROL=ignoreboth
setopt share_history
setopt hist_ignore_space
setopt extended_history

# prompt
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%f'
zstyle ':vcs_info:hg:*' formats '%F{magenta}(%b)%f'
precmd() { vcs_info }
PROMPT='%F{%(?.green.red)}➜%f %F{blue}%~%f ${vcs_info_msg_0_}
%# '

# misc options
setopt interactivecomments
setopt auto_cd
setopt extended_glob
setopt nomatch
unsetopt beep

# completion
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' '' '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '$ZDOTDIR/.zshrc'
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"
bashcompinit

# vi mode
bindkey -v
export KEYTIMEOUT=1

# HACK: fixes backspace just not working when going from normal to insert mode
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias info="info --vi-keys"

alias pm="pulsemixer"
alias pc="pacmixer"
alias lg='lazygit'
alias zj='zellij'
alias mk='make'
alias n='nvim'
alias v='vim'

if ! command -v hx &> /dev/null; then
  alias hx='helix'
fi

eval "$(fzf --zsh)"

# cowsay "hello $(whoami)"

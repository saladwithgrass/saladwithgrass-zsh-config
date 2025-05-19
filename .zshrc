# directory with plugins
export ZSH_DOT_DIR=/home/jazzhands/.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep

bindkey -v
KEYTIMEOUT=1
bindkey '^[^?' backward-kill-word

function zle-line-init zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne '[2 q'
  elif [[ $KEYMAP == (main|viins) ]]; then
    echo -ne '[0 q'
  fi
}
zle -N zle-line-init
zle -N zle-keymap-select

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jazzhands/.zshrc'

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
# End of lines added by compinstall

# Colorize files
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

source $ZSH_DOT_DIR/activate-plugins.sh

eval "$(starship init zsh)"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/jazzhands/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/jazzhands/.micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

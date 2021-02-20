# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# To display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# shellcheck shell=sh
# Lines configured by zsh-newuser-install
setopt appendhistory autocd beep notify
unsetopt extendedglob nomatch
bindkey -v
bindkey '^R' history-incremental-search-backward

# Manage history well
HISTFILE=~/.cache/zsh-histfile
HISTSIZE=10000
SAVEHIST=10000

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

#ENABLE_CORRECTION="true"
#setopt correct_all

autoload -Uz compinit
compinit -d ~/.cache/zcompdump

#autoload -Uz compinit && compinit -d ~/.cache/zcompdump
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

if [ -x "$(command -v thefuck)" ]; then
    eval $(thefuck --alias)
fi

fpath=( "$HOME/.config/zfunctions" $fpath )
fpath=(/usr/local/share/zsh-completions $fpath)

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

if [ -f ~/.config/spaceship-prompt ]; then
    . ~/.config/spaceship-prompt
fi

if [ -f "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -f "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi 

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# This should be the last line of the file
# For local changes
# Don't make edits below this
[ -f ".zshrc.local" ] && source ".zshrc.local"

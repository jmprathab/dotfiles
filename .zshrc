# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"
DISABLE_UPDATE_PROMPT=true
# ENABLE_CORRECTION="true" # Sometimes this is annoying.

# Lines configured by zsh-newuser-install
setopt appendhistory autocd notify
unsetopt extendedglob nomatch

# Manage history well
HISTFILE=~/.cache/zsh-histfile
HISTSIZE=10000
SAVEHIST=10000

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

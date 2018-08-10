# For autocompletion with an arrow-key driven interface, add the following to
zstyle ':completion:*' menu select 

# The following lines were added by compinstall
zstyle :compinstall filename '/home/stickee/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

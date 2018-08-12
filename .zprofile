#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

export EDITOR="vim"
export BROWSER="firefox"
export TERMINAL="urxvt"

# Start x-server
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
##################################################

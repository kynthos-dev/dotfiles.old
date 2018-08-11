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

# Start ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi

if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi
##################################################

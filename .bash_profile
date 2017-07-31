# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Load bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc   # --> Read /etc/bashrc, if present.
fi

alias ls='ls --human-readable --color=always'
alias less='less -r'
alias mkdir='mkdir --parents'

# Prompt
PS1="\u@\h \w > "

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


# Print machine info
POST_LOGIN="$(~/.bin/post_login.pl)"
echo -e "$POST_LOGIN"

if [ -f ~/.profile ]; then
    . ~/.profile
fi

#-------------------------------------------------------------
# Greeting, motd etc. ...
#-------------------------------------------------------------


# export PS1="\[${Green}]\h$\[{NC}]:\[${Blue}]\W\[${Yellow}]\$(parse_git_branch)\[${NC}]\\$ "
# export PS1="\[${Green}\]\h$\[{NC}\]:\[${Blue}\]\W\[${Yellow}\]\$(parse_git_branch)\[${NC}\]\\$ "
export PS1="\[${Green}\]"
# :\[${Blue}]\W\[${Yellow}]\$(parse_git_branch)\[${NC}]\\$ "

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

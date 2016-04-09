# .bashrc

# User specific aliases and functions

#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
alias ls='ls -F --color=auto'
alias ll='ls -al'
alias vi='vim'
alias wget='wget --no-check-certificate'

PS1='\[\033[32m\][\u@\h \W]\$\[\033[0m\] '

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

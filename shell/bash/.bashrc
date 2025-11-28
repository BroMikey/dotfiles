# alias
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a'
alias lla='ls -lah'
alias grep='grep --color=auto'


# function
cd(){
    builtin cd "$@" && ls --color=auto
}


# export
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


#export PS1="\u@\h:\w $ "
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

if brew list | grep coreutils > /dev/null ; then
    PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
    alias ls='ls -F --show-control-chars --color=auto'
    eval `gdircolors -b $HOME/.dir_colors`
fi
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias ll='ls -al'
alias lt='ls -lrt'
alias la='ls -la'

#export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/Cellar:$PATH
export CSCOPE_DB=~/cscope

source ~/.git-completion.bash

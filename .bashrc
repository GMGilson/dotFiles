#Grant bashrc begin;
#bash startup commands 

#Adding directories to PATH
export PATH="$PATH:~/dotfiles/scripts"

#bring vim as default editor
export EDITOR=vim


#enables core dumps on this system
ulimit -c unlimited

#bash aliases and functions
alias clip='xclip -sel clip'
alias cmakeinit='touch CMakeLists.txt'
alias grep='grep --color'

#Grant bashrc end;


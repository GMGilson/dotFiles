#Grant bashrc begin;
#bash startup commands 

#Adding directories to PATH
export PATH="$PATH:$HOME/dotfiles/scripts"

#bring vim as default editor
export EDITOR=vim


#enables core dumps on this system
ulimit -c unlimited

#bash aliases and functions
alias clip='xclip -sel clip'
alias cmakeinit='touch CMakeLists.txt'
alias grep='grep --color'
alias top='ytop'
#Grant bashrc end;

#If rust is install on the system load cargo
source $HOME/.cargo/env

# Remap capsLock to ctrl
setxkbmap -option ctrl:nocaps

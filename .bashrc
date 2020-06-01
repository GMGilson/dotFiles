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
if [ -d ~/.cargo/bin ]; then
	source $HOME/.cargo/env
fi

# If go is installed on the system export go tools
if [ -d /usr/local/go/bin ]
then
	export PATH=$PATH:/usr/local/go/bin
fi
# Remap capsLock to ctrl
setxkbmap -option ctrl:nocaps

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

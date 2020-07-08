#Grant bashrc begin;
#bash startup commands 

#Adding directories to PATH
export PATH="$PATH:$HOME/dotfiles/scripts"

#bring vim as default editor
export EDITOR=vim


#enables core dumps on this system
ulimit -c unlimited

#bash aliases and functions
if command -v xclip > /dev/null; then
	alias clip='xclip -sel clip'
fi

alias grep='egrep --color'

if command -v ytop > /dev/null; then
	alias top='ytop'
fi

if command -v gcalcli > /dev/null; then
	alias gcal='gcalcli calw'
fi

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
if command -v setxkbmap >  /dev/null; then
	setxkbmap -option ctrl:nocaps
fi

# If Andriod Studio is exists export the ide
if [ -d $HOME/.android-studio/bin ]; then
	export PATH=$PATH:~/.android-studio/bin
fi

if [[ $TILIX_ID ]]; then
	source /etc/profile.d/vte.sh
fi

# Install Ruby Gems to ~/gems
if  command -v gem > /dev/null ; then
	export GEM_HOME="~/gems"
	export PATH=$PATH:~/gems/bin
fi

if [[ -d "$HOME/.nvm" ]]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Install Ruby Gems to ~/gems
if [[ -d "$HOME/gems" ]]; then
	export GEM_HOME="$HOME/gems"
	export PATH="$HOME/gems/bin:$PATH"
fi

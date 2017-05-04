# .bash_profile
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK

ssh-add ~/.ssh/id_rsa ~/.ssh/id_ed25519

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/var/www/dev/android-sdk:/var/www/dev/android-sdk/tools:/var/www/dev/android-sdk/platform-tools

export PATH
export EDITOR=vim
#export $(gnome-keyring-daemon -s)
export JAVA_HOME="/usr/java/latest"
[[ -s /home/ahawthorne/.nvm/nvm.sh ]] && . /home/ahawthorne/.nvm/nvm.sh # This loads NVM
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

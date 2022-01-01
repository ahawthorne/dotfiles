# .bash_profile
# eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
# export SSH_AUTH_SOCK

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

[[ -z $(ps -ef | grep dockerd | grep -v grep) ]] && sudo service docker start

# ssh-add ~/.ssh/id_rsa ~/.ssh/id_ed25519

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/var/www/dev/android-sdk:/var/www/dev/android-sdk/tools:/var/www/dev/android-sdk/platform-tools

export PATH
export EDITOR=vim
# export $(gnome-keyring-daemon -s)
export JAVA_HOME="/usr/java/latest"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


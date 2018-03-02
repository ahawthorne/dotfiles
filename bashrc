# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# bash completion
if [ -d ~/bash_completion.d ]; then
  . ~/bash_completion.d/*
fi

export CHROME_DEVEL_SANDBOX=/usr/local/sbin/chrome-devel-sandbox

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

export BUNGLER="rails rake rspec cucumber knife pickler kitchen berks spring guard"
[[ -s "$HOME/.bungler/bungler" ]] && . $HOME/.bungler/bungler

# Set config variables first
export GIT_PROMPT_ONLY_IN_REPO=1
export GIT_SHOW_UNTRACKED_FILES=no

GIT_PROMPT_THEME=Custom
# as last entry source the gitprompt script
source ~/bash-git-prompt/gitprompt.sh
#source ~/bin/ssh-agent-setup

# The next line updates PATH for the Google Cloud SDK.
source '/home/ahawthorne/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/home/ahawthorne/google-cloud-sdk/completion.bash.inc'
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "/home/ahawthorne/.acme.sh/acme.sh.env"

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

# Set config variables first
export GIT_PROMPT_ONLY_IN_REPO=1
export GIT_SHOW_UNTRACKED_FILES=no

GIT_PROMPT_THEME=Custom
# as last entry source the gitprompt script
# source ~/bin/ssh-agent-setup

# The next line updates PATH for the Google Cloud SDK.
source '/home/ahawthorne/google-cloud-sdk/path.bash.inc'
# The next line enables shell command completion for gcloud.
source '/home/ahawthorne/google-cloud-sdk/completion.bash.inc'
source <(kubectl completion bash)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=".git/safe/../../bin:$PATH"
export CLOUDSDK_PYTHON=/usr/bin/python

# bits for docker
export UID=$(id -u) > /dev/null 2>&1
export GID=$(id -g)
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

# save command history across terminals
export PROMPT_COMMAND='history -a; history -r'

# git prompt
source ~/.bash-git-prompt/gitprompt.sh
eval "$(direnv hook bash)"


PATH="/home/ahawthorne/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ahawthorne/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ahawthorne/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ahawthorne/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ahawthorne/perl5"; export PERL_MM_OPT;
source <(velero completion bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

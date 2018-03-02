#!/bin/bash
alias whatismyip='curl ip.appspot.com'
alias ll='ls -la'
#alias gpw="apg -n20 -m20 -MNCLS -p7 -a1 -E \\\/\\\`\>\<\\\"\'\\\\ -b ~/bloomfile -r /usr/share/dict/words"
alias gpw="apg -n20 -m20 -MNCLS -p7 -a1 -E \\\/\\\`\>\<\\\"\'\\\\ -r /usr/share/dict/words"

alias rspecd="rspec --format documentation"
alias cucumberd="cucumber --format pretty"

alias pass="openssl rand -base64 27 | cut -c1-27"

alias doco="docker-compose"

function apg_bloom() {
  apgbfm -d /usr/share/dict/words  -f ~/bloomfile
  apgbfm -i ~/bloomfile
  apgbfm -A /usr/share/dict/words  -f ~/bloomfile
  apgbfm -i ~/bloomfile
}

source <(kubectl completion bash)

function g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}

PS1=": ${debian_chroot:+($debian_chroot)}\w;\[$(tput sgr0)\] "

shopt -s no_empty_cmd_completion

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim
export GOPATH=$HOME/Documents/workspace/go
export HISTCONTROL=ignoredups:ignorespace
export HISTFILESIZE=500
export HISTSIZE=500
export KUBECONFIG=$HOME/.kube/config.prod:$HOME/.kube/config
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PAGER=less
export PATH="\
$GOPATH/bin:\
$HOME/Library/Python/2.7/bin:\
/snap/bin:\
/usr/local/sbin:\
$PATH"

alias cp='cp -v'
alias grep='grep --color=auto'
alias less='less -FSRXc'
alias ll='ls -FGlAhp'
alias mkdir='mkdir -v'
alias mv='mv -v'
alias rm='rm -v'

[[ -e ~/.private_cfg ]] && . ~/.private_cfg


export ZSH=$HOME/.ohmyzsh

CASE_SENSITIVE="false"
DISABLE_AUTO_TITLE="true"
ZSH_DISABLE_COMPFIX="true"
ZSH_THEME=""

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

plugins=(
    docker
    docker-compose
    helm
    kubectl
    zsh_reload
)
source $ZSH/oh-my-zsh.sh
PROMPT=': %~%(?.%(!.#.;).%F{6}%B;%b%f) '
unsetopt share_history

# User configuration
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
/usr/local/bin:\
$PATH"

alias cp='cp -v'
alias grep='grep --color=auto'
alias less='less -FSRXc'
alias ll='ls -FGlAhp'
alias mkdir='mkdir -v'
alias mv='mv -v'
alias rm='rm -v'

bindkey -e
# Explicitly enable reverse search
bindkey '^R' history-incremental-search-backward

# https://hellricer.github.io/2019/05/21/ctrl-arrows-in-terminal.html
# and use xterm keys in Iterm2 + tmux
# ctrl+arrows
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word

# ctrl+delete
bindkey "\e[3;5~" kill-word
bindkey "\e[3^" kill-word

# ctrl+backspace
bindkey '^H' backward-kill-word

# ctrl+shift+delete
bindkey "\e[3;6~" kill-line
bindkey "\e[3@" kill-line

# https://wiki.archlinux.org/index.php/Home_and_End_keys_not_working
# home (mac: fn+left-arrow)
bindkey "\e[1~" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\eOH" beginning-of-line
bindkey "\e[H" beginning-of-line

# end (mac: fn+right-arrow)
bindkey "\e[F" end-of-line
bindkey "\eOF" end-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[4~" end-of-line

[[ -e ~/.private_cfg ]] && emulate sh -c 'source ~/.private_cfg'


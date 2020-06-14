export ZSH="/home/sennahlessert/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

alias devMM="sh ~/Code/scripts/nmm.sh"
alias devAOCL="sh ~/Code/tmuxProfiles/aocloud.sh"
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
export EDITOR=vim
export AOCLHOME=~/Code/next-farming/
export NMMHOME=~/Code/machine-management/
export FZF_DEFAULT_COMMAND='fd --type f'

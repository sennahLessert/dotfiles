export ZSH="/home/sennah/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias devMM="sh ~/Code/tmuxProfiles/machinemanagement.sh"
alias devAOCL="sh ~/Code/tmuxProfiles/aocloud.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
export EDITOR=vim
export AOCLHOME=~/Code/next-farming/
export NMMHOME=~/Code/machine-management/

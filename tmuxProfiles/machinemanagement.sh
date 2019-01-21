#!/bin/sh
MACHINEMANAGEMENT_DIR=~/Code/machine-management
SESSIONNAME="mm"
cd $MACHINEMANAGEMENT_DIR

#start tmux 
tmux new-session -d -s $SESSIONNAME -n "nvim"

tmux send-keys "nvim" C-m

tmux new-window -n "db"
tmux send-keys "pgcli -U postgres machinemanagement" C-m

tmux new-window -n "git"

tmux new-window -n "grunt-serve"
tmux send-keys "cd track-map-lib" C-m
tmux send-keys "gulp webserver" C-m

tmux select-window -t "nvim"
eclipse -data ~/Code/machine-management &>/dev/null & disown

#!/bin/sh
AOCLOUD_DIR=~/Code/next-farming
SESSIONNAME="aocloud"
cd $AOCLOUD_DIR

#start tmux 
tmux new-session -d -s $SESSIONNAME -n "nvim"

tmux send-keys "nvim" C-m
tmux new-window -n "db"
tmux send-keys "pgcli -U postgres aocloud" C-m
tmux new-window -n "git"
tmux new-window -n "grunt"
tmux select-window -t "nvim"
eclipse -data ~/Code/next-farming/ &>/dev/null & disown

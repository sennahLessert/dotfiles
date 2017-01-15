#!/bin/bash

#start mopidy & ncmpcpp
tmux new-session -d -s music
tmux split-window -h -t music
tmux select-pane -t 0
tmux send-keys "mopidy" C-m
tmux select-pane -t 1
tmux send-keys "ncmpcpp" C-m

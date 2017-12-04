#!/bin/bash
SESSION="sysmon"

tmux -2 new-session -d -s $SESSION

tmux new-window -t $SESSION:1 -n 'monitor'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "gtop" C-m
tmux select-pane -t 1
tmux send-keys "htop" C-m
tmux resize-pane -L 15
tmux split-window -v
tmux send-keys 'slurm -i enp5s0' C-m

# Set default window
tmux select-window -t $SESSION:1
tmux select-pane -t 2

# Attach to session
tmux -2 attach-session -t $SESSION

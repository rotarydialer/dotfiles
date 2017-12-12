#!/bin/bash
SESSION="agt"

tmux -2 new-session -d -s $SESSION

tmux new-window -t $SESSION:1 -n 'ag-trk'
tmux split-window -v
tmux resize-pane -U 25
tmux select-pane -t 0
tmux send-keys "~/mongostart.sh" C-m
tmux select-pane -t 1
tmux send-keys "sleep 5 && ~/agt.sh" C-m

# Set default window
tmux select-window -t $SESSION:1
tmux select-pane -t 0

tmux select-pane -P 'bg=blue'

# Attach to session
tmux -2 attach-session -t $SESSION

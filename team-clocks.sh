#!/bin/bash
SESSION="team"

tmux -2 new-session -d -s $SESSION

# Clocks row
tmux new-window -a -t $SESSION -n 'team'
tmux split-window -v
tmux select-pane -t 0
tmux resize-pane -U 7
tmux send-keys "TZ='Europe/Rome' tty-clock -t -c -C6 -f %Z%n%Y-%m-%d" C-m
tmux split-window -h
tmux resize-pane -L 30
tmux select-pane -t 1
tmux send-keys "TZ='Europe/Dublin' tty-clock -t -c -C2 -f %Z%n%Y-%m-%d -b" C-m
tmux split-window -h
tmux send-keys "TZ='America/New_York' tty-clock -t -c -C4 -f %Z%n%Y-%m-%d -b" C-m

# Weather row
tmux select-pane -t 3
tmux split-window -v
tmux select-pane -t 3
tmux split-window -h
tmux resize-pane -L 30
tmux split-window -h

tmux select-pane -t 3 
tmux send-keys "clear;curl http://wttr.in/Rome\?0pq ; echo -e \"\n\n\"" C-m
tmux select-pane -t 4 
tmux send-keys "clear;curl http://wttr.in/Dublin\?0pq ; echo -e \"\n\n\"" C-m
tmux select-pane -t 5 
tmux send-keys "clear;curl http://wttr.in/New_York\?0pq ; echo -e \"\n\n\"" C-m

# Set default window
tmux select-pane -t 6

# Attach to session
tmux -2 attach-session -t $SESSION
# set-option -g default-command "reattach-to-user-namespace -l bash"

set -g default-command "login-shell"

bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

#bind C-c run "tmux save-buffer - | reattach-to-user-namespace pbcopy"
#bind C-v run "tmux set-buffer \"$(reattach-to-user-namespace pbpaste)\"; tmux paste-buffer"

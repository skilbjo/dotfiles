## Settings
#set -g default-command "login-shell"
set-option -g default-shell $SHELL
#set-option -g default-command "/bin/bash --login"

# tmux 2.5
#bind -T copy-mode-vi 'y' send -X copy-pipe "reattach-to-user-namespace pbcopy"
bind-key -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

### tmux 2.3
#bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

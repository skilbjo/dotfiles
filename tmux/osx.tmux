## Settings
set-option -g default-shell /usr/local/bin/bash
# set-option -g default-command "reattach-to-user-namespace -l $SHELL"
# set-option -g default-shell /usr/local/bin/bash || set-option -g default-shell /opt/homebrew/bin/bash
#set -g default-command "login-shell" || #set-option -g default-shell $SHELL

# tmux 2.5
#bind -T copy-mode-vi 'y' send -X copy-pipe "reattach-to-user-namespace pbcopy"
bind-key -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

### tmux 2.3
#bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

## recommended in vim-gitgutter, but should work without this, so consider removing
#set -g focus-events on

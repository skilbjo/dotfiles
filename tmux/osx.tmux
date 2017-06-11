## Settings
set -g default-command "login-shell"

## Keybindings
bind-key -n ¡ send-prefix # Nested session alt+1 prefix*/
#bind-key -n ~ send-prefix # Nested session alt+1 prefix

### tmux 2.3
bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

# tmux 2.4
#bind -T copy-mode-vi 'y' send -X copy-pipe "reattach-to-user-namespace pbcopy"
#bind-key -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

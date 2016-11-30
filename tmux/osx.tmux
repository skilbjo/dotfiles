## Settings
set -g default-command "login-shell"

## Keybindings
bind-key -n ¡ send-prefix # Nested session alt+1 prefix*/
#bind-key -n ~ send-prefix # Nested session alt+1 prefix

bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"


set -g default-command "login-shell"

bind-key -n ¡ send-prefix # Nested session alt+1 prefix

bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

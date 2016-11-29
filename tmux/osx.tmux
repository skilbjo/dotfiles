
set -g default-command "login-shell"

bind -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

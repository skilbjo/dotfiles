# -- visual customization --------------------------------------------------

## Status pane, similar to vim papertheme
set -g status-position top
set -g status-bg colour24
set -g status-fg colour231


### Other nice colors
# set -g status-bg colour110
# set -g status-bg colour67
# set -g status-bg colour75


## Command Line, enter with ; or :
set -g message-bg colour67
set -g message-fg colour255
set -g message-attr bright
set -g message-command-bg colour75
set -g message-command-fg blue

## Panes
set -g pane-border-fg black
set -g pane-active-border-fg colour166

## Status line
### Left
set -g status-left-length 30
set -g status-left "#[fg=colour231,bold][#H.#S ● #I.#P]  "

## Center
### Active tab
setw -g window-status-current-bg colour166
setw -g window-status-current-fg colour15
setw -g window-status-current-attr bold
setw -g window-status-current-format '▶ #I #W '

### Nonactive tab
setw -g window-status-attr bold
setw -g window-status-format '#I #W#F'
#setw -g window-status-fg colour138
#setw -g window-status-bg colour235
#setw -g window-status-attr none
#setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-attr bold
#setw -g window-status-bell-fg colour255
#setw -g window-status-bell-bg colour1

### Right
set -g status-interval 5
set -g status-right-length 120
set -g status-right "#[fg=colour255,bold] PST ❯❯ %I:%M.%p ● %F UTC ❯❯ #(date -u +'%%T ● %%F') #[bg=red]#{s/root//:client_key_table}"
#set -g status-right "#[fg=colour255,bold] UTC ❯❯ #(date -u +'%%T ● %%F') PST ❯❯ %I:%M.%p ● %F #[bg=red]#{s/root//:client_key_table}"
#set -g status-right "#[bg=red]#{s/root//:client_key_table}"
#set -g status-right "#[fg=colour255,bold][%I:%M.%p - %a | %F]"
#set -g status-right "#[fg=colour255,bold][ %a %I:%M.%p ● #[bg=colour67]%F#[bg=colour24] ]"
#set -g status-right '#[fg=colour233,bg=colour241,bold] %d/%m #[fg=colour233,bg=colour245,bold] %H:%M:%S '

## Terminal Titles
set -g set-titles-string '#h ❐ #S ● #I #W'
set -g set-titles on
#set -g set-titles-string '#H:#S.#I.#P #W #T'

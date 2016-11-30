# -- keybindings ------------------------------------------------

## Prefix
unbind C-b
set -g prefix `
bind-key ` send-prefix    # Backtick as prefix

## Command mode toggle.. too damn lazy to hit <shift>
#bind-key c new-window -n 'bash'
unbind-key \;
bind-key \; command-prompt

## Tabbing through windows
bind ` select-pane -t :.+                 # quick pane cycling
bind -n ˜ select-pane -t :.+                 # quick pane cycling
bind | split-window -h -c "#{pane_current_path}"    # bind % split-window
bind _ split-window -v -c "#{pane_current_path}"    # bind '"' split-window -h
bind = select-window -t :+
bind -n — select-window -t :-
bind -n ± select-window -t :+

## Logs / Generic
bind P pipe-pane -o "cat >>~#W.log" \; display  "Toggled logging to ~/#W.log"

## Unbinds
unbind %
unbind '"'

## Reload
bind % source-file ~/.tmux.conf \; display "Sourced tmux.conf"

## Rename windows / sessions
bind R command-prompt 'rename-session %%'
bind r command-prompt 'rename-window %%'

## Close
bind x kill-pane #P
bind X kill-window



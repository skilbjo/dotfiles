# -- keybindings ------------------------------------------------

## Prefix
unbind C-b
set -g prefix `
bind-key ` send-prefix    # Backtick as prefix
bind-key -n ¡ send-prefix # alt+1 for remote sessions

## Command mode toggle.. too damn lazy to hit <shift>
unbind-key \;
bind-key \; command-prompt

## Tabbing through windows
bind ` select-pane -t :.+                 # quick pane cycling

## For Linux (on OS X), prefix is: alt+1 for nested sessions
bind -n ˜ select-pane -t :.+              # quick pane cycling
bind -n Â select-pane -t :.+              # quick pane cycling on remote
bind | split-window -h -c "#{pane_current_path}"    # bind % split-window
bind _ split-window -v -c "#{pane_current_path}"    # bind '"' split-window -h
bind = select-window -t :+
bind -n — select-window -t :-
bind -n ± select-window -t :+

## Unbinds
unbind %
unbind '"'

## Reload
bind % source-file ~/.tmux.conf \; display "Sourced tmux.conf"

## Rename windows / sessions
bind R command-prompt 'rename-session %%'
bind r command-prompt 'rename-window %%'

## Close
bind x kill-pane
bind X kill-window

#### Tmux 2.5
## Vim Keybindings
  unbind -n 1
  unbind -n 2
  unbind -n 9
  setw -g mode-keys vi
  bind-key -Tcopy-mode-vi 'v' send -X begin-selection
  bind-key -Tcopy-mode-vi 'C-v' send -X begin-selection \; send -X rectangle-toggle
  bind-key -Tcopy-mode-vi 'V' send -X select-line
  bind-key -Tcopy-mode-vi 'y' send -X copy-selection
  bind-key -T copy-mode-vi 'r' send -X rectangle-toggle
  bind-key -T copy-mode-vi Escape send -X cancel
## Vim Nativation
  bind-key -Tcopy-mode-vi '1' send -X end-of-line
  bind-key -Tcopy-mode-vi '2' send -X back-to-indentation
  bind-key -Tcopy-mode-vi '9' send -X back-to-indentation
## Finding stuff again
  bind-key -Tcopy-mode-vi '\' send -X jump-again
  bind-key -Tcopy-mode-vi '|' send -X jump-reverse
## Stay in copy mode on drag end
  unbind-key -Tcopy-mode-vi MouseDragEnd1Pane

#### Tmux 2.3
## Vim Keybindings
  #unbind p
  #unbind P
  #unbind 9
  #setw -g mode-keys vi
  #bind p paste-buffer
  #bind-key -t vi-copy 'v' begin-selection
  #bind-key -t vi-copy 'y' copy-selection

### Vim Nativation
  #bind-key -t vi-copy '1' end-of-line
  #bind-key -t vi-copy '2' back-to-indentation
  #bind-key -t vi-copy '9' back-to-indentation

### Finding stuff again
  #bind-key -t vi-copy '\' jump-again

## Don't bother with this run-shell shit, it doesn't work
#run-shell "tmux setenv -g TMUX_VERSION $(tmux -V | cut -c 6-)"
#if-shell -b '[ "$(echo "$TMUX_VERSION >= 2.4" | bc)" = 1 ]' \
  #"setw -g mode-keys vi; \
  #unbind -Tprefix 1; \
  #unbind -Tprefix 2; \
  #unbind -Tprefix 9; \
  #unbind -Tcopy-mode 1; \
  #unbind -Tcopy-mode 2; \
  #unbind -Tcopy-mode 9; \
  #unbind -Tcopy-mode-vi 'v'; \
  #bind-key -Tcopy-mode-vi 'v' send -X begin-selection; \
  #bind-key -Tcopy-mode-vi 'V' send -X select-line; \
  #bind-key -t vi-copy y copy-pipe 'pbcopy'; \
  #bind-key -Tcopy-mode-vi 'r' send -X rectangle-toggle; \
  #bind-key -Tcopy-mode-vi Escape send -X cancel; \
  #bind-key -Tcopy-mode-vi '1' send -X end-of-line; \
  #bind-key -Tcopy-mode-vi '2' send -X end-of-line; \
  #bind-key -Tcopy-mode-vi '9' send -X back-to-indentation; \
  #bind-key -Tcopy-mode-vi '\' send -X jump-again;"

#if-shell -b '[ "$(echo "$TMUX_VERSION < 2.4" | bc)" = 1 ]' \
 #"unbind p; \
  #unbind P; \
  #unbind 9; \
  #setw -g mode-keys vi; \
  #bind p paste-buffer; \
  #bind-key -t vi-copy 'v' begin-selection; \
  #bind-key -t vi-copy 'y' copy-selection; \
  #bind-key -t vi-copy '1' end-of-line; \
  #bind-key -t vi-copy '2' back-to-indentation; \
  #bind-key -t vi-copy '9' back-to-indentation; \
  #bind-key -t vi-copy '\' jump-again;"

#Function                     vi
#Append selection             A
#Back to indentation          ^
#Bottom of history            G
#Clear selection              Escape
#Copy selection               Enter
#Copy to named buffer         "
#Cursor down                  j
#Cursor left                  h
#Cursor right                 l
#Cursor to bottom line        L
#Cursor to middle line        M
#Cursor to top line           H
#Cursor up                    k
#Delete entire line           d
#Delete/Copy to end of line   D
#End of line                  $
#Go to line                   :
#Half page down               C-d
#Half page up                 C-u
#Jump again                   ;
#Jump again in reverse        ,
#Jump backward                F
#Jump forward                 f
#Jump to backward             T
#Jump to forward              t
#Next page                    C-f
#Next paragraph               }
#Next space                   W
#Next space, end of word      E
#Next word                    w
#Next word end                e
#Other end of selection       o
#Paste buffer                 p
#Previous page                C-b
#Previous paragraph           {
#Previous space               B
#Previous word                b
#Quit mode                    q
#Rectangle toggle             v
#Scroll down                  C-Down or C-e
#Scroll up                    C-Up or C-y
#Search again                 n
#Search again in reverse      N
#Search backward              ?
#Search forward               /
#Select line                  V
#Start of line                0
#Start selection              Space
#Top of history               g

#bind-key -t vi-copy               C-b page-up
#bind-key -t vi-copy               C-c cancel
#bind-key -t vi-copy               C-d halfpage-down
#bind-key -t vi-copy               C-e scroll-down
#bind-key -t vi-copy               C-f page-down
#bind-key -t vi-copy               C-h cursor-left
#bind-key -t vi-copy               C-j copy-selection
#bind-key -t vi-copy             Enter copy-selection
#bind-key -t vi-copy               C-u halfpage-up
#bind-key -t vi-copy               C-y scroll-up
#bind-key -t vi-copy            Escape clear-selection
#bind-key -t vi-copy             Space begin-selection
#bind-key -t vi-copy                 " start-named-buffer
#bind-key -t vi-copy                 $ end-of-line
#bind-key -t vi-copy                 , jump-reverse
#bind-key -t vi-copy                 / search-forward
#bind-key -t vi-copy                 0 start-of-line
#bind-key -t vi-copy                 1 start-number-prefix
#bind-key -t vi-copy                 2 start-number-prefix
#bind-key -t vi-copy                 3 start-number-prefix
#bind-key -t vi-copy                 4 start-number-prefix
#bind-key -t vi-copy                 5 start-number-prefix
#bind-key -t vi-copy                 6 start-number-prefix
#bind-key -t vi-copy                 7 start-number-prefix
#bind-key -t vi-copy                 8 start-number-prefix
#bind-key -t vi-copy                 9 start-number-prefix
#bind-key -t vi-copy                 : goto-line
#bind-key -t vi-copy                 ; jump-again
#bind-key -t vi-copy                 ? search-backward
#bind-key -t vi-copy                 A append-selection
#bind-key -t vi-copy                 B previous-space
#bind-key -t vi-copy                 D copy-end-of-line
#bind-key -t vi-copy                 E next-space-end
#bind-key -t vi-copy                 F jump-backward
#bind-key -t vi-copy                 G history-bottom
#bind-key -t vi-copy                 H top-line
#bind-key -t vi-copy                 J scroll-down
#bind-key -t vi-copy                 K scroll-up
#bind-key -t vi-copy                 L bottom-line
#bind-key -t vi-copy                 M middle-line
#bind-key -t vi-copy                 N search-reverse
#bind-key -t vi-copy                 T jump-to-backward
#bind-key -t vi-copy                 V select-line
#bind-key -t vi-copy                 W next-space
#bind-key -t vi-copy                 ^ back-to-indentation
#bind-key -t vi-copy                 b previous-word
#bind-key -t vi-copy                 e next-word-end
#bind-key -t vi-copy                 f jump-forward
#bind-key -t vi-copy                 g history-top
#bind-key -t vi-copy                 h cursor-left
#bind-key -t vi-copy                 j cursor-down
#bind-key -t vi-copy                 k cursor-up
#bind-key -t vi-copy                 l cursor-right
#bind-key -t vi-copy                 n search-again
#bind-key -t vi-copy                 o other-end
#bind-key -t vi-copy                 q cancel
#bind-key -t vi-copy                 t jump-to-forward
#bind-key -t vi-copy                 v begin-selection
#bind-key -t vi-copy                 w next-word
#bind-key -t vi-copy                 y copy-pipe "reattach-to-user-namespace pbcopy"
#bind-key -t vi-copy                 { previous-paragraph
#bind-key -t vi-copy                 } next-paragraph
#bind-key -t vi-copy    MouseDrag1Pane begin-selection
#bind-key -t vi-copy MouseDragEnd1Pane copy-selection
#bind-key -t vi-copy       WheelUpPane scroll-up
#bind-key -t vi-copy     WheelDownPane scroll-down
#bind-key -t vi-copy            BSpace cursor-left
#bind-key -t vi-copy             NPage page-down
#bind-key -t vi-copy             PPage page-up
#bind-key -t vi-copy                Up cursor-up
#bind-key -t vi-copy              Down cursor-down
#bind-key -t vi-copy              Left cursor-left
#bind-key -t vi-copy             Right cursor-right
#bind-key -t vi-copy              C-Up scroll-up
#bind-key -t vi-copy            C-Down scroll-down


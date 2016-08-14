# -- general ----------------------------------------------------

## Generic
set -g default-terminal "xterm-256color" 	# colors!
setw -g xterm-keys on 										# everything xterm
set -s escape-time 0                      # fastest command sequences
set -sg repeat-time 600                   # increase repeat timeout
set -s quiet on                           # disable various messages
set -g visual-activity on
setw -g monitor-activity on
setw -g automatic-rename on 							# rename window to reflect current program
set -g renumber-windows on

## Window numbering at 0 (switch w/ prefix+0-9; create w/ prefix+c)
set -g base-index 1
set -g pane-base-index 1

## Copy Mode
setw -g mode-keys vi

## Enable mouse
set -g mouse on
bind m run "\
		tmux show-options -g | grep -q "mouse.*on"; \
		if [ \$? = 0 ]; \
		then  \
				toggle=off;  \
		else  \
				toggle=on;  \
		fi;  \
		tmux display-message \"mouse is now: \$toggle\";  \
		tmux set-option -w mouse \$toggle; \
		tmux set-option -g mouse \$toggle"



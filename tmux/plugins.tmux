# See status
set -g status-left '#{prefix_highlight}'

# -- plugings --------------
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

# -- plugings-settings -----
set -g @resurrect-capture-pane-contents 'on'
set -g @resurrect-strategy-vim 'session'

# Set the save interval to be every 5 minutes
set -g @continuum-save-interval '5'
# Load tmux at boot
#set -g @continuum-boot 'on'
# When starting tmux for the first time, it will restore previously-saved sessions
set -g @continuum-restore 'on'

# -- plugings --------------
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

set -g @resurrect-capture-pane-contents 'on'

set -g @continuum-restore 'on'

run '~/.tmux/plugins/tpm/tpm'



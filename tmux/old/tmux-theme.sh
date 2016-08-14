# -- display -------------------------------------------------------------------

set -g base-index 1         # start windows numbering at 1
setw -g pane-base-index 1   # make pane numbering consistent with windows

setw -g automatic-rename on # rename window to reflect current program
# renumber windows when a window is closed
set -g renumber-windows on

set -g set-titles on                        # set terminal title
set -g set-titles-string '#h ❐ #S ● #I #W'

set -g display-panes-time 800 # slightly longer pane indicators display time
set -g display-time 1000      # slightly longer status messages display time

set -g status-interval 10     # redraw status line every 10 seconds

# 24 hour clock
setw -g clock-mode-style 24

# clear both screen and history
bind -n C-l send-keys C-l \; run 'tmux clear-history'

# activity
set -g monitor-activity on
set -g visual-activity off

# (‑●‑●)> released under the WTFPL v2 license, by Gregory Pakosz (@gpakosz)

# use the powerline patched font variant of the theme, possible values are:
#   - default
#   - powerline
tmux_conf_theme=default
#tmux_conf_theme=powerline

# display an indicator in the status line when the prefix key has been pressed,
# possible values are:
#   - enabled
#   - disabled
tmux_conf_theme_prefix=disabled
#tmux_conf_theme_prefix=enabled

# display the battery information in the status line, possible values are:
#   - enabled
#   - disabled
tmux_conf_theme_battery=enabled
#tmux_conf_theme_battery=disabled

# style to use for the battery status, possible values are:
#   - bar
#   - percentage
tmux_conf_battery_style=bar
#tmux_conf_battery_style=percentage

# symbols to use for battery status, possible values are:
#   - block
#   - heart
tmux_conf_battery_symbol=block
#tmux_conf_battery_symbol=heart

# number of symbols to use for battery status
tmux_conf_battery_symbol_count=auto
#tmux_conf_battery_symbol_count=5

# palette used for the battery status, possible values are:
#   - 'colour_full_fg,colour_empty_fg,colour_bg'
#   - heat
#   - gradient
tmux_conf_battery_palette='#d70000,#e4e4e4,#000000'
#tmux_conf_battery_palette=colour160,colour254,colour16
#tmux_conf_battery_palette=heat
#tmux_conf_battery_palette=gradient

# display the battery status: charging (U+26A1) / discharging (U+1F50B)
tmux_conf_battery_status=enabled
#tmux_conf_battery_status=disabled

# or alternatively use an external tool, e.g. https://github.com/Goles/Battery
#tmux_conf_battery='#(battery -t) '

# display the time in the status line, possible values are:
#   - enabled
#   - disabled
tmux_conf_theme_time=enabled
#tmux_conf_theme_time=disabled

# display the date in the status line, possible values are:
#   - enabled
#   - disabled
tmux_conf_theme_date=enabled
#tmux_conf_theme_date=disabled

# display the username in the status line, possible values are:
#   - enabled
#   - disabled
#   - ssh
tmux_conf_theme_username=enabled
#tmux_conf_theme_username=disabled
#tmux_conf_theme_username=ssh

# display the hostname in the status line, possible values are:
#   - enabled
#   - disabled
#   - ssh
tmux_conf_theme_hostname=enabled
#tmux_conf_theme_hostname=disabled
#tmux_conf_theme_hostname=ssh

# highlight focuse pane, possible values are:
#   - enabled
#   - disabled
tmux_conf_theme_highlight_focused_pane=disabled
#tmux_conf_theme_highlight_focused_pane=enabled

# should new windows retain current path, possible values are:
#   - true
#   - false
tmux_conf_new_windows_retain_current_path=false
#tmux_conf_new_windows_retain_current_path=true

# should new panes reatin current path, possible values are:
#   - true
#   - false
tmux_conf_new_panes_retain_current_path=true
#tmux_conf_new_panes_retain_current_path=false

# prompt for session name when creating a new session, possible values are:
#   - true
#   - false
tmux_conf_new_session_prompt=false
#tmux_conf_new_session_prompt=true

# tmux: Configuration and Scripts

Peter's `tmux` configuration file and helper scripts.

## Scripts

### Ensuring that Each Terminal Starts `tmux`

To ensure that every terminal I run is using `tmux`, my key binding
for starting a terminal uses the `bin/tmux-new-terminal` script as its
shell.  For example, with `urxvt`:

    $ urxvtc -e tmux-new-terminal

The `tmux-new-terminal` script creates a new `tmux` session named
after the current workspace (if necessary) and then attaches a new
session as a "grouped" session.  This means that all terminals I have
running in the same workspace share the same set of `tmux` windows and
panes, but each terminal may have a different active, previous, and
next window.

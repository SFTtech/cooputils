cooputils
---------

Designed for working in a shell collaboratively using tmux.

tmuxchooser
-----------

Shows a list of running tmux sessions with metadata, allows you to connect to
any running session or create a new one. Much shiny, very tab completion.

coop
----

One-liner shellscript that runs `sudo -u coop tmuxchooser`.
Alternatively, an alias may be used.

setup
-----

 - create the `coop` user, setup (give a shell, dotfiles, disable login).
 - install the `coop` and `tmuxchooser` scripts to `/usr/local/bin`.
 - add the following entry to `sudoers` via `visudo`: `%coop ALL=(coop) NOPASSWD: /usr/local/bin/tmuxchooser`. This allows anybody from the `coop` group to run `tmuxchooser` as user `coop`, without having to type a password.
 - add all possible collaborators to the `coop` group.

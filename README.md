# dotfiles

## Checkout

```
git clone git@github.com:leandronishijima/dotfiles.git ~/.dotfiles
```

## inotify

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

## tmux

```
$ which tic

$ curl -LO https://invisible-island.net/datafiles/current/terminfo.src.gz && gunzip terminfo.src.gz

$ /usr/bin/tic -xe tmux-256color terminfo.src

$ sudo /usr/bin/tic -xe tmux-256color terminfo.src

$ infocmp -x tmux-256color
```

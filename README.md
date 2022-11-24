# dotfiles

## Checkout

```
git clone git@github.com:leandronishijima/dotfiles.git ~/.dotfiles
```

## inotify

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

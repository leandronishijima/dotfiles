# dotfiles

## Checkout

```
git clone git@github.com:leandronishijima/dotfiles.git ~/.dotfiles
```

# Create symlinks

## General

```
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
```

## zsh and bash

```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
```

## inotify

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

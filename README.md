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

## Vscode

### Configs

```
ln -s ~/.dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
```

### Snippets

```
ln -s ~/.dotfiles/vscode/snippets/elixir.json ~/.config/Code/User/snippets/elixir.json
ln -s ~/.dotfiles/vscode/snippets/html-eex.json ~/.config/Code/User/snippets/html-eex.json
ln -s ~/.dotfiles/vscode/snippets/.ex.code-snippets ~/.config/Code/User/snippets/.ex.code-snippets
```

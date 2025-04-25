# Config Readme

## Tools to install

```bash
# Starship 
brew install starship
# fzf 
brew install fzf
# eza 
brew install eza
# ripgrep 
brew install ripgrep
# lazygit 
brew install lazygit
```
Install a [Nerd Font](https://www.nerdfonts.com/font-downloads) (like JetBrains, FiraCode or Hack)

#### System monitoring
- [NetData](https://github.com/netdata/netdata)

#### Alternative terminals
- [Ghostty](https://ghostty.org/download)
- [Kitty](https://sw.kovidgoyal.net/kitty/binary/#)
- [WezTerm](https://wezterm.org/)

## Oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
```

## Create symbolic links
```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s ~/dotfiles/.config/ghostty ~/.config/ghostty
ln -s ~/dotfiles/.config/kitty ./kitty
```

## Set zsh as default shell
`chsh -s $(which zsh)`

# Tips

# Screenshots

![screenshot1](./screenshots/screenshot-lazygit-nvim.jpeg "Lazygit in nvim")
![screenshot2](./screenshots/screenshot-list-and-bat.jpeg "Terminal list and bat")

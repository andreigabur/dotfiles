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

#### Fonts
- [Nerd Font](https://www.nerdfonts.com/font-downloads) from where to pick a font with icons like BlexMono Nerd Font or JetBrainsMono Nerd Font.
- [JetBrains Mono Font](https://www.jetbrains.com/lp/mono/) from where to get the stanrad JetBrains font without icons.

#### System monitoring
- [NetData](https://github.com/netdata/netdata)

#### Alternative terminals
- [Kitty](https://sw.kovidgoyal.net/kitty/binary/#) (Python)
- [WezTerm](https://wezterm.org/) (Rust)
- [Alacritty](https://alacritty.org/) (Rust)
- [Ghostty](https://ghostty.org/download) (Zig)

## Oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
```

## Create symbolic links
```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/ghostty ~/.config/ghostty
ln -s ~/dotfiles/.config/herdr/config.toml ~/.config/herdr/config.toml
ln -s ~/dotfiles/.config/mise/config.toml ~/.config/mise/config.toml
ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
```

## Set zsh as default shell
`chsh -s $(which zsh)`

# Config Readme

## Tools to install

- Warp Terminal https://www.warp.dev/ 

- Starship prompt https://starship.rs/ 

- brew install lazygit

## Bare repository for dotfiles

### create bare repository
    git init --bare $HOME/.dotfiles

### set alias for bare get in .zshrc file
    echo 'alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"' >> $HOME/.zshrc

### set track only added files
    dot config --local status.showUntrackedFiles no

### add remote repository
    dot remote add origin git@github.com:andreigabur/dotfiles.git

### set alias for lazygit with dotfiles
    echo 'alias lgdot="lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME"' >> $HOME/.zshrc
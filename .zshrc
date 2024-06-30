eval "$(starship init zsh)"

source $(brew --prefix nvm)/nvm.sh
source "$HOME/.sdkman/bin/sdkman-init.sh"

alias ll="eza --icons --group-directories-first"
alias la="eza -all -long --icons --group-directories-first"
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias lgdot="lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME"

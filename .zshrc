# Set history
setopt histignorealldups sharehistory

## Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# ----------
# Use modern completion system
autoload -Uz compinit
compinit

# Defining the completers
zstyle ':completion:*' completer _expand _complete _correct _approximate
# Use menu-based selection of completions
zstyle ':completion:*' menu select
# Group results
zstyle ':completion:*' group-name ''
# Case-insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Format the result
zstyle ':completion:*:*:corrections' format '%F{yellow}-- %d (errors: %e) --%f'
zstyle ':completion:*:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:messages' format '%F{blue}-- %d --%f'
#Load colors
[[ $(command -v dircolors) ]] &&
  eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# Verbose mode
zstyle ':completion:*' verbose yes
# Auto descrition
zstyle ':completion:*' auto-description 'specify: %d'
# Do not fallback to compctl
zstyle ':completion:*' use-compctl false
# Completion for kill
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# ----------
# Variables
export EDITOR=nvim

# ----------
# Load Homebrew
[[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]] &&
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## Postgres installed with Brew 
[[ -d "/home/linuxbrew/.linuxbrew/opt/postgresql@16/bin" ]] && \
  export PATH=$PATH:/home/linuxbrew/.linuxbrew/opt/postgresql@16/bin/

## Go bins
[[ -d "$HOME/go/bin" ]] &&
  export PATH=$PATH:~/go/bin

## Rootline scripts
[[ -d "$HOME/Development" ]] &&
  export PATH=$PATH:~/Development/bin:~/Development/rootline/bin/dev

# Starship
[[ $(command -v starship) ]] && 
  eval "$(starship init zsh)"

# SDKMAN - THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# NVM 
[[ -d "/$HOME/.nvm" ]] && export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# ----------
# Aliases
alias ll="eza --icons --group-directories-first"
alias la="eza -all -long --icons --group-directories-first"
alias vim="nvim"
alias idea="(/home/andrei/Development/bin/ideaIU-2024.2/idea-IU-242.20224.300/bin/idea.sh > /dev/null 2>&1) &"
alias vscode="code --ozone-platform=wayland"
alias wezterm="flatpak run org.wezfurlong.wezterm"

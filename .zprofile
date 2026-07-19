
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

export EDITOR=nvim

export PATH="$HOME/go/bin:$PATH"

# mise shims — version-managed tools for non-interactive shells
export PATH="$HOME/.local/share/mise/shims:$PATH"

# google cloud sdk
[ -d "/opt/homebrew/share/google-cloud-sdk/bin" ] && export PATH="/opt/homebrew/share/google-cloud-sdk/bin":"$PATH"

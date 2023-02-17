alias python='python3'

export PATH="$HOME/homebrew/bin:$PATH"
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications"
eval "$(ssh-agent -s)"
eval "$(starship init zsh)"

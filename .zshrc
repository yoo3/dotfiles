alias python='python3'

export PATH="$HOME/homebrew/bin:$PATH"
eval "$(ssh-agent -s)"
eval "$(starship init zsh)"
eval "$(gh completion -s zsh)"
source /Users/dev/.config/op/plugins.sh

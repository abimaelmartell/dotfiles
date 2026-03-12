# Oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git brew encode64 nvm)
source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color

# Source configurations
source "$HOME/.dotfiles/paths.zsh"
source "$HOME/.dotfiles/aliases.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

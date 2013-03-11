# Oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git rails ruby svn php github debian nyan)
source $ZSH/oh-my-zsh.sh

# Custom aliases
fliptable(){echo "(╯°□ °)╯︵ ┻━┻"}

alias phpserver='php -S localhost:3000'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Colors
export TERM="xterm-256color"

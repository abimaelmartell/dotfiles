# Oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git rails ruby svn php github debian)
source $ZSH/oh-my-zsh.sh

# Custom aliases
fliptable(){echo "(╯°□ °)╯︵ ┻━┻"}

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Colors
export TERM="xterm-256color"

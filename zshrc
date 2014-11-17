# Oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"
plugins=(git rails ruby svn php debian nyan brew encode64)
source $ZSH/oh-my-zsh.sh

# Useful custom aliases
alias fliptable='echo "(╯°□ °)╯︵ ┻━┻"'
alias phpserver='php -S localhost:3000'
alias miip='curl http://wtfismyip.com/json'

# create a gzipped tar from dir
comprimemesta() {
    tar -cvzf $1.tar.gz $1
}

# encode base64
base64_encode() {
    echo $1 | base64
}

# decode base64
base64_decode() {
    echo $1 | base64 -D
}

export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export TERM=xterm-256color

export PATH="$HOME/.bin:$PATH"

export PATH="$PATH:/usr/local/lib/node_modules"

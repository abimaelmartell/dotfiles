# Aliases
alias fliptable='echo "(╯°□ °)╯︵ ┻━┻"'
alias phpserver='php -S 0.0.0.0:3000'
alias miip='curl http://wtfismyip.com/text'
alias token='node -e "console.log(crypto.randomBytes(32).toString(\"hex\"))"'

# Functions
# create a gzipped tar from dir
zip-dir() {
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

# PATH configurations and tool-specific setups

# Basic PATH additions
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:/usr/local/lib/node_modules"
export PATH="$PATH:$HOME/.dotfiles/bin"

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# Go
export GOPATH="$HOME/Code/Go"
export PATH=$PATH:$GOPATH/bin

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# User-installed command-line tools
export PATH="$HOME/.local/bin:$PATH"

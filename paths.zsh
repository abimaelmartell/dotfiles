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

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# bun
[ -s "/Users/abimael/.bun/_bun" ] && source "/Users/abimael/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Kiro shell integration
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# opencode
export PATH=/Users/abimael/.opencode/bin:$PATH

# Windsurf
export PATH="/Users/abimael/.codeium/windsurf/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/abimael/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Shared tools for login shells, including non-interactive commands.
source "$HOME/.dotfiles/paths.zsh"

# Interactive shells load this in zshrc; avoid sourcing overrides twice.
if [[ ! -o interactive && -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

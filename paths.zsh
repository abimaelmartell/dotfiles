# Shared PATH setup. Safe to source from login and interactive shells.
typeset -U path

# Homebrew: Apple Silicon first, then Intel.
for brew_bin in /opt/homebrew/bin/brew /usr/local/bin/brew; do
  if [[ -x "$brew_bin" ]]; then
    eval "$("$brew_bin" shellenv zsh)"
    break
  fi
done
unset brew_bin

# Common user tools, Docker, and mise shims for non-interactive shells.
for bin_dir in "$HOME/.bin" "$HOME/.dotfiles/bin" "$HOME/.docker/bin" \
               "${MISE_DATA_DIR:-$HOME/.local/share/mise}/shims" "$HOME/.local/bin"; do
  [[ -d "$bin_dir" ]] && path=("$bin_dir" $path)
done
unset bin_dir

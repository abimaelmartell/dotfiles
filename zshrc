# Lightweight native Zsh configuration.

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# Pager defaults previously provided by Oh My Zsh.
export PAGER="${PAGER:-less}"
export LESS="${LESS:--R}"

# Shared paths and optional laptop-specific overrides.
source "$HOME/.dotfiles/paths.zsh"
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
source "$HOME/.dotfiles/aliases.zsh"

# Completion (after Homebrew and local additions to fpath).
autoload -Uz compinit
compinit -C

# Familiar key bindings and a small Git-aware prompt.
bindkey -e
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' %F{magenta} %b%f'
precmd() {
  vcs_info
  if [[ -n "$vcs_info_msg_0_" ]] &&
     [[ -n "$(command git status --porcelain --ignore-submodules=dirty 2>/dev/null)" ]]; then
    vcs_info_msg_0_+=' %F{red}•%f'
  fi
}
setopt PROMPT_SUBST
PROMPT='%F{cyan}%1~%f${vcs_info_msg_0_} %F{green}❯%f '

# mise selects runtimes after all other PATH changes.
if (( $+commands[mise] )); then
  eval "$(mise activate zsh)"
fi

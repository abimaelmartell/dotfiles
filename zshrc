# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

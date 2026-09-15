dotfiles
========

Personal dotfiles and configurations

shell installation
------------------
Clone this repository to `~/.dotfiles`. Install mise separately for runtime
management. Back up any existing `~/.zprofile` and `~/.zshrc`, then link:

```sh
ln -s ~/.dotfiles/zprofile ~/.zprofile
ln -s ~/.dotfiles/zshrc ~/.zshrc
exec zsh -l
```

`paths.zsh` contains the shared Homebrew, Docker, personal-tool and mise-shim
paths. `zshrc` adds history, completion, aliases, the prompt and mise activation.
Bun, pnpm and other runtime versions are managed by mise, not standalone PATH
blocks. The old custom GOPATH is no longer set; put it in your local overrides
if you still need it.

### One file for laptop-specific settings

Use optional `~/.zshrc.local` for work-only tools or machine-specific settings.
It stays outside this repository and may be absent on other computers. For
example, on a Mac with Homebrew-installed Google Cloud CLI:

```zsh
if [[ -n "$HOMEBREW_PREFIX" &&
      -d "$HOMEBREW_PREFIX/share/google-cloud-sdk/bin" ]]; then
  path=("$HOMEBREW_PREFIX/share/google-cloud-sdk/bin" $path)
fi
```

The file runs before completion and mise activation in interactive shells.
Non-interactive login shells load it from `zprofile` too, so keep PATH and
environment setup shell-safe; guard interactive-only commands with
`[[ -o interactive ]]`. Each new shell loads it once. Move installer-added
machine-specific snippets into this file instead of editing shared dotfiles.

The Git configuration and legacy Vim/tmux configurations are separate opt-ins.
Shell installation does not replace your Git identity.

neovim
-------
The lightweight Neovim configuration lives in `nvim/` and installs its small
set of plugins automatically on first launch.

```sh
brew install neovim
mkdir -p ~/.config
ln -s ~/.dotfiles/nvim ~/.config/nvim
nvim
```

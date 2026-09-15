dotfiles
========

Personal dotfiles and configurations

installation
------------
Open a terminal and copy the following
```ssh
git clone https://github.com/abimaelmartell/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/fonts ~/.fonts
ln -s ~/.dotfiles/zshrc ~/.zshrc
vim +BundleInstall +qall
```

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

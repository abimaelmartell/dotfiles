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
ln -s ~/.dotfiles/zpreztorc ~/.zpreztorc
vim +BundleInstall +qall
```

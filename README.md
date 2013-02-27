dotfiles
========

Personal dotfiles and configurations

installation
------------
Open a terminal and copy the following
* `git clone git@github.com:abimaelmartell/dotfiles.git ~/.dotfiles`
* `cd ~/.dotfiles`
* `git submodule init`
* `git submodule update`
* `ln -s ~/.dotfiles/vim ~/.vim`
* `ln -s ~/.dotfiles/vim/vimrc ~/.vimrc`
* `ln -s ~/.dotfiles/fonts ~/.fonts`
* `ln -s ~/.dotfiles/zshrc ~/.zshrc`
* `vim +BundleInstall +qall`

TODO: Add a installer, maybe use vundler

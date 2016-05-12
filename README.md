# dotfiles

Config files management for vim, bash...


## Installation ##

	git clone https://github.com/b97531/dotfiles.git
	cd dotfiles
	git submodule init
	git submodule update

	# Create symlinks:
	ln -s ~/dotfiles/bash/bashrc ~/.bashrc
	ln -s ~/dotfiles/vim/vimrc ~/.vimrc
	ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
	ln -s ~/dotfiles/vim ~/.vim

	# Some directory must exist :
	mkdir ~/tmp
  
  # Scripts executable
  chmod +x script/*
  

## Adding Plugin Bundles for Vim ##

	cd ~/dotfiles
	git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript
	# This will update the .gitmodules file by appending something like:
	[submodule "vim/bundle/vim-javascript"]
	path = vim/bundle/vim-javascript
	url = http://github.com/pangloss/vim-javascript.git

	# You can then commit these changes :
	git add .
	git ci -m "Added the javascript bundle"


## Useful links about it ##

### For Vim ###

- https://github.com/vim-scripts
- http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/



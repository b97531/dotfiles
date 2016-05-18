#!/bin/bash - 
#===============================================================================
#
#          FILE: install_dot.sh
# 
#         USAGE: ./install_dot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: BARATTERO Laurent, 
#  ORGANIZATION: 
#       CREATED: 05/18/16 15:46
#      REVISION:  ---
#===============================================================================

set -o nounset        # Treat unset variables as an error



backup_dir=~/.dotfiles.bakup/$(date +"%Y_%m_%d_%Hh%Mm%Ss")


dotfiles=(  ~/.vim
            ~/.vimrc
            ~/.gvimrc )
lndotfiles=(~/dotfiles/vim/
            ~/dotfiles/vim/vimrc
            ~/dotfiles/vim/gvimrc )


for i in ${!dotfiles[*]}; do
  # If dotfile exist make a backup
  if [ -e ${dotfiles[$i]} ] ; then
    mkdir -pv $backup_dir
    mv -v ${dotfiles[$i]} $backup_dir/.
  fi
  # in any case make links
  ln -vs ${lndotfiles[$i]} ${dotfiles[$i]}
done

#!/bin/bash

#remove ~/.nanorc
rm ~/.nanorc

#remove link to bash customizations with sed from ~/.bashrc
sed -i 's|source ~/.dotfiles/etc/bashrc_custom||g' ~/.bashrc

#remove ~/.TRASH/ directory
rm -rf ~/.TRASH/

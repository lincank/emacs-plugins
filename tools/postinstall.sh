#!/bin/bash
##! @description: usage
##! @version: 1
##! @author: crackcell <tanmenglong@gmail.com>
##! @date:   Fri Dec 16 01:11:55 2011

#------------------- library ------------------


#--------------- global variable --------------


#------------------ function ------------------


#------------------- main -------------------

cd ~/.emacs.d/emacs-plugins/c-settings/; rm -rf cedet-1.0; tar xzvf cedet-1.0.tar.gz
make -C ~/.emacs.d/emacs-plugins/c-settings/cedet-1.0
make -C ~/.emacs.d/emacs-plugins/c-settings/ecb-2.40
make -C ~/.emacs.d/emacs-plugins/muse-settings/muse

echo "source ~/.emacs.d/emacs-plugins/tools/shell_init.sh" >> ~/.bashrc
echo "source ~/.emacs.d/emacs-plugins/tools/shell_init.sh" >> ~/.zshrc


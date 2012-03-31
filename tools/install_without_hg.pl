#!/usr/bin/perl
##! @description: install emacs-plugins
##! @version: 1
##! @author: crackcell <tanmenglong@gmail.com>
##! @date:   Thu Dec 15 12:04:41 2011

use strict;

#--------------- global variable --------------


#------------------ function ------------------


#------------------- main -------------------

print("Checking ~/.emacs.d/emacs-plugins...\n");
`mkdir ~/.emacs.d`;
`mv ~/.emacs.d/emacs-plugins ~/.emacs.d/emacs-plugins_BAK`;

print("Getting emacs-plugins...\n");
`cd ~/.emacs.d; wget https://bitbucket.org/crackcell/emacs-plugins/get/default.tar.gz; tar xzvf default.tar.gz; mv crackcell-emacs-plugins-* emacs-plugins; rm -r default.tar.gz`;

print("Setting up...");
`mv ~/.emacs ~/.emacs_BAK`;

`cp ~/.emacs.d/emacs-plugins/emacs ~/.emacs`;
`sh ~/.emacs.d/emacs-plugins/tools/postinstall.sh`;

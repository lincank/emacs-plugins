(add-to-list "~/.emacs.d/emacs-plugins/zencoding-mode")
(require 'zencoding-mode)

(add-hook 'sgml-mode-hook 'zencoding-mode)

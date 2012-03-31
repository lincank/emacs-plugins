;; auto-complete
(add-to-list 'load-path
			 "~/.emacs.d/emacs-plugins/common-settings/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
			 "~/.emacs.d/emacs-plugins/auto-complete-dict")
(ac-config-default)
(auto-complete-mode)

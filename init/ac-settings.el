;; auto-complete
(add-to-list 'load-path
			 "~/.emacs.d/emacs-plugins/common-settings/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
			 "~/.emacs.d/emacs-plugins/common-settings/auto-complete-dict")
(ac-config-default)

;; Select candidates with C-n/C-p only when completion menu is displayed
(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
(auto-complete-mode)

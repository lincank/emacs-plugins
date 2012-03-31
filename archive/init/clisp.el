;; Yanippet
(add-to-list 'load-path "~/.emacs.d/emacs-plugins/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/emacs-plugins/yasnippet/snippets")

(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())

(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
(add-to-list 'load-path "~/.emacs.d/emacs-plugins/clisp/slime/")
(require 'slime)
(slime-setup)

;; Yanippet
(add-to-list 'load-path "~/.emacs.d/emacs-plugins/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/emacs-plugins/yasnippet/snippets")


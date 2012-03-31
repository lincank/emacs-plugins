(add-to-list 'load-path "~/.emacs.d/emacs-plugins/py-settings")

;; 设置缩进风格
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())

;; gccsense
;(load-file "~/.emacs.d/emacs-plugins/c-settings/load-gccsense.el")

;; outline-mode
(load-file "~/.emacs.d/emacs-plugins/c-settings/load-outline-mode.el")

;; coding style
;(load-file "~/.emacs.d/emacs-plugins/c-settings/load-codingstyle.el")

;; load keybindings
(load-file "~/.emacs.d/emacs-plugins/py-settings/keybindings.el")

;; pymacs
;(load-file "~/.emacs.d/emacs-plugins/py-settings/load-pymacs.el")

;; ropemacs
;(load-file "~/.emacs.d/emacs-plugins/py-settings/load-ropemacs.el")

;; 改变每行超出80个字符部分的颜色
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

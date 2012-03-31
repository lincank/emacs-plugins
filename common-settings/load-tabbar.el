;; load mouse-wheel-mode
(load-file "~/.emacs.d/emacs-plugins/common-settings/mwheel.el")
(mouse-wheel-mode t)

;; tabbar
(require 'tabbar)
(setq tabbar-buffer-groups-function
          (lambda ()
            (list "All")))
(tabbar-mode)
;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)
;;(load "desktop")
;;(desktop-load-default)
;;(desktop-read)
;;(setq desktop-save-mode t)

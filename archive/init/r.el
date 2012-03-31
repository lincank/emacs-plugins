;; Yanippet
(add-to-list 'load-path "~/.emacs.d/emacs-plugins/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/emacs-plugins/yasnippet/snippets")

(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
;(loop for x downfrom 40 to 1 do
;      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

;; ESS
(require 'ess-site)
      
;bind keys
;(global-set-key [f1] 'ac-complete-yasnippet)
;(global-set-key [f5] 'muse-publish-this-file)


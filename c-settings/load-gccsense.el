;; 设置gccsence
(setq ac-sources '(ac-source-clang-complete))
;(setq ac-auto-start nil)
;(define-key c-mode-base-map (kbd "M-/") 'auto-complete)
;(global-set-key (kbd "M-/") (quote auto-complete))

(require 'gccsense)
(global-set-key "\257" (quote ac-complete-gccsense))

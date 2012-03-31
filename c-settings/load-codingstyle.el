;; crackcell coding style
(require 'crackcell-c-style)
(add-hook 'c-mode-common-hook 'crackcell-set-c-style)
(add-hook 'c-mode-common-hook 'crackcell-make-newline-indent)

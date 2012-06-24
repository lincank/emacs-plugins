;;Make sure sass location is in emacs PATH
(setq exec-path (cons (expand-file-name "~/.rvm/gems/ruby-1.9.2-p318/bin") exec-path))

(setq scss-compile-at-save nil)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/emacs-plugins/scss-mode/"))
(autoload 'scss-mode "scss-mode")

;; enable scss-mode when file with ".scss" or ".sass" suffix
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))

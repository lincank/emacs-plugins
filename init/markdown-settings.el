(add-to-list 'load-path "~/.emacs.d/emacs-plugins/markdown-settings/")
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.md" . markdown-mode) auto-mode-alist))

(setq auto-mode-alist
    (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(load-file "~/.emacs.d/emacs-plugins/markdown-settings/keybindings.el")

(require 'org)

(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(global-font-lock-mode 1)                     ; for all buffers
(setq org-hide-leading-stars t)
(setq org-log-done t)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(setq org-agenda-files (list "~/repo/my/private/agenda/work.org"
							 "~/repo/my/private/agenda/personal.org"
							 "~/repo/my/private/agenda/study.org"
							 "~/repo/my/private/agenda/periodical.org"))
(setq org-footnote-auto-adjust t)

(load-file "~/.emacs.d/emacs-plugins/org-settings/keybindings.el")
(load-file "~/.emacs.d/emacs-plugins/init/muse-settings.el")
(load-file "~/.emacs.d/emacs-plugins/init/markdown-settings.el")

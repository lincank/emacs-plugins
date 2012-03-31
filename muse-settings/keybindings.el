(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs))

(defun muse-indent-or-complete ()
  "Complete if point is at end of a word, otherwise indent line."
  (interactive)
  (if (looking-at "//>")
      (hippie-expand nil)
    (org-cycle)))

(defun muse-mode-keys()
    (local-set-key [f5]
				 (lambda() (interactive) (muse-publish-this-file "html" "./")))
	(local-set-key (kbd "<tab>") 'muse-indent-or-complete)
	(local-set-key (kbd "TAB") 'muse-indent-or-complete))

(add-hook 'muse-mode-hook 'muse-mode-keys)
(add-hook 'muse-mode-hook (lambda () (setq truncate-lines nil)))

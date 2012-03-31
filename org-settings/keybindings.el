(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs))

(defun org-indent-or-complete ()
  "Complete if point is at end of a word, otherwise indent line."
  (interactive)
  (if (looking-at "^$") ; 若是空白行的行尾，使用org缩进。否则使用补全。不知道为啥looking-at "[a-zA-Z]$"不好使
	  (org-cycle)
	(if (looking-at "$")
		(hippie-expand nil)
	  (org-cycle))))

(defun org-mode-keys()
  ;; 发布
  (local-set-key (kbd "C-c l") 'org-store-link)
  (local-set-key (kbd "C-c a") 'org-agenda)
  (local-set-key [f5] 'org-export-as-html)
  (local-set-key [f6]
				 (lambda() (interactive) (org-write-agenda "~/Desktop/agenda.html")))

  ;; 视图
  (local-set-key [f12] 'org-agenda-list)

  ;; 补全
  (local-set-key [(tab)] 'org-indent-or-complete))

(add-hook 'org-mode-hook 'org-mode-keys)

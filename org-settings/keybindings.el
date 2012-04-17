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

;(defun org-mode-keys()
  ;; 发布
  (global-set-key (kbd "C-c l") 'org-store-link)
  (global-set-key (kbd "C-c a") 'org-agenda)
  (global-set-key [f5] 'org-export-as-html)
  (global-set-key [f6]
				 (lambda() (interactive) (org-write-agenda "~/Desktop/agenda.html")))

  ;; 视图
  (global-set-key [f9] 'org-archive-subtree-default-with-confirmation)
  (global-set-key [f10] 'org-columns)
  (global-set-key [f11] 'org-refile)
  (global-set-key [f12] 'org-agenda)

  ;; 补全
  (global-set-key [(tab)] 'org-indent-or-complete)

  ;; 自定义org命令，在org-agenda里面显示
  (setq org-agenda-custom-commands
		'(
		  ("p" "Projects" ((tags "PROJECT")))
		  ("o" "Office Lists" ((tags-todo "OFFICE")))
		  ("h" "Home Lists" ((tags-todo "HOME")))
		  ("d" "Daily Action List"
		   ((agenda "" ((org-agenda-ndays 1)
						(org-agenda-sorting-strategy
						 (quote ((agenda time-up priority-down tag-up) )))
						(org-deadline-warning-days 0)
						))))))
;)

;(add-hook 'org-mode-hook 'org-mode-keys)

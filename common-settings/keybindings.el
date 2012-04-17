;; 设置自定义键绑定
(global-set-key (kbd "C-k") 'kill-whole-line)
(global-set-key [f2] 'replace-string)
(global-set-key [f3] 'tabbar-backward)
(global-set-key [f4] 'tabbar-forward)
(global-set-key (kbd "C-x <left>") 'tabbar-backward)
(global-set-key (kbd "C-x <right>") 'tabbar-forward)
(global-set-key [f6] 'goto-line)
(global-set-key [f8] 'execute-extended-command)

(setq mac-option-key-is-meta t)
(setq mac-command-key-is-meta nil)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(global-set-key (kbd "C-<down>") 'scroll-up)
(global-set-key (kbd "C-<up>") 'scroll-down)
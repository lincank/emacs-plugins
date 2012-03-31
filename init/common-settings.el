(if (string= "cpp"
			 (file-name-extension (buffer-name)))
	(load-file "~/.emacs.d/emacs-plugins/init/c-settings.el"))

;; 缩进风格
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;; fix meta key in macosx
;(set-keyboard-coding-system nil)

;; 自动备份目录
(setq make-backup-files t)
(setq backup-directory-alist '(("."."~/.emacs_saves")))

;; 自定义加载路径
(setq load-path (cons
				 "~/.emacs.d/emacs-plugins/common-settings" load-path))

;; 设置默认 用户名 和 email
(setq user-full-name "crackcell")
(setq user-mail-address "tanmenglong@gmail.com")

;; Replace "yes or no" with y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; 关闭启动信息
(setq inhibit-startup-message)

;; 自定义外观
(load-file "~/.emacs.d/emacs-plugins/init/appearance-settings.el")

;; tabbar
(load-file "~/.emacs.d/emacs-plugins/common-settings/load-tabbar.el")

;; auto-complete
(load-file "~/.emacs.d/emacs-plugins/init/ac-settings.el")

;; yanippet
(load-file "~/.emacs.d/emacs-plugins/init/yas-settings.el")

;; highlight-symbol
(load-file "~/.emacs.d/emacs-plugins/init/highlight-settings.el")

;; keybindings
(load-file "~/.emacs.d/emacs-plugins/common-settings/keybindings.el")

;; setting up default browser when clicking on a link
(setq gnus-button-url 'browse-url-generic
	  browse-url-generic-program "chrome"
	  browse-url-browser-function gnus-button-url)

;; org
(load-file "~/.emacs.d/emacs-plugins/init/org-settings.el")

;; muse
(load-file "~/.emacs.d/emacs-plugins/init/muse-settings.el")

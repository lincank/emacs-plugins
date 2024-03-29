;; 缩进风格
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;;html-mode tabs
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 2)
            (setq indent-tabs-mode t)))

;; Display line and column numbers
(setq line-number-mode t)
;(setq column-number-mode t)

;; fix meta key in macosx
;(set-keyboard-coding-system nil)

;; 自动备份目录
(setq make-backup-files t)
(setq backup-directory-alist '(("."."~/.emacs_saves")))

;; 自定义加载路径
(setq load-path (cons
				 "~/.emacs.d/emacs-plugins/common-settings" load-path))

;; 设置默认 用户名 和 email
(setq user-full-name "lincank")
(setq user-mail-address "lincank@gmail.com")

;; Replace "yes or no" with y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Gotta see matching parens
(show-paren-mode t)

;; 关闭启动信息
;;(setq inhibit-startup-message)

;; 自定义外观
;;(load-file "~/.emacs.d/emacs-plugins/init/appearance-settings.el")

;; tabbar
;;(load-file "~/.emacs.d/emacs-plugins/common-settings/load-tabbar.el")

;; auto-complete
(load-file "~/.emacs.d/emacs-plugins/init/ac-settings.el")

;; yanippet
(load-file "~/.emacs.d/emacs-plugins/init/yas-settings.el")

;; highlight-symbol
;(load-file "~/.emacs.d/emacs-plugins/init/highlight-settings.el")

;; keybindings
;;(load-file "~/.emacs.d/emacs-plugins/common-settings/keybindings.el")

;; setting up default browser when clicking on a link
;;(setq gnus-button-url 'browse-url-generic
;;	  browse-url-generic-program "chrome"
;;	  browse-url-browser-function gnus-button-url)

;; init exec path
(load-file "~/.emacs.d/emacs-plugins/init/init-exec-path.el")

;;markdown mode
(load-file "~/.emacs.d/emacs-plugins/init/markdown-settings.el")

;; scss-mode
(load-file "~/.emacs.d/emacs-plugins/init/scss-mode.el")

;; zencoding
(load-file "~/.emacs.d/emacs-plugins/init/zencoding-settings.el")

;; magit
(load-file "~/.emacs.d/emacs-plugins/init/magit.el")

(require 'init-exec-path)

;; org
(load-file "~/.emacs.d/emacs-plugins/init/org-settings.el")

;; muse
;;(load-file "~/.emacs.d/emacs-plugins/init/muse-settings.el")

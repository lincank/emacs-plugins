(setq load-path (cons
				 "~/.emacs.d/emacs-plugins/muse-settings/muse/lisp" load-path))

;; 加载org-mode
(require 'org)

(require 'muse-mode)     ; load authoring mode
(require 'muse-html)     ; load publishing styles I use
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-docbook)

(setq muse-colors-autogen-headlings 'outline)

;; 设置编码
(setq muse-html-meta-content-type (concat "text/html; charset=utf-8"))

;; 设置muse工程
(require 'muse-project)  ; publish files in projects
(setq muse-project-alist
	  '(("crackcell.com" ("~/repo/github/crackcell.github.com" :default "index")
		 (:base "html" :path "~/repo/github/crackcell.github.com"))))

;; 默认的 <contents> 标签只总结两层标题
(setq muse-publish-contents-depth 3)

;; 自定义 footer.html 和 heeader.html
(setq muse-html-footer
	  "~/.emacs.d/emacs-plugins/muse-settings/muse-html-footer.html")
;(setq muse-html-header "~/.emacs.d/plugins/muse-html-header.html")

(load-file "~/.emacs.d/emacs-plugins/muse-settings/keybindings.el")

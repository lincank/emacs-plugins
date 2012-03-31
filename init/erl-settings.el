;; erlware
(setq load-path (cons "~/.emacs.d/emacs-plugins/erl-settings/erlware-mode/" load-path))
(setq erlang-man-root-dir "/usr/lib/")
(setq exec-path (cons "/usr/lib/bin" exec-path))
(require 'erlang-start)

;; 设置缩进风格
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())

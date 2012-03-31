(defun crackcell-set-r-style ()
  (setq ess-indent-level 4)
  (setq ess-fancy-comments nil)
  (add-hook 'local-write-file-hooks
			(lambda ()
			  (ess-nuke-trailing-whitespace)))
  (setq ess-nuke-trailing-whitespace-p 'ask))


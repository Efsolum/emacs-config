(when
		(require 'dockerfile-mode nil 'noerror)

	(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

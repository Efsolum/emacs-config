
(when
		(require 'smart-mode-line nil 'noerror)

	(setq line-number-mode t)
	(setq column-number-mode t)
	(setq display-battery-mode t)

	(setq sml/no-confirm-load-theme t)
	(setq sml/shorten-directory t)
	(setq sml/shorten-modes t)
	(sml/setup)
	(sml/apply-theme 'dark)

	(when (require 'rich-minority)
		(rich-minority-mode 1)))

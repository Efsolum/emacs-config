(when
		(require 'color-theme nil 'noerror)

	(color-theme-initialize)
	(setq color-theme-is-global t)

	(if (require 'birds-of-paradise-plus-theme nil 'noerror)
			(progn
				(load-theme 'birds-of-paradise-plus t))

		(progn
			(load-theme 'tango-dark t))))

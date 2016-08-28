(when
		(require 'smartparens-config nil 'noerror)

	(require 'smartparens-ruby)

	(smartparens-global-mode)
	(show-smartparens-global-mode t)

	(sp-with-modes '(rhtml-mode)
								 (sp-local-pair "<" ">")
								 (sp-local-pair "<%" "%>"))

	(sp-with-modes '(dockerfile-mode)
								 (sp-local-pair "<" ">")
								 (sp-local-pair "<%" "%>")))

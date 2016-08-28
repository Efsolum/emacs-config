(when
		(require 'auto-complete-config nil 'noerror)
	(ac-config-default)
	(setq ac-ignore-case nil)
	(add-to-list 'ac-modes 'web-mode)
	(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
	(add-to-list 'auto-mode-alist '("\\.html.erb$" . web-mode)))

(when
		(require 'js2-mode nil 'noerror)

	(add-to-list 'auto-mode-alist '("\\.es$" . js2-mode))
	(add-to-list 'auto-mode-alist '("\\.es6$" . js2-mode))
	(add-to-list 'auto-mode-alist '("\\.es7$" . js2-mode))
	(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
	(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-mode))
	;; (add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
	;; Hooks
	(add-hook 'js2-mode-hook 'whitespace-cleanup-mode)
	(add-hook 'js-mode-hook 'js2-minor-mode)
	(add-hook 'js2-mode-hook 'ac-js2-mode)
	(add-hook 'js2-mode-hook 'js2-refactor-mode))

(when
		(require 'json-mode nil 'noerror)

	(add-to-list 'auto-mode-alist '("\\.json$" . json-mode)))

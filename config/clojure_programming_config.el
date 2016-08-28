(when
		(require 'clojure-mode nil 'noerror)

	(add-hook 'clojure-mode-hook 'whitespace-cleanup-mode))

(when
		(require 'cider-mode nil 'noerror)

	(add-hook 'cider-mode-hook 'eldoc-mode)
	(add-hook 'cider-mode-hook 'whitespace-cleanup-mode)
	(add-hook 'cider-repl-mode-hook 'company-mode)
	(add-hook 'cider-mode-hook 'company-mode)
	(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
	(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)
	(setq cider-repl-history-size 1000))

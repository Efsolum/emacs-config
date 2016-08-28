
(when
		(require 'enh-ruby-mode  nil 'noerror)

	(require 'auto-complete-config)

	(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
	(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
	(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
	(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
	(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
	(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
	(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
	(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
	(add-hook 'enh-ruby-mode-hook 'whitespace-cleanup-mode)
	(add-hook 'enh-ruby-mode-hook 'robe-mode)
	(add-hook 'enh-ruby-mode-hook 'whitespace-cleanup-mode)
	(add-hook 'enh-ruby-mode-hook 'yard-mode)

	(ac-config-default)
	(setq ac-ignore-case nil)
	(add-to-list 'ac-modes 'enh-ruby-mode))

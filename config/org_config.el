(when
		(require 'org)

	(define-key global-map "\C-cl" 'org-store-link)
	(define-key global-map "\C-ca" 'org-agenda)
	(setq org-todo-keywords
				'((sequence "TODO" "IN-PROGRESS" "|" "DONE" "CANCELED"))))

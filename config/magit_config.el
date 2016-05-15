
(when
		(require 'magit nil 'noerror)

	(defvar my-magit-keys-minor-mode-map
		(let ((map (make-sparse-keymap)))
			(define-key map (kbd "C-c m s") 'magit-status)
			(define-key map (kbd "C-c m i") 'magit-init)
			map)
		"My personal key bindings for magit.")

	(define-minor-mode my-magit-keys-minor-mode
		"A minor-mode for my magit key bindings.

Keybindings:

C-c m s magit-status
C-c m i magit-init"
		:init-value t
		:global t
		:lighter " my-magit-keys"))

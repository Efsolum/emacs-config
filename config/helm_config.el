
(when
		(require 'helm nil 'noerror)

	(defun my-helm-keys-have-priority (_file)
		"Try to ensure that my keybindings retain priority over other minor modes.

Called via the 'after-load-functions' special hook."
		(unless (eq (caar minor-mode-map-alist) 'my-helm-keys-minor-mode)
			(let ((mykeys (assq 'my-helm-keys-minor-mode minor-mode-map-alist)))
				(assq-delete-all 'my-helm-keys-minor-mode minor-mode-map-alist)
				(add-to-list 'minor-mode-map-alist mykeys))))

	(require 'helm-config)
	(helm-mode 1)

	(defvar my-helm-keys-minor-mode-map
		(let ((map (make-sparse-keymap)))
			(define-key map (kbd "M-x") 'helm-M-x)
			(define-key map (kbd "C-x C-f") 'helm-find-files)
			map)
		"My personal key bindings for helm.")

	(define-minor-mode my-helm-keys-minor-mode
		"A minor-mode for my helm key bindings.

Keybindings:

M-x helm-M-x
C-x C-f helm-find-files"
		:init-value t
		:global t
		:lighter " my-helm-keys")

	(my-helm-keys-minor-mode 1)
	(add-hook 'after-load-functions 'my-helm-keys-have-priority))

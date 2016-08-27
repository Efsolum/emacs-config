(when
		(require 'emamux nil 'noerror)

	(defvar my-emamux-keys-minor-mode-map
		(let ((map (make-sparse-keymap)))
			(define-key map (kbd "C-x e s") 'emamux:send-command)
			(define-key map (kbd "C-x e y") 'emamux:yank-from-list-buffers)
			(define-key map (kbd "C-x e c") 'emamux:copy-kill-ring)
			map)
		"My personal key bindings for emamux.")

	(define-minor-mode my-emamux-keys-minor-mode
		"A minor-mode for my emamux key bindings.

Keybindings:

C-x e s emamux:send-command
C-x e y emamuxyank-from-list-buffers:
C-x e c emamux:copy-kill-ring"
		:init-value t
		:global t
		:lighter " my-emamux-keys"))

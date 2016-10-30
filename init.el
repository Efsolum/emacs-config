
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun set-up-gui (_)
	(if (display-graphic-p)
			(progn
				(tool-bar-mode -1)
				(scroll-bar-mode -1))))
(add-to-list 'after-make-frame-functions #'set-up-gui)

(menu-bar-mode -1)
(tooltip-mode -1)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq default-tab-width 2)

;; configure man-mode to open in the same window.
(setq Man-notify-method 'pushy)

;; set font size
(set-face-attribute 'default nil :height 80)

;; install config dependencies
(load-file
 (expand-file-name "Packages.el" user-emacs-directory))

(defun recursive-load-directory (directory)
	"Load recursively all `.el' files in DIRECTORY."
	(dolist (element (directory-files-and-attributes directory nil nil nil))
		(let* ((path (car element))
					 (fullpath (concat directory "/" path))
					 (isdir (car (cdr element)))
					 (ignore-dir (or (string= path ".") (string= path ".."))))
			(cond
			 ((and (eq isdir t) (not ignore-dir))
				(load-directory fullpath))
			 ((and (eq isdir nil) (string= (substring path -3) ".el"))
				(load (file-name-sans-extension fullpath)))))))

(recursive-load-directory
 (expand-file-name "config" user-emacs-directory))

;; (require 'restclient nil 'noerror)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
	 (quote
		(nil yasnippet undo-tree spinner sml-mode seq rich-minority restclient-helm rainbow-mode queue python names let-alist js2-mode emamux dash csv-mode coffee-mode clojurescript-mode clj-mode ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

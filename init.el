
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(menu-bar-mode -1)
(tooltip-mode -1)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq default-tab-width 2)

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(notmuch-saved-searches
	 (quote
		((:name "inbox" :query "tag:inbox" :key "i")
		 (:name "unread" :query "tag:unread" :key "u")
		 (:name "flagged" :query "tag:flagged" :key "f")
		 (:name "sent" :query "tag:sent" :key "t")
		 (:name "drafts" :query "tag:draft" :key "d")
		 (:name "all mail" :query "*" :key "a")
		 (:name "today" :query "date:today..now")
		 (:name "test" :query "date:today..now")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

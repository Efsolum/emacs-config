(let
		((dir-to-load
			(concat
			 (getenv "HOME") "/.guix-profile/share/emacs/site-lisp/mu4e")))
	(when
			(file-accessible-directory-p dir-to-load)
		(add-to-list 'load-path dir-to-load)))

(when
		(require 'mu4e nil 'noerror)
	(setq
	 mu4e-maildir       "~/mail"
	 mu4e-sent-folder   "/sent"
	 mu4e-drafts-folder "/drafts"
	 mu4e-trash-folder  "/trash"
	 mu4e-refile-folder "/archive")

	(setq mu4e-attachment-dir  "~/Downloads")

	(setq message-send-mail-function 'message-send-mail-with-sendmail
				sendmail-program (executable-find "msmtp")
				user-full-name "Matthew O'N.S Jordan")

	(require 'mu4e-contrib)
	(setq mu4e-html2text-command 'mu4e-shr2text)

	(add-hook 'message-send-hook
						(lambda ()
							(unless (yes-or-no-p "Sure you want to send this?")
								(signal 'quit nil))))

	;; Select which outgoing account to use.
	(defun choose-msmtp-account ()
		(if (message-mail-p)
				(save-excursion
					(let*
							((from (save-restriction
											 (message-narrow-to-headers)
											 (message-fetch-field "from")))
							 (account
								(cond
								 ((string-match "matthewjordan85@gmail.com" from) "matthewjordan85_gmail")
								 ((string-match "matthewjordannm@gmail.com" from) "matthewjordannm_gmail")
								 ((string-match "matthewjordandevops@yandex.com" from) "matthewjordandevops_yandex"))))
						(setq message-sendmail-extra-arguments (list '"-a" account))))))
	(setq message-sendmail-envelope-from 'header)
	(add-hook 'message-send-mail-hook 'choose-msmtp-account))

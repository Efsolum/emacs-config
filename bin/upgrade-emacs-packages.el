#!emacs --script
;; Update el-get and installed packages

(if (executable-find "guix")
		(message "\nguix command is available, no need to run el-get")

	(progn
		(load-file "~/.emacs.d/init.el")

		(if
				(require 'el-get nil 'noerror)
				(progn
					(el-get-self-update)
					(el-get-update-all t))
			(message "\nError: el-get needs to be installed"))))

#!emacs --script
;; Install el-get

(if (executable-find "guix")
		(message "\nguix command is available, no need to install el-get")

	(progn
		(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

		(unless
				(require 'el-get nil 't)

			(require 'package)
			(add-to-list 'package-archives
									 '("melpa" . "http://melpa.org/packages/"))

			(package-refresh-contents)
			(package-initialize)
			(package-install 'el-get)
			(require 'el-get))

		(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
		(el-get 'sync)))

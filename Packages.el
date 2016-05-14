(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (executable-find "guix")
	(unless
			(require 'el-get nil 'noerror)

		(require 'package)
		(add-to-list 'package-archives
								 '("melpa" . "http://melpa.org/packages/"))

		(package-refresh-contents)
		(package-initialize)
		(package-install 'el-get))

	(require 'el-get)
	(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

	(setq package-list
				'(;; general utilities
					auto-complete
					flycheck
					flymake
					helm
					ac-helm
					helm-projectile
					magit
					projectile
					yasnippet

					;; mail
					;; mu4e
					;; helm-mu

					;; search
					ace-isearch
					grep+
					helm-ag
					helm-swoop

					;; themes
					color-theme
					;; zonokai-theme

					;; help, discovery & learning
					discover
					guide-key

					;; standard formats
					csv-mode
					json-mode
					markdown-mode
					web-mode
					yaml-mode

					;; Lisp families
					geiser
					ac-geiser
					clojure-mode
					slime
					ac-slime
					helm-slime
					;; clojurescript-mode
					cider
					ac-cider

					;; Go
					go-mode

					;; Rust
					rust-mode

					;; Lua
					lua-mode

					;; Python
					jinja2-mode
					python

					;; Ruby
					enh-ruby-mode
					yard-mode
					haml-mode
					slim-mode
					sass-mode
					scss-mode

					;;Javascript
					js2-mode
					ac-js2
					js3-mode
					jade-mode
					handlebars-mode
					;; ember-mode
					coffee-mode

					;; dired
					dired+
					direx

					;; Additional utilities
					iregister
					ace-window
					aggressive-indent-mode
					expand-region
					undo-tree
					browse-kill-ring
					smart-mode-line
					smartparens))

	(el-get 'sync package-list))

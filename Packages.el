(unless (executable-find "guix")
	(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

	(require 'el-get)
	(require 'el-get-elpa)

	(unless (file-directory-p el-get-recipe-path-elpa)
		(el-get-elpa-build-local-recipes))

	(setq package-list
				'(;; general utilities
					el-get
					ac-helm
					apt-utils
					auto-complete
					flycheck
					flymake
					helm
					helm-projectile
					magit
					magit-tramp
					magit-view-file
					projectile
					tramp
					yasnippet
					yasnippet-snippets
					yasnippets

					;; shell & terminal
					emux
					exec-path-from-shell
					multi-term
					sane-term
					term+

					;; Org mode
					org-mode
					org-ac
					org-bullets
					;; org-grep

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
					helm-themes
					birds-of-paradise-plus-theme

					;; help, discovery & learning
					discover
					guide-key
					discover-my-major

					;; standard formats
					csv-mode
					json-mode
					markdown-mode
					web-mode
					ac-html
					yaml-mode
					sml-mode

					;; configs
					systemd-mode
					crontab-mode
					apache-mode
					nginx-mode

					;; Lisp families					
					geiser
					ac-geiser
					clojure-mode
					clojure-snippets
					slime
					ac-slime
					helm-slime				 
					cider
					ac-cider

					;; Go
					go-mode

					;; Rust
					rust-mode

					;; Lua
					lua-mode
					flymake-lua

					;; Python
					jinja2-mode
					python
					ac-python
					anaconda-mode

					;; Ruby
					enh-ruby-mode
					flymake-ruby
					yard-mode
					haml-mode
					slim-mode
					rdoc-mode

					;; Css
					css-mode
					sass-mode
					scss-mode
					flymake-css
					helm-css-scss

					;;Javascript
					js2-mode
					ac-js2
					js3-mode
					jade-mode
					handlebars-mode					
					coffee-mode
					flymake-coffee

					;; php
					ac-php
					php-mode

					;; dired
					dired+
					dired-details
					dired-details+
					direx

					;; Docker
					docker
					dockerfile-mode

					;; modeline
					smart-mode-line
					rich-minority
					powerline

					;; Additional utilities
					ac-company
					ace-window
					aggressive-indent-mode
					browse-kill-ring
					expand-region
					free-keys
					iregister
					rainbow-mode
					smartparens
					tail
					undo-tree
					zoom-window))

	(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
	(el-get 'sync package-list)

	(setq package-list-elpa
				'(emamux
					restclient
					ember-mode
					clojurescript-mode
					clj-mode))

	(el-get 'sync package-list-elpa))

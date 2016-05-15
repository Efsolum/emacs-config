
(when
		(require 'projectile nil 'noerror)

	(projectile-global-mode)
	(setq projectile-enable-caching t)

	(when (featurep 'helm)
		(setq projectile-completion-system 'helm)
		(setq projectile-switch-project-action 'helm-projectile)
		(helm-projectile-on)))

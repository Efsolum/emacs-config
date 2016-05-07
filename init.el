
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
(setq column-number-mode t)
(setq line-number-mode t)
(setq column-number-mode t)
(setq display-battery-mode t)

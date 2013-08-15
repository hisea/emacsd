(add-to-list 'load-path "~/.emacs.d/")
(load "my_packages.el")

;; Transparent Background
(set-frame-parameter (selected-frame) 'alpha '(95 80))
(add-to-list 'default-frame-alist '(alpha 95 80))


;; Mac keyboard modifier key
;;(setq mac-command-modifier 'alt)
;;(setq mac-option-modifier 'meta)
;;(setq mac-control-modifier 'alt)

;;(setq ns-command-modifier 'meta)
;;(setq ns-function-modifier 'super)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq visible-bell t)

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

;;Remove Trailing Space on Save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq nobreak-char-display t)
;; Font

(set-frame-font "Liberation Mono-14")
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "Hiragino Sans GB" ))

;; Startup Size
(if window-system
      (set-frame-size (selected-frame) 180 70))

;; Theme
(load-theme 'solarized-dark t)

;; Package
;; (require 'switch-window)

;; (require 'ido)
(ido-mode t)

;; (require 'textmate)
(textmate-mode)

(require 'smex)

;; (smex-initialize)

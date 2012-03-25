(push "/usr/local/bin" exec-path)

;; Mac keyboard modifier key
;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'alt)
;;(setq mac-control-modifier 'alt)

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

(set-frame-font "Menlo-15")
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "Hiragino Sans GB" ))

(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)


;; start of plugins
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
(require 'rinari)

;; Textmate mode
(require 'textmate)
(textmate-mode)

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(require 'sass-mode)
(require 'haml-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/mode-compile")
(require 'rspec-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)

(yas/load-directory "~/.emacs.d/plugins/yasnippets-rails/rails-snippets")
(yas/initialize)


;; Theme
(add-to-list 'custom-theme-load-path 
             "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path 
             "~/.emacs.d/themes/zenburn-emacs")

;;(load-theme 'solarized-light t)
;;(load-theme 'solarized-dark t) ;; solarized dark theme 
(load-theme 'tango' t)
;;(load-theme 'zenburn' t)


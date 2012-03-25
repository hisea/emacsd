(push "/usr/local/bin" exec-path)


;; Mac keyboard modifier key
;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'alt)
;;(setq mac-control-modifier 'alt)

(setq ns-command-modifier 'meta)
(setq ns-function-modifier 'super)

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

;; Font

(set-frame-font "Menlo-15")
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "Hiragino Sans GB" ))

;; Theme
(add-to-list 'custom-theme-load-path 
             "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path 
             "~/.emacs.d/themes/zenburn-emacs")

;;(load-theme 'solarized-light t)
;;(load-theme 'solarized-dark t) ;; solarized dark theme 
(load-theme 'tango' t)
;;(load-theme 'zenburn' t)


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
(add-to-list 'load-path "~/.emacs.d/plugins/textmate.el")
(require 'textmate)
(textmate-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/rvm.el")
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(add-to-list 'load-path "~/.emacs.d/plugins/haml-mode")
(require 'haml-mode)
(add-to-list 'load-path "~/.emacs.d/plugins/sass-mode")
(require 'sass-mode)


(add-to-list 'load-path "~/.emacs.d/plugins/mode-compile")
(add-to-list 'load-path "~/.emacs.d/plugins/rspec-mode")
(require 'rspec-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode")
(require 'coffee-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)

(yas/load-directory "~/.emacs.d/plugins/yasnippets-rails/rails-snippets")
(yas/initialize)


;; Files Types

;;coffee
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;rails
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

;; Yaml
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))


(push "/usr/local/bin" exec-path)

(setq mac-command-modifier 'meta)
;;(setq mac-control-modifier 'alt)
;;(setq mac-option-modifier 'control)

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

(require 'sass-mode)

(require 'haml-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/load-directory
 (concat "~/.emacs.d/plugins/yasnippets-rails/rails-snippets/"))
(yas/initialize)


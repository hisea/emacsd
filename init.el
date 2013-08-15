(add-to-list 'load-path "~/.emacs.d/")
(load "my_packages.el")

;; Transparent Background
(set-frame-parameter (selected-frame) 'alpha '(95 80))
(add-to-list 'default-frame-alist '(alpha 95 80))


;; Mac keyboard modifier key
;;(setq mac-command-modifier 'alt)
;;(setq mac-option-modifier 'meta)
;;(setq mac-control-modifier 'alt)

;; (setq ns-command-modifier 'meta)
(setq ns-function-modifier 'super)

(global-set-key (kbd "s-SPC") 'set-mark-command)

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
(electric-pair-mode t)
(tooltip-mode -1)
(global-linum-mode 1);
(hl-line-mode t) ; turn on highlight line mode

;;Remove Trailing Space on Save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq nobreak-char-display t)
(setq require-final-newline 'visit-save)
;; Font

(set-frame-font "Liberation Mono-14")
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "Hiragino Sans GB" ))

;; Startup Size
(if window-system
      (set-frame-size (selected-frame) 170 50))

;; Theme
(load-theme 'solarized-dark t)

;; Package
;; (require 'switch-window)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; (require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
ido-enable-flex-matching t
ido-use-filename-at-point 'guess
ido-max-prospects 10)

;; (require 'textmate)
(textmate-mode)

;; Highlight Current Line
(hl-line-mode)

;;Enable Yasnippets
(yas-global-mode 1)
(add-to-list 'yas/root-directory "~/.emacs.d/snippets/yasnippet-snippets")
;; (require 'smex)

(smex-initialize)
(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))
(require 'git-gutter-fringe)
;; (require 'git-gutter)
(fringe-mode)
(git-gutter)

(global-set-key (kbd "\C-c\C-c") 'comment-or-uncomment-region) ;; highlight region and comment


;; Ruby Mode Adjustments
;; --------------------
;; making ruby mode take effect in our odd Rails project files
(setq auto-mode-alist (cons '("\\.rake\\'" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Gemfile*" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Capfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.erb\\'" . rhtml-mode) auto-mode-alist))
(add-hook 'ruby-mode-hook
     (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent))) ;; hitting enter will indent.

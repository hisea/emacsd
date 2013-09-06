;;Get shell exec path
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Transparent Background
(set-frame-parameter (selected-frame) 'alpha '(95 80))
(add-to-list 'default-frame-alist '(alpha 95 80))


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
(add-to-list 'default-frame-alist
             '(font ."Liberation Mono-14"))
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "Hiragino Sans GB" ))

;; Startup Size
(if window-system
      (set-frame-size (selected-frame) 170 50))

;; Theme
(load-theme 'solarized-dark t)

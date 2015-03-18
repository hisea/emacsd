;;Get shell exec path
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Transparent Background
;; (set-frame-parameter (selected-frame) 'alpha '(95 80))
;; (add-to-list 'default-frame-alist '(alpha 95 80))


(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq visible-bell t)
(menu-bar-mode -1)


(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)

(electric-pair-mode t)
(tooltip-mode -1)
(global-linum-mode 1);
(hl-line-mode t) ; turn on highlight line mode

;;Remove Trailing Space on Save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq nobreak-char-display t)
(setq require-final-newline 'visit-save)

;; Font
(when (display-graphic-p)
  (set-frame-font "Liberation Mono For Powerline-14")
  (add-to-list 'default-frame-alist
               '(font ."Liberation Mono For Powerline-14"))
  (set-fontset-font
      (frame-parameter nil 'font)
      'han
      (font-spec :family "Hiragino Sans GB" )))
;; Startup Size
(if (display-graphic-p)
    (progn
      (set-fringe-style -1)
      (scroll-bar-mode -1)
      (tool-bar-mode -1)
      (set-frame-size (selected-frame) 170 50)
      ))

;; Theme
;; (load-theme 'base16-tomorrow t)
(require 'darcula-theme)

;; ido mode
(ido-mode t)
(setq ido-enable-prefix nil
ido-enable-flex-matching t
ido-use-filename-at-point 'guess
ido-max-prospects 10)

;; Smex
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




;; (textmate-mode)

;;Enable Yasnippets
(setq yas-snippet-dirs '("~/.emacs.d/snippets/yasnippet-snippets"))
(yas-global-mode 1)
(require 'neotree)

(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

(require 'evil-leader)
(require 'evil)
(global-evil-leader-mode)
(evil-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

;; Git Gutter
(require 'git-gutter)
(set-face-foreground 'git-gutter:modified "cyan3")
(set-face-foreground 'git-gutter:added    "SeaGreen3")
(set-face-foreground 'git-gutter:deleted  "orchid3")
;; (global-git-gutter-mode +1)

;; Key Bindings

; setting Super ＆ Hyper keys for the Mac keyboard, for emacs running in OS X
(setq mac-option-modifier 'meta) ; sets the Option key as Hyper
(setq mac-command-modifier 'super) ; sets the Command key as Meta
;; (setq mac-control-modifier 'meta) ; sets the Control key as Meta
(setq ns-function-modifier 'hyper) ; set Mac's Fn key to type Hyper

(evil-leader/set-key
  "p" 'projectile-find-file
  "n" 'neotree-toggle
  "\\" 'ace-jump-mode
  "/" 'evilnc-comment-or-uncomment-lines
  "l" 'linum-mode
  "[" 'indent-rigidly-left-to-tab-stop
  "]" 'indent-rigidly-right-to-tab-stop
  "w" 'ace-window
  "b" 'ace-jump-buffer
  "B" 'ibuffer)

;; Key Mappings
;; (global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-/") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "s-b") 'ibuffer)
(global-set-key (kbd "s-<backspace>") 'kill-whole-line)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "M-F") 'ag)

(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)


(global-set-key (kbd "M-[") 'indent-rigidly-left-to-tab-stop)
(global-set-key (kbd "M-]") 'indent-rigidly-right-to-tab-stop)

(windmove-default-keybindings 'super)
(global-set-key (kbd "\C-c\C-c") 'comment-or-uncomment-region) ;; highlight region and comment
(global-set-key (kbd "s-\\") 'magit-status)

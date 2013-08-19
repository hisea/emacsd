(add-to-list 'load-path "~/.emacs.d/")
(load "my_packages.el")

(load "my_basic_configs.el")
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

(require 'dired-details+)
;; (require 'textmate)
(textmate-mode)

;; Highlight Current Line
(hl-line-mode)

;;Enable Yasnippets
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"            ;; personal snippets
        "~/.emacs.d/yasnippet-snippets"    ;; the default collection
        ))
(yas-global-mode 1)

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

;;Git-Gutter-Fringe Plus
(fringe-mode)
(require 'git-gutter-fringe)
(set-face-foreground 'git-gutter-fr:modified "cyan3")
(set-face-foreground 'git-gutter-fr:added    "SeaGreen3")
(set-face-foreground 'git-gutter-fr:deleted  "orchid3")
(global-git-gutter-mode t)

;; Ruby Mode Adjustments
;; --------------------
;; making ruby mode take effect in our odd Rails project files
(setq auto-mode-alist (cons '("\\.rake\\'" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Gemfile*" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Capfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.erb\\'" . rhtml-mode) auto-mode-alist))
(add-hook 'ruby-mode-hook
          (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent))) ;; hitting enter will indent.
(add-hook 'haml-mode-hook 'highlight-indentation-mode)

(load "my_bindings.el")

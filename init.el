
(add-to-list 'load-path "~/.emacs.d/")

(load "my_packages.el")
(load "my_basic_config.el")

(require 'load-directory)
 (load-directory "~/.emacs.d/config")

(require 'dired-details+)
(textmate-mode)

;;Enable Yasnippets
(setq yas-snippet-dirs '("~/.emacs.d/snippets/rails-snippets"))
(yas-global-mode 1)


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

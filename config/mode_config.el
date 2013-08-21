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
(add-hook 'slim-mode-hook 'highlight-indentation-mode)

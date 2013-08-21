;;Git-Gutter-Fringe Plus
(fringe-mode)
(require 'git-gutter-fringe)
(set-face-foreground 'git-gutter-fr:modified "cyan3")
(set-face-foreground 'git-gutter-fr:added    "SeaGreen3")
(set-face-foreground 'git-gutter-fr:deleted  "orchid3")
(global-git-gutter-mode t)

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



;;Tabbar
(require 'tabbar)
(setq tabbar-background-color "#81908f") ;; the color of the tabbar background
;; (setq tabbar-use-images nil)

(custom-set-faces
 '(tabbar-default ((t (:inherit variable-pitch :background "#042028" :foreground "#81908f" ))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "#81908f"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default))))
 '(tabbar-highlight ((t (:underline nil))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#042028" :weight bold))))
 '(tabbar-separator ((t (:inherit tabbar-default :background "#042028" :line-width 5))))
 '(tabbar-unselected ((t (:inherit tabbar-default :background "#465a61")))))


(require 'dired-details+)
(textmate-mode)

;;Enable Yasnippets
(setq yas-snippet-dirs '("~/.emacs.d/snippets/rails-snippets"))
(yas-global-mode 1)

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




(textmate-mode)

;;Enable Yasnippets
(setq yas-snippet-dirs '("~/.emacs.d/yasnippet-snippets"
                         "~/.emacs.d/snippets/elixir-yasnippets"))
(yas-global-mode 1)
(require 'neotree)


(projectile-global-mode)

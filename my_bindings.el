;; Mac keyboard modifier key
;;(setq mac-command-modifier 'alt)
;;(setq mac-option-modifier 'meta)
;;(setq mac-control-modifier 'alt)

;; (setq ns-command-modifier 'meta)
(setq ns-function-modifier 'super)


;; Key Mappings
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "s-b") 'ibuffer)
(global-set-key (kbd "s-<backspace>") 'kill-whole-line)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "s-F") 'helm-ag)

(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "s-0") 'delete-window)

(windmove-default-keybindings 'super)
(global-set-key (kbd "\C-c\C-c") 'comment-or-uncomment-region) ;; highlight region and comment
(global-set-key (kbd "s-`") 'ace-jump-mode)
(global-set-key (kbd "s-\\") 'magit-status)

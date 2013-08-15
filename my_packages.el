(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))



(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(color-theme-solarized
    textmate
    sass-mode
    coffee-mode
    ace-jump-mode
    switch-window
    flycheck
    git-gutter-fringe
    magit
    auto-complete
    exec-path-from-shell
    ag
    helm
    helm-ag
    org
    yasnippet
    rinari
    smex)
  "List of packages needs to be installed at launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))

(package-initialize)

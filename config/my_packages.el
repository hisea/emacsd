(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))



(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(color-theme-solarized
    base16-theme
    darcula-theme
    alchemist
    evil
    evil-leader
    evil-nerd-commenter
    company
    windmove
    multiple-cursors
    git-gutter
    markdown-mode
    rbenv
    neotree
    highlight-indentation
    scss-mode
    sass-mode
    coffee-mode
    ace-jump-mode
    switch-window
    flymake
    flymake-cursor
    flymake-jshint
    flymake-ruby
    flymake-elixir
    elixir-mode
    elixir-yasnippets
    erlang
    magit
    exec-path-from-shell
    ag
    pt
    grizzl
    projectile
    helm
    org
    yasnippet
    web-mode
    nginx-mode
    yaml-mode
    haml-mode
    slim-mode
    rhtml-mode
    js3-mode
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

(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))



(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(color-theme-solarized
    windmove
    textmate
    markdown-mode
    rbenv
    highlight-indentation
    dired-details+
    dired+
    sass-mode
    coffee-mode
    ace-jump-mode
    switch-window
    flymake
    flymake-cursor
    flymake-jshint
    flymake-ruby
    flymake-elixir
    tabbar
    elixir-mode
    elixir-mix
    elixir-yasnippets
    erlang
    git-gutter-fringe
    magit
    auto-complete
    exec-path-from-shell
    ag
    helm
    org
    yasnippet
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

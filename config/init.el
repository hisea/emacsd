(add-to-list 'load-path "~/.emacs.d/config")

(load "my_packages.el")
(load "my_basic_config.el")
(load "package_config.el")
(load "mode_config.el")

;; (require 'load-directory)
;;  (load-directory "~/.emacs.d/config")

(load "my_bindings.el")

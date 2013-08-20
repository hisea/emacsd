(require 'tabbar)
(setq tabbar-background-color "#81908f") ;; the color of the tabbar background

(custom-set-faces
 '(tabbar-default ((t (:inherit variable-pitch :background "#042028" :foreground "#81908f"))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "#81908f"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default))))
 '(tabbar-highlight ((t (:underline nil))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#042028" :weight bold))))
 '(tabbar-separator ((t (:inherit tabbar-default :background "#042028"))))
 '(tabbar-unselected ((t (:inherit tabbar-default :background "#465a61")))))

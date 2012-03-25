;;; Commentary:

;; Some packages ship with broken implementations of `format-spec';
;; for example, stable versions of TRAMP and ERC do this.  To fix
;; this, you can put the following at the end of your ~/.emacs:

;;   (unless (zenburn-format-spec-works-p)
;;     (zenburn-define-format-spec))

;; Thanks to Jani Nurminen, who created the original zenburn color
;; theme for vim.  I'm just copying him. :-)


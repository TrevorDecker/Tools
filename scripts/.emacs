;; The .emacs file describes settings for using emacs
;; Written by Trevor Decker 


; have line numbers on by default
(setq line-number-mode t)
(setq column-number-mode t)

; have line numbers show on the page
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(global-linum-mode 1)

; adds space after numbers 
(defun linum-format-func (line)
  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
     (propertize (format (format "%%%dd " w) line) 'face 'linum)))
(setq linum-format 'linum-format-func)


; set foreground/background
(set-foreground-color "black")
(set-background-color "white")

;; highlights lines that are more than the line width (default 80 chars)
;(require 'whitespace)
;(setq whitespace-style '(face empty tabs lines-tail trailing))
;(global-whitespace-mode t)

;;;
;; Company Mode
;;;

;; enable company-mode everywhere
;; use TAB for autocomplete and indent
(defun company-init-hook ()
  (message "Running company init hook")
  (global-company-mode)
  (message "Rebinding tab to company-indent-or-complete-common")
  (global-set-key (kbd "TAB") #'company-indent-or-complete-common))

(add-hook 'after-init-hook 'company-init-hook)

(provide 'init-company-mode)

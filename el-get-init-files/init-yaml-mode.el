(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'yaml-mode-hook
					(lambda ()
            (define-key yaml-mode-map "\C-j" 'newline-and-indent)))

(provide 'init-yaml-mode)

(eval-after-load 'yasnippet
	'(progn (add-to-list 'yas-snippet-dirs
											 "~/.emacs.d/snippets")))

(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "M-/") 'yas-expand)

(provide 'init-yasnippet)

(global-set-key (kbd "C-x f") 'find-file-in-project)

(eval-after-load 'find-file-in-project
  '(progn
     (add-to-list 'ffip-patterns "*.html.erb" t)
     (add-to-list 'ffip-patterns "*.scss" t)
		 (add-to-list 'ffip-patterns "*.js" t)
		 (add-to-list 'ffip-patterns "*.rb" t)
		 (add-to-list 'ffip-patterns "*.clj" t)))

(provide 'init-find-file-in-project)

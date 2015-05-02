(global-set-key (kbd "C-x f") 'find-file-in-project)

(eval-after-load 'find-file-in-project
  '(progn
     (add-to-list 'ffip-patterns "*.html.erb" t)))

(provide 'init-find-file-in-project)

(setq org-journal-dir "~/Dropbox/orgs/journal/")

(eval-after-load 'org-journal
	'(progn
		 (global-set-key (kbd "C-c c s") 'org-journal-search)))

(provide 'init-org-journal)

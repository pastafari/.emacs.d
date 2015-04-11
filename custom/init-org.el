;; Org mode setup
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "|" "DONE" "DELEGATED|FOLLOW-UP")))

;; Adds timestamps to DONE todos
(setq org-log-done t)
(setq org-agenda-files (list "~/Dropbox/orgs/"))

(add-to-list 'org-export-backends 'md)
;; END org mode setup

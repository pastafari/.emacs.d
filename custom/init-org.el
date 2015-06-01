;; Org mode setup
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "|" "DONE" "DELEGATED|FOLLOW-UP")))

;; Adds timestamps to DONE todos
(setq org-log-done t)
(setq org-agenda-files (list "~/Dropbox/orgs/"))

;; To track habits
(require 'org-install)
(require 'org-habit)
(add-to-list 'org-modules 'org-habit)
(setq org-habit-show-habits-only-for-today t)
(setq org-habit-graph-column 40)
(setq org-habit-preceding-days 7)
(setq org-habit-following-days 1)

(add-to-list 'org-export-backends 'md)
;; END org mode setup

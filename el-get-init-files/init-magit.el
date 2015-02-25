;;;
;; Magit mode
;;;


(global-set-key (kbd "C-x g") 'magit-status)

(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list
                       "el-get/magit/")))

(eval-after-load 'magit
  '(progn (setq-default magit-auto-revert-mode-lighter nil)))

(provide 'init-magit)

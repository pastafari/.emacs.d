;; H/T to http://blog.jenkster.com/2013/10/a-tip-for-navigating-clojure-files-in-emacs.html
(defun helm-clojure-headlines ()
  "Display headlines for the current Clojure file."
  (interactive)
  (helm-mode t)
  (helm :sources '(((name . "Clojure Headlines")
                    (volatile)
                    (headline "^[;(]")))))

(provide 'init-helm)

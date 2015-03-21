;; On Mac OS X, copy PATH from sh
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

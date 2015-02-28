;;;;
;; Cider
;;;;

;; go right to the REPL buffer when it's finished connecting
(setq cider-repl-pop-to-buffer-on-connect t)

;; When there's a cider error, show its buffer and switch to it
(setq cider-show-error-buffer t)
(setq cider-auto-select-error-buffer t)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; have an nrepl-messages buffer to see whats going on
(setq nrepl-log-messages t)


;; Because of cut-paste fuckery, can't start from shell, no PATH, and so forth.
;; TODO: fix this.
(setq cider-lein-command "/usr/local/bin/lein")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; enable paredit in your REPL
(add-hook 'cider-repl-mode-hook 'paredit-mode)

;; better docs in cider
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(eval-after-load 'cider
  '(progn (define-key clojure-mode-map (kbd "TAB") 'complete-symbol)))

(provide 'init-cider)




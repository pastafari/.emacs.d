;;; UI setup
;;; Hide the menu-bar, scroll-bar, tool-bar when in GUI mode
(if (display-graphic-p)
  (progn
    (menu-bar-mode -1)
    (tool-bar-mode -1)
    (scroll-bar-mode -1)))

;; No cursor blinking, it's distracting
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)

;; Enable line numbers globally
(global-linum-mode 1)

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)
;; End UI setup

;; Put emacs specific stuff here. Nothing package related.

(setq initial-scratch-message
"                           ALOHA! WELCOME TO EMACS.
;;         ===.
;;     =====.==`.               __,------._
;;        ===`.8=);   _/)    .-'           ``-.
;;        _ (G^ @@__ / '.  .' By Toutatis, the `.
;;  ,._,-'_`-/,-^( _).__: .' druid's potion has :
;; (    / .MMm.Y_)/      ,'   turned me into    |
;;  `'(|.oMMMM       __,',-'`._  ascii art!   ,'
;;  d88:'mOom        `--'      `-..______,--''
;;  88::(::d88b
;;  Y88  ':88888
;;_________888P__________________________________________________osfa
;;|                                                                  |
;;|  Asterix, le heros de ces aventures.  Petit guerrier a l'esprit  |
;;|  malin, a l'intelligence vive, toutes les missions  perilleuses  |
;;|  lui sont confiees sans hesitation.  Asterix tire sa force sur-  |
;;|  humaine de la potion magique du druide Panoramix...             |
;;|__________________________________________________________________|
")

(require 'ansi-color)

(setq inhibit-startup-screen t)

;; Less GC pauses
(setq gc-cons-threshold 20000000)

;; No backup files. Because, Git
(setq make-backup-files nil)

(when (display-graphic-p)
  (add-hook 'emacs-startup-hook 'zone))

;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; revert buffer when file changes
(global-auto-revert-mode)

;; spaces not tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; 80 columns matter
(setq-default fill-column 80)
(global-visual-line-mode)

;; Use emacs-custom.el for custom stuff
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

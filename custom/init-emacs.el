;; Put emacs specific stuff here. Nothing package related.

(setq initial-scratch-message
"
;;         ===.
;;     =====.==`.               __,------._
;;        ===`.8=);   _/)    .-'           ``-.
;;        _ (G^ @@__ / '.  .' By Toutatis, the `.
;;  ,._,-'_`-/,-^( _).__: .' druid's potion has :
;; (    / .MMm.Y_)/      ,'   turned me into    |
;;  `'(|.oMMMM       __,',-'`._  ascii art!   ,'
;;  d88:'mOom        `--'      `-..______,--''
;;  88::(::\d88b
;;  Y88  ':88888
;;_________888P__________________________________________________osfa
;;|                                                                  |
;;|  Asterix, le heros de ces aventures.  Petit guerrier a l'esprit  |
;;|  malin, a l'intelligence vive, toutes les missions  perilleuses  |
;;|  lui sont confiees sans hesitation.  Asterix tire sa force sur-  |
;;|  humaine de la potion magique du druide Panoramix...             |
;;|__________________________________________________________________|
")

(setq inhibit-startup-screen t)

;; Less GC pauses
(setq gc-cons-threshold 20000000)

;; No backup files. Because, Git
(setq make-backup-files nil)

(add-hook 'emacs-startup-hook 'zone)
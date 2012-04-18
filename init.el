;; Start in fullscreen mode by default
(set-frame-parameter nil 'fullscreen 'fullboth)


;; Package management 
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings
                                  starter-kit-ruby starter-kit-js starter-kit-eshell)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Not yet packages. Useful all the same!
;; Textmate emulation by @defunkt
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(textmate-mode)


;; Default color-theme. Zenburn (https://github.com/bbatsov/zenburn-emacs)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn)


;; Default font is Inconsolata 18pt
(set-face-attribute 'default nil
                    :family "Inconsolata" :height 180 :weight 'normal)

;;Auto-generated. Don't mess!
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("875d4c790cc0a3f334274c69b861da32d01202c4" "b0950b032aa3c8faab4864ae288296dd66b92eca" "1056c413dd792adddc4dec20e8c9cf1907e164ae" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

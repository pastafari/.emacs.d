;; Customizations are under custom/ and are loaded individually.
;; Everything else is via el-get, and el-get-init-files

;; Customizations

(add-to-list 'load-path "~/.emacs.d/custom/")

;; Order is important, zone setup is required by emacs
;; TODO: clean up so that order isnt important!
(load "init-zone.el")
(load "init-emacs.el")
(load "init-ui.el")
(if (eq system-type 'darwin)
    (load "init-osx.el"))
(load "init-ido.el")
(load "init-org.el")
;; (load "init-merlin.el")
;; END Customizations

;; el-get basic setup

(add-to-list 'load-path "~/.emacs.d/el-get/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(defun bootstrap-el-get ()
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(unless (require 'el-get nil 'noerror)
  (bootstrap-el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list
                       "~/.emacs.d/el-get/el-get/")))

(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")

;; My packages
(defvar my-packages '(ace-jump-mode
											ag
											rainbow-delimiters
											paredit
											company-mode
											clojure-mode
											clj-refactor
											cider
											darcula-theme
											dash
											exec-path-from-shell
											find-file-in-project
                      ido-ubiquitous
											inf-ruby
											magit
											markdown-mode
											multiple-cursors
											org-journal
											rubocop
											scss-mode
											tuareg-mode
											yaml-mode
											yasnippet
                      web-mode
											wc-mode
											wgrep))

(el-get 'sync my-packages)
;; END el-get setup

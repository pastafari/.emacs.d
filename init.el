;; Load path
(add-to-list 'load-path "~/.emacs.d/el-get/")

;;; TODO: move this into its own file. figure out customizations with el-get
;;; UI setup
;;; Hide the menu-bar, scroll-bar, tool-bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

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

;;; Customizations for Mac OS X
(defun copy-from-osx ()
  "Make cut and paste work with the OS X clipboard"
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  "Make cut and paste work with the OS X clipboard"
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx
      interprogram-paste-function 'copy-from-osx
      mac-option-modifier 'super
      mac-command-modifier 'meta)
;;; End Mac OS X

;; Enable global Ido mode
(add-hook 'ido-setup-hook
 (lambda ()
   ;; Go straight home
   (define-key ido-file-completion-map
     (kbd "~")
     (lambda ()
       (interactive)
       (if (looking-back "/")
           (insert "~/")
         (call-interactively 'self-insert-command))))))
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-virtual-buffers t)
;; END IDO

;; enable recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; end recentf setup

;; Less GC pauses
(setq gc-cons-threshold 20000000)
;;

;; No backup files. Because, Git
(setq make-backup-files nil)
;;

;; Org mode setup
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "|" "DONE" "DELEGATED|FOLLOW-UP")))

;; Adds timestamps to DONE todos
(setq org-log-done t)
(setq org-agenda-files (list "~/Dropbox/orgs/"))

(setq initial-buffer-choice "~/Dropbox/orgs/work.org")
;; END org mode setup

;; el-get basic setup
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

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
		      cider
		      darcula-theme
		      exec-path-from-shell
		      find-file-in-project
                      ido-ubiquitous
		      inf-ruby
		      magit
		      markdown-mode))

(el-get 'sync my-packages)
;; END el-get setup

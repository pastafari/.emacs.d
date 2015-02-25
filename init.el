;; Load path
(add-to-list 'load-path "~/.emacs.d/el-get/")

;;; TODO: move this into its own file. figure out customizations with el-get
;;; UI setup
;;; Hide the menu-bar, scroll-bar, tool-bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; I'm actually not sure what this does but it's recommended?
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      ;; Shows all options when running apropos. For more info,
      ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
      apropos-do-all t

      ;; Mouse yank commands yank at point instead of at click.
      mouse-yank-at-point t)

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
;; END UI setup


;; On Mac OS, set Command key to be meta, and option key to be super
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; Enable global Ido mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Org mode setup
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
;; Adds timestamps to DONE todos
(setq org-log-done t)
(setq org-agenda-files (list "~/Dropbox/orgs/work.org"
			     "~/Dropbox/orgs/personal.org"
			     "~/Dropbox/orgs/rebelguru.org"))
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

;; Exec path for Mac
(when (eq system-type 'darwin)
  (el-get 'sync '(exec-path-from-shell)))

;; My packages
(defvar my-packages '(ace-jump-mode
		      clojure-mode
                      company-mode
		      darcula-theme
                      ido-ubiquitous
		      magit
		      markdown-mode
		      paredit
		      rainbow-delimiters))

(el-get 'sync my-packages)
;; END el-get setup

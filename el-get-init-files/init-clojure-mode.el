
;;; init-clojure-mode.el --- Configuration for Clojure Mode
;;; Author: Mohit Thatte (inspired by Vedang Manerikar)
;;; Created on: 17 Feb 2015
;;; Copyright (c) 2015 Mohit Thatte <mohit.thatte@gmail.com>

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the Do What The Fuck You Want to
;; Public License, Version 2, which is included with this distribution.
;; See the file LICENSE.txt

;;; Code:


(defun pretty-fns ()
  (font-lock-add-keywords
   nil `(("(\\(fn\\)[\[[:space:]]"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    "ƒ")
                    nil))))))


(defun pretty-reader-macros ()
  (font-lock-add-keywords
   nil `(("\\(#\\)("
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))


(defun pretty-sets ()
  (font-lock-add-keywords
   nil `(("\\(#\\){"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    "∈")
                    nil))))))


(eval-after-load 'clojure-mode
  '(progn
     (require 'clojure-mode-extra-font-locking)
     (add-hook 'clojure-mode-hook #'paredit-mode)
     (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)   
     (add-hook 'clojure-mode-hook 'pretty-fns)
     (add-hook 'clojure-mode-hook 'pretty-sets)
     (add-hook 'clojure-mode-hook 'pretty-reader-macros)
     (add-hook 'clojure-mode-hook 'subword-mode)))

(provide 'init-clojure-mode)
;;; init-clojure-mode ends here

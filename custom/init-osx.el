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


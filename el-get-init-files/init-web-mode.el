(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))

(defun web-mode-customizations ()
  (setq-default web-mode-enable-auto-pairing t)
  (setq-default web-mode-enable-css-colorization t)
  (setq-default web-mode-enable-current-column-highlight t)
  (setq-default web-mode-enable-current-element-highlight t)
  (setq-default web-mode-markup-indent-offset 2)
  (setq-default web-mode-css-indent-offset 2)
  (setq-default web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'web-mode-customizations)

(provide 'init-web-mode)

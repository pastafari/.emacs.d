(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(setq-default web-mode-enable-auto-pairing t)
(setq-default web-mode-enable-css-colorization t)
(setq-default web-mode-enable-current-column-highlight t)
(setq-default web-mode-enable-current-element-highlight t)

(setq-default web-mode-markup-indent-offset 2)
(setq-default web-mode-css-indent-offset 2)
(setq-default web-mode-code-indent-offset 2)

(eval-after-load 'web-mode
  (progn '(add-to-list 'web-mode-engines-alist '(("mustache" . "\\.erb\\'")))))

(provide 'init-web-mode)

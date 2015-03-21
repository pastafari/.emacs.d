(setq enh-ruby-program "/Users/mohit/.rbenv/shims/ruby")
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'rinari-minor-mode)

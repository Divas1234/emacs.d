(use-package flycheck-color-mode-line
  :config (eval-after-load "flycheck"
    '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)))

(provide 'pkg-tabbar)
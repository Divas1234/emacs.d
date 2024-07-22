;;; Icons
(use-package nerd-icons)

(use-package nerd-icons-completion
  :config (nerd-icons-completion-marginalia-setup)
          (nerd-icons-completion-mode 1))

(use-package nerd-icons-corfu
  :config (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

(use-package nerd-icons-dired
  :config (add-hook 'dired-mode-hook #'nerd-icons-dired-mode))

(provide 'init-icon)
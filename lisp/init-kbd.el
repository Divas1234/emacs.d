(use-package emacs
:config
    (defalias 'yes-or-no-p 'y-or-n-p))

(use-package crux
    :bind  (("C-a" . crux-move-beginning-of-line)
            ("C-c ^" . crux-top-join-line)
            ("C-x ," . crux-find-user-init-file)
            ("C-S-d" . crux-duplicate-current-line-or-region)
            ("C-S-k" . crux-smart-kill-line)))

(use-package which-key
    :defer nil
    :config 
    (setq which-key-max-description-length 27
          which-key-add-column-padding 0
          which-key-max-display-columns nil
          which-key-separator " → " 
          which-key-unicode-correction 3
          which-key-prefix-prefix "+" 
          which-key-special-keys nil
          which-key-show-prefix 'left
          which-key-show-remaining-keys nil)
    (which-key-mode))

(provide 'init-kbd)
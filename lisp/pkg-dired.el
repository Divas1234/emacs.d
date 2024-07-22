  ;; Hide hidden files
  (use-package dired-hide-dotfiles
    :hook
    (dired-mode . dired-hide-dotfiles-mode)
    :bind
    (:map dired-mode-map ("." . dired-hide-dotfiles-mode)))

(use-package dired
    :ensure
    nil
    :commands
    (dired dired-jump)
    :init
    (with-eval-after-load 'dired (require 'dired-x))
    :config
    (put 'dired-find-alternate-file 'disabled nil)
    :custom
    (dired-listing-switches
     "-goah --group-directories-first --time-style=long-iso")
    (dired-dwim-target t)
    (delete-by-moving-to-trash t)
    (dired-omit-files (rx (seq bol "."))) ;; Omit dot files
    :bind
    (:map dired-mode-map ("." . dired-omit-mode))
    :hook
    (dired-mode . dired-omit-mode))

  ;; Backup files
  (setq-default backup-directory-alist
                `(("." . ,(expand-file-name "backups/" user-emacs-directory)))
                create-lockfiles nil)  ; No lock files

  ;; Recent files
  (use-package recentf
    :config
    (recentf-mode t)
    (run-at-time nil (* 5 60) 'recentf-save-list)
    :custom
    (recentf-max-saved-items 50))

(provide 'pkg-dired)
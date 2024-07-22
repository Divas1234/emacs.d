(use-package dashboard
  :config
  (use-package dashboard-project-status
   :config
    (add-to-list 'dashboard-item-generators
                 `(project-status . ,(dashboard-project-status *your directory*)))
    (add-to-list 'dashboard-items '(project-status) t)
    (setq dashboard-items '((project-status . 10)
                            (recents        . 10)
                            (agenda         . 10))))
  (dashboard-setup-startup-hook))

(provide 'pkg-dashboard)
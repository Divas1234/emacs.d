(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (julia-mode . lsp-deferred)
         (c)
         (python-mode . lsp-deferred)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :config
  (lsp-enable-which-key-integration t)
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :init
  (setq lsp-ui-doc-position 'at-point
        lsp-ui-doc-show-with-mouse nil
        lsp-ui-sideline-show-code-actions t)
  :bind (("C-c A" . lsp-execute-code-action)
         ("C-c d" . lsp-ui-doc-show)
         ("C-c I" . lsp-ui-imenu))
  :commands lsp-ui-mode
  :config (lsp-ui-mode t))

;; (use-package flycheck
;;   :defer)

;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; (use-package lsp-julia
;;     :after julia-repl eshell
;;     :config
;;     (setenv "PATH"
;;             (concat
;;             myHomeDir juliaVersion "/bin" ":"
;;             (getenv "PATH")))
;;     (add-hook 'julia-mode-hook 'lsp)
;;     (add-hook 'ess-julia-mode-hook #'lsp)
;;     (setq lsp-julia-default-environment "~/.julia/environments/v1.10")
;;     (setq lsp-julia-package-dir "~/.julia/environments/v1.10")
;;     (setq lsp-julia-command (concat
;;             myHomeDir juliaVersion "/bin/julia"
;;             ))
;;     (setq lsp-julia-flags '("--project=myHomeDir/.julia/environments/v1.10" "--startup-file=no" "--history-file=no"))
;;     (setq lsp-julia-timeout 12000)
;;     (setq lsp-enable-folding t)
;;     (setq julia-indent-offset 4)
;;     (setq lsp-julia-format-indents nil)
;;     (setq lsp-enable-indentation nil)
;; )

(use-package vterm
    :ensure t)
(use-package julia-mode
  :ensure t)

;; (use-package julia-repl
;;   :ensure t
;;   :hook (julia-mode . julia-repl-mode)
;;   :init (setenv "JULIA_NUM_THREADS" "32")
;;   :config
;;     ;; Set the terminal backend
;;     (julia-repl-set-terminal-backend 'vterm)
;;     ;; Keybindings for quickly sending code to the REPL
;;     (define-key julia-repl-mode-map (kbd "<C-RET>") 'my/julia-repl-send-cell)
;;     (define-key julia-repl-mode-map (kbd "<M-RET>") 'julia-repl-send-line)
;;     (define-key julia-repl-mode-map (kbd "<S-return>") 'julia-repl-send-buffer))


;; (defun my/julia-repl-send-cell() 
;;   ;; "Send the current julia cell (delimited by ###) to the julia shell"
;;   (interactive)
;;   (save-excursion (setq cell-begin (if (re-search-backward "^###" nil t) (point) (point-min))))
;;   (save-excursion (setq cell-end (if (re-search-forward "^###" nil t) (point) (point-max))))
;;   (set-mark cell-begin)
;;   (goto-char cell-end)
;;   (julia-repl-send-region-or-line)
;;   (next-line))

(provide 'pkg-lsp)
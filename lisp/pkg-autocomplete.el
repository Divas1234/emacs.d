(use-package company
:config
(setq company-dabbrev-code-everywhere t
      company-dabbrev-code-modes t
      company-dabbrev-code-other-buffers 'all
      company-dabbrev-downcase nil
      company-dabbrev-ignore-case t
      company-dabbrev-other-buffers 'all
      company-require-match nil
      company-minimum-prefix-length 2
      company-show-numbers t
      company-tooltip-limit 20
      company-idle-delay 0
      company-echo-delay 0
      company-tooltip-offset-display 'scrollbar
      company-begin-commands '(self-insert-command))
(push '(company-semantic :with company-yasnippet) company-backends)
:hook ((after-init global-company-mode)))

(global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-/") #'company-complete))
(with-eval-after-load 'company
  (define-key company-active-map
              (kbd "TAB")
              #'company-complete-common-or-cycle)
  (define-key company-active-map
              (kbd "<backtab>")
              (lambda ()
                (interactive)
                (company-complete-common-or-cycle -1))))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-.") #'company-show-location)
  (define-key company-active-map (kbd "RET") nil))
            
(use-package vertico
      :config (vertico-mode t))

(use-package orderless
      :config(setq completion-styles '(orderless)))

(use-package marginalia
      :config (marginalia-mode t))

(use-package embark
      :config (setq prefix-help-command 'embark-prefix-help-command)
      :bind ("C-;" . 'embark-act))

(use-package consult;;replace swiper
      :bind ("C-s" . 'consult-line))
;;consult-imenu

(provide 'pkg-autocomplete)
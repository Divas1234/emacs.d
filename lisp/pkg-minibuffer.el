(use-package ivy-posframe
:init (setq ivy-posframe-display-functions-alist
      '(
        ;; (swiper          . ivy-posframe-display-at-frame-center)
        ;; (complete-symbol . ivy-posframe-display-at-window-bottom-left)
        ;; (counsel-M-x     . ivy-posframe-display-at-window-bottom-left)
        ;; (counsel-find-file . ivy-posframe-display-at-frame-center)
        (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
        ;; (t               . ivy-posframe-display-at-window-bottom-left))
      ))
  (ivy-posframe-mode 1)
)

(use-package vertico
  :init (vertico-mode t))

(use-package orderless)
  :init (setq completion-styles '(orderless))

(use-package marginalia
  :init (marginalia-mode t))

(use-package embark
  :bind ("C-;" . 'embark-act)
  :init (setq prefix-help-command 'embark-prefix-help-command))

(use-package consult
  ;;replace swiper
  :init (global-set-key (kbd "C-s") 'consult-line))
;;consult-imenu

(provide 'pkg-minibuffer)
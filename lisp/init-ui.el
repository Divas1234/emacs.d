
;; (use-package gruvbox-theme
;;     :init (load-theme 'gruvbox-dark-soft t))

;; (use-package monokai-theme
;;   :init(load-theme 'monokai 1))


;; (use-package smart-mode-line
;;   :config
;;   (setq sml/theme 'dark
;;         sml/no-confirm-load-theme t)
;;   (sml/setup)
;;   (set-face-attribute 'mode-line nil :font "Hack" :height 161 :weight 'regular)
;;   (add-to-list 'sml/replacer-regexp-list '("^~/Git-Projects/" ":Git:") t)
;;   (add-to-list 'sml/replacer-regexp-list '("^:Git:\(.*\)/src/main/java/" ":G/\1/SMJ:") t)
;;   (add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/" ":DBox:"))
;;   (add-to-list 'sml/replacer-regexp-list
;;              '("^~/Projects/\\(\\w+\\)/"
;;                (lambda (s) (concat ":" (upcase (match-string 1 s)) ":")))
;;              t))


;; multi-terminal
(use-package ace-window
    :bind (("M-o" . 'ace-window)))

;; highlight current line
(global-hl-line-mode 1)

;; autosave cursor position
(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
              history-length 1000
              savehist-additional-variables '(mark-ring
                                              global-mark-ring
                                              search-ring
                                              regexp-search-ring
                                              extended-command-history)
              savehist-autosave-interval 300)
  )

;; (use-package saveplace
;;   :ensure nil
;;   :hook (after-init . save-place-mode))

;; beautify status bar
(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))

;; (use-package keycast
;;       :config (keycast-mode 1))

(use-package keycast
  :config
  (define-minor-mode keycast-mode
    "Show current command and its key binding in the mode line (fix for use with doom-mode-line)."
    :global t
    (if keycast-mode
        (add-hook 'pre-command-hook 'keycast--update t)
      (remove-hook 'pre-command-hook 'keycast--update)))
  (add-to-list 'global-mode-string '("" keycast-mode-line)))

;; ;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置global-mode-string 之后‘

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160);;

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
    (setq sml/theme 'respectful
          sml/no-confirm-load-theme t
          doom-modeline-support-imenu t
          doom-modeline-height 25
          doom-modeline-bar-width 4
          doom-modeline-hud nil
          doom-modeline-window-width-limit 85
          doom-modeline-project-detection 'auto
          doom-modeline-buffer-file-name-style 'auto
          doom-modeline-icon t
          doom-modeline-major-mode-icon t
          doom-modeline-major-mode-color-icon t
          doom-modeline-buffer-state-icon t
          doom-modeline-buffer-modification-icon t
          doom-modeline-lsp-icon t
          doom-modeline-time-icon t
          doom-modeline-time-live-icon t
          doom-modeline-time-analogue-clock t
          doom-modeline-time-clock-size 0.7
          doom-modeline-unicode-fallback nil
          doom-modeline-buffer-name t
          doom-modeline-highlight-modified-buffer-name t
          doom-modeline-column-zero-based t
          doom-modeline-percent-position '(-3 "%p")
          doom-modeline-position-line-format '("L%l")
          doom-modeline-position-column-format '("C%c")
          doom-modeline-position-column-line-format '("%l:%c")
          doom-modeline-minor-modes nil
          doom-modeline-enable-word-count nil
          doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode)
          doom-modeline-buffer-encoding t
          doom-modeline-indent-info nil
          doom-modeline-total-line-number nil
          doom-modeline-vcs-icon t
          doom-modeline-check-icon t
          doom-modeline-check-simple-format nil
          doom-modeline-number-limit 99
          doom-modeline-vcs-max-length 12
          doom-modeline-workspace-name t
          doom-modeline-persp-name t
          doom-modeline-display-default-persp-name nil
          doom-modeline-persp-icon t
          doom-modeline-lsp t
          doom-modeline-github nil
          doom-modeline-github-interval (* 30 60)
          doom-modeline-modal t
          doom-modeline-modal-icon t
          doom-modeline-modal-modern-icon t
          doom-modeline-always-show-macro-register nil
          doom-modeline-mu4e nil
          doom-modeline-gnus t
          doom-modeline-gnus-timer 2
          doom-modeline-gnus-excluded-groups '("dummy.group")
          doom-modeline-irc t
          doom-modeline-irc-stylize 'identity
          doom-modeline-battery t
          doom-modeline-time t
          doom-modeline-display-misc-in-all-mode-lines t
          doom-modeline-buffer-file-name-function #'identity
          doom-modeline-env-version t
          doom-modeline-env-enable-python t
          doom-modeline-env-enable-ruby t
          doom-modeline-env-enable-perl t
          doom-modeline-env-enable-go t
          doom-modeline-env-enable-elixir t
          doom-modeline-env-enable-rust t
          doom-modeline-env-python-executable "python" ; or `python-shell-interpreter
          doom-modeline-env-ruby-executable "ruby"
          doom-modeline-env-julia-executable "julia"
          doom-modeline-env-perl-executable "perl"
          doom-modeline-env-go-executable "go"
          doom-modeline-env-elixir-executable "iex"
          doom-modeline-env-rust-executable "rustc"
          doom-modeline-env-load-string "..."
          doom-modeline-always-visible-segments '(mu4e irc)
          doom-modeline-before-update-env-hook nil
          doom-modeline-after-update-env-hook nil
          )
  ;; (mu4e-alert-enable-mode-line-display)
  (setq doom-modeline-buffer-file-truename-function #'identity)
      (sml/setup)
      (set-face-attribute 'mode-line nil :font "Hack" :height 110 :weight 'regular)
      (add-to-list 'sml/replacer-regexp-list '("^~/Git-Projects/" ":Git:") t)
      (add-to-list 'sml/replacer-regexp-list '("^:Git:\(.*\)/src/main/java/" ":G/\1/SMJ:") t)
      (add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/" ":DBox:"))
      (add-to-list 'sml/replacer-regexp-list
                '("^~/Projects/\\(\\w+\\)/"
                  (lambda (s) (concat ":" (upcase (match-string 1 s)) ":")))
                t)
)

(provide 'init-ui)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)

;;encodingformat
;; (prefer-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (setq default-buffer-file-coding-system 'utf-8)

(setq gc-cons-threshold most-positive-fixnum)

;;行号
(use-package emacs
:config
    (setq display-line-numbers-type 'relative)
    (global-display-line-numbers-mode t))


(setq ring-bell-function 'ignore)

(provide 'init-startup)

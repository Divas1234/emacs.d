;;; flycheck-color-mode-line-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from flycheck-color-mode-line.el

(autoload 'flycheck-color-mode-line-mode "flycheck-color-mode-line" "\
Minor mode to color the mode line with the Flycheck status.

When called interactively, toggle
`flycheck-color-mode-line-mode'.  With prefix ARG, enable
`flycheck-color-mode-line-mode' if ARG is positive, otherwise
disable it.

When called from Lisp, enable `flycheck-color-mode-line-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-color-mode-line-mode'.
Otherwise behave as if called interactively.

(fn &optional ARG)" t)
(custom-add-frequent-value 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
(register-definition-prefixes "flycheck-color-mode-line" '("flycheck-color-mode-line-"))

;;; End of scraped data

(provide 'flycheck-color-mode-line-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; flycheck-color-mode-line-autoloads.el ends here

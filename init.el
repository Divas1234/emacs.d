;;常用的格式
;;(use-package smooth-scrolling
;;:ensuret;是否一定要确保已安装
;;:defernil;是否要延迟加载
;;:init
;;    (setq smooth-scrolling-margin2);初始化参数
;;:config
;;    (smooth-scrolling-mode t);基本配置参数
;;:bind;快捷键的绑定
;;:hook);hook模式的绑定
(add-to-list 'load-path
    (expand-file-name 
        (concat user-emacs-directory "lisp")))
(setq custom-file 
    (expand-file-name "custom.el"user-emacs-directory))
(when 
    (file-exists-p custom-file)
    (load-file custom-file))

;; (require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-checkos)
(require 'init-kbd)
(require 'pkg-ivy)
(require 'pkg-autocomplete)
(require 'pkg-codecheck)
(require 'pkg-minibuffer)
(require 'pkg-lsp)
(require 'pkg-batch)
(require 'pkg-orgmode)
(require 'pkg-eglot)
(require 'pkg-evil)
(require 'pkg-treesit)
(require 'pkg-dashboard)
(require 'init-icon)
(require 'pkg-theme)
(require 'pkg-search)
(require 'pkg-tabbar)
(require 'init-standardtheme)
(require 'pkg-tabbar)
(require 'pkg-tabnine)
;;encodingfont
(add-hook 'after-init-hook 'global-company-mode)
(require 'pkg-pdftool)
(require 'pkg-dired)
(require 'init-ui)

(use-package emacs
:ensure
nil
:if
    (display-graphic-p)
:config
;;Fontsettings
    (if *is-windows*
        (progn
            (set-face-attribute 'default nil :font "Hack 12")
            (dolist 
                (charset '
                    (kana han symbol cjk-misc bopomofo))
                (set-fontset-font 
                    (frame-parameter nil 'font) 
charset
                    (font-spec :family "Hack" :size 12))))
        (set-face-attribute 'default nil :font "Hack 12")))
(put 'dired-find-alternate-file 'disabled nil)

;;(when 
;;    (display-graphic-p)
;;    (require 'all-the-icons))
;;;;or
;;(use-package all-the-icons
;;:if
;;    (display-graphic-p))

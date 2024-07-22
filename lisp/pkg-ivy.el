;; (use-package ivy
;; :defer  1
;; :demand
;; :hook (after-init . ivy-mode)
;; :config (ivy-mode 1)
;;         (setq ivy-use-virtual-buffers t
;;               ivy-initial-inputs-alist nil
;;               ivy-count-format "(%d/%d) "
;;               enable-recursive-minibuffers t
;;               ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

;; (use-package counsel
;; :after (ivy)
;; :bind  (("M-x" . counsel-M-x)
;;         ("C-x C-f" . counsel-find-file)
;;         ("C-c f" . counsel-recentf)
;;         ("C-c g" . counsel-git)))

;; (use-package swiper
;; :after ivy
;; :bind  (("C-s" . swiper)
;;         ("C-r" . swiper-isearch-backward))
;; :config (setq swiper-action-recenter t
;;               swiper-include-line-number-in-searcht))


;;swiper快速搜索
;;(global-set-key (kbd "C-s") 'swiper)
 
;;counsel快速搜索
;;(global-set-key (kbd "C-s") 'counsel-grep)
 
 
;;搜索最近访问文件
;;(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-x b") 'counsel-switch-buffer)
;;搜索文件
(global-set-key (kbd "C-x f") 'counsel-find-file)
;;查看历史搜索记录
(global-set-key (kbd "C-r") 'counsel-grep-or-swiper)
;;搜索文件或文件内容
(global-set-key (kbd "C-s") 'counsel-grep-or-swiper-backward)

(use-package counsel
  :demand
  :bind (("C-c a" . swiper-all)
         ("C-c e" . counsel-flycheck)
         ("C-c f" . counsel-fzf)
         ("C-c g" . counsel-git)
         ("C-c i" . counsel-imenu)
         ("C-c j" . counsel-git-grep)
         ("C-c L" . counsel-locate)
         ("C-c o" . counsel-outline)
         ("C-c r" . counsel-rg)
         ("C-c R" . counsel-register)
         ("C-c T" . counsel-load-theme)
         ("C-S-s" . swiper)
         ([remap dired] . counsel-dired))
  :init
  (setq ivy-use-virtual-buffers t
        ivy-use-virtual-buffers t
        ivy-use-selectable-prompt t
        enable-recursive-minibuffers t
        ivy-count-format "(%d/%d) "
        search-default-mode #'char-fold-to-regexp)
  :config
  (ivy-mode 1)
  (counsel-mode 1))

(use-package ivy-rich
  :after ivy
  :config
  (ivy-rich-mode 1))

(use-package helpful
  :init
  (setq counsel-describe-function-function #'helpful-callable)
  (setq counsel-describe-variable-function #'helpful-variable))
 
(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq search-default-mode #'char-fold-to-regexp)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  (("C-s" . 'swiper)
   ("C-x b" . 'ivy-switch-buffer)
   ("C-c v" . 'ivy-push-view)
   ("C-c s" . 'ivy-switch-view)
   ("C-c V" . 'ivy-pop-view)
   ("C-x C-@" . 'counsel-mark-ring); 在某些终端上 C-x C-SPC 会被映射为 C-x C-@，比如在 macOS 上，所以要手动设置
   ("C-x C-SPC" . 'counsel-mark-ring)
   :map minibuffer-local-map
   ("C-r" . counsel-minibuffer-history)))

;; (setq recentf-max-saved-items 100)

;; (global-set-key "\C-cq" #'bury-buffer)

;; (use-package prescient
;;   :config
;;   (prescient-persist-mode))

;; (use-package ivy-prescient
;;   :after counsel
;;   :config
;;   (ivy-prescient-mode))

(provide 'pkg-ivy)
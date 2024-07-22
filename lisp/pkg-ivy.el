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
 
;;counsel mode
(ivy-mode 1)
(counsel-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-use-selectable-prompt t)
(setq enable-recursive-minibuffers t)
(setq ivy-count-format "(%d/%d) ")
(setq search-default-mode #'char-fold-to-regexp)
 
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
  :ensure t)
 
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

(provide 'pkg-ivy)
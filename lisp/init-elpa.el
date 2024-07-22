;;cnmirrorsource
(setq package-archives '
    (
        ;; ("melpa"."http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ;; ("gnu"."http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("elpa" . "http://tromey.com/elpa/")
        ("melpa-stable" . "https://stable.melpa.org/packages/") ;; 下载 pdf-tools 只需要这个
        ("melpa" . "https://melpa.org/packages/")
        ("org"."http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;;usepackage
(setq package-check-signature nil);个别时候会出现签名校验失败

(require 'package)

;;初始化包管理器
(unless 
    (bound-and-true-p package--initialized)
    (package-initialize))

;;刷新软件源索引
(unless package-archive-contents
    (package-refresh-contents))

(unless 
    (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(require 'use-package)

;;全局懒加载
(setq use-package-always-ensure t);不用每个包都手动添加：ensure t关键字
(setq use-package-always-defer t);默认都是延迟加载，不用每个包都手动添加：defer t
(setq use-package-always-demand nil)
(setq use-package-expand-minimally t)
(setq use-package-verbose t)

(provide 'init-elpa)
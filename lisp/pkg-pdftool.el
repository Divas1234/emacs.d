
;;(use-package pdf-tools
;;;;Toupdatepdf-tools,visit~/build-repos/pdf-toolsandfollowthe
;;;;instructionsinthenotes.Roughly,domakeclean;makeall.Do
;;;;notforgettocopytheepdfinfoexecutablealsointothelisp
;;;;subdirectory.
;;:pinmanual
;;;;pointtothelispdirectoryofthelocalcloneoftherepository:
;;:load-path"/home/jv/build-repos/pdf-tools/lisp"
;;:magic
;;    ("%PDF" . pdf-view-mode)
;;:config
;;    (let* 
;;        (
;;            (files   
;;                (directory-files "/home/jv/build-repos/pdf-tools/lisp/" nil "\\.el"))
;;            (names   
;;                (seq-map #'
;;                    (lambda 
;;                        (s) 
;;                        (string-trim-right s "\\.el")) files))
;;            (symbols 
;;                (seq-map #'intern names)))
;;        (seq-do #'require symbols))

;;    (pdf-tools-install :no-query))

(use-package pdf-tools
:init
    (setenv "PATH" 
        (concat "C:\\Users\\15703\\scoop\\apps\\msys2\\2024-05-07\\mingw64\\bin" ";" 
            (getenv "PATH")))
    (pdf-tools-install)
:custom
    (pdf-info-epdfinfo-program "C:\\Users\\15703\\scoop\\apps\\msys2\\2024-05-07\\mingw64\\bin\\epdfinfo.exe"))

(provide 'pkg-pdftool)
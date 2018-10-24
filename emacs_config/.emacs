; start package.el with
(require 'package)
; add Melpa to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
; initialize package.el
(package-initialize)
; start auto-complete with emacs (BEGINNING OF C++ IDE)
(require 'auto-complete)
; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)
; define function
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))
  (add-to-list 'achead:include-directories '"/Library/Developer/CommandLineTools/usr/lib/clang/9.0.0/include")
;call the function
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
; Part 2 
(define-key global-map (kbd "C-c ;") 'iedit-mode)
; start flymake-google-cppline-load
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (custom variables
  '(flymake-google-cpplint-command "/usr/local/lib/python2.7/site-packages")
  (flymake-google-cpplint-load))
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)
; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
; End of C++

; Beginning of Python 
(setq visible-bell t)
(require 'package)
(require 'json)
(elpy-enable)
;; fixing bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-solarized flymake-google-cpplint iedit auto-complete-c-headers yasnippet auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

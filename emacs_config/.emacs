; general
(load-theme 'wombat)       ; theme
(setq c-basic-offset 4)    ; indents 4 chars                                                                                         
(setq tab-width 4)         ; and 4 char wide for TAB
(setq indent-tabs-mode nil); And force use of spaces
(turn-on-font-lock)        ; same as syntax on in Vim
(require 'linum)
(global-linum-mode 1) ; line numbers
; start package.el with
(require 'package)
; add Melpa to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/")t)
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
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/Library/Developer/CommandLineTools/usr/lib/clang/9.0.0/include")
)
;call the function
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
; Part 2 
(define-key global-map (kbd "C-c ;") 'iedit-mode)
; start flymake-google-cppline-load
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (custom variables
  '(flymake-google-cpplint-command "/usr/local/lib/python2.7/site-packages"))
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)
; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
; cedet TRUE c++ intellisense
(semantic-mode 1)
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
; turn on automatic reparsing
(global-semantic-idle-scheduler-mode 1)
; clang-format
(require 'clang-format)
(global-set-key (kbd "C-c f") 'clang-format-region)
(global-set-key (kbd "C-c u") 'clang-format-buffer)
(setq clang-format-style-option ".clang-format")
(add-hook 'c++-mode-hook 'clang-format)
; flycheck
(require 'flycheck)
(global-flycheck-mode)
(require 'flycheck-irony)
(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
(with-eval-after-load 'flycheck
  (require 'flycheck-clang-analyzer)
  (flycheck-clang-analyzer-setup))
; Irony
(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
; projectile-mode s stands for command, windows button for windows
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "s-d") 'projectile-find-dir)
(define-key projectile-mode-map (kbd "s-f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "s-g") 'projectile-grep)
(projectile-mode +1)
; dump-jump (jump to definition) supports python as well
;(require dumb-jump)
; End of C++

; Beginning of Python 
(setq visible-bell t)
(require 'elpy)
(require 'package)
(require 'json)
(elpy-enable)
;; fixing bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
; jedi
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
; python end
;; csharp
(require 'csharp-mode)
(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (electric-pair-local-mode 1) ;; Emacs 25
  )
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
; Javascript
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
;; refactor and xref
(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
; js end
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets use-package counsel-projectile flycheck-clang-analyzer dumb-jump projectile flycheck-irony company-irony irony clang-format color-theme-sanityinc-solarized flymake-google-cpplint iedit auto-complete-c-headers yasnippet auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 185 :width normal :foundry "nil" :family "Menlo")))))

;;;; general
(setq c-basic-offset 4)    ;; indents 4 chars
(setq tab-width 4)         ;; and 4 char wide for TAB
(setq indent-tabs-mode nil);; And force use of spaces
(global-font-lock-mode 1)  ;; syntax highlighting
(require 'linum)
(global-linum-mode 1)      ;; line numbers
(electric-pair-mode)       ;; auto closing brackets
(semantic-mode 1)
(global-semantic-idle-scheduler-mode 1)

;;;;;;;;; start package.el with
(require 'package)
;; add Melpa to repository list
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")t)
;; initialize package.el
(package-initialize)

;;;;;;;; convinience packages

;;;; auto completion
;; start auto-complete with emacs
(require 'auto-complete)

;; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

;; iedit mode
(define-key global-map (kbd "C-c c") 'iedit-mode)
;; magit (Git control for emacs)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; flycheck
(require 'flycheck)
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++11")))
(global-flycheck-mode)

;; neotree for easy directory navigation
(require 'neotree)
;; controls :
;; n (next) p(prev)
;; SPC RET or TAB : open file or fold/unfold dir
;; g : refresh
;; A : maximize or minimize tree
;; H : toggle display hidden files
;; C-c C-n : create file or directory
;; C-c C-d : delete
;; C-c C-r : rename
;; C-c C-c : change root
;;;;;;;;;;;;;;;;;;;;;;;;;
;; projectile-mode s stands for command, windows button for windows

(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "s-d") 'projectile-find-dir)
(define-key projectile-mode-map (kbd "s-f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "s-g") 'projectile-grep)
(projectile-mode +1)

;; dump-jump (jump to definition)
(require 'dumb-jump)
(dumb-jump-mode)
;; dumb-jump-go C-M-g core functionality. Attempts to jump to the definition for the thing under point
;; dumb-jump-back C-M-p jumps back to where you were when you jumped.
;; dumb-jump-quick-look C-M-q like dumb-jump-go but only shows tooltip with file, line, and context

;;;; convinience end

;;;;;;;; (BEGINNING OF C++)

;; enable modern C++ font lock
(require 'modern-cpp-font-lock)
(modern-c++-font-lock-global-mode t)

;; clang-format
(require 'clang-format)
(global-set-key (kbd "C-c u") 'clang-format-region)
(global-set-key (kbd "C-c f") 'clang-format-buffer)
(setq clang-format-style-option ".clang-format")
(add-hook 'c++-mode-hook 'clang-format)

;; C++ intellisense
;; company
(require 'company)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 3)

;; company-irony
(require 'company-irony)
(add-to-list 'company-backends 'company-irony)

;; c headers auto completion with irony
(require 'company-irony-c-headers)
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(with-eval-after-load 'company
  (add-hook 'c++-mode-hook 'company-mode)
  (add-hook 'c-mode-hook 'company-mode))

;; c++ flycheck intelligent linter for c++
(require 'flycheck-irony)
(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
  (setq irony--compile-options
      '("-std=c++14"
        "-stdlib=libc++")))

;; another linter
; (with-eval-after-load 'flycheck
;  (require 'flycheck-clang-analyzer)
;  (flycheck-clang-analyzer-setup))


;;;;;;;; End of C++

;;;;;;;; Beginning of Python

;; virtualenv
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location "/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/py2app/recipes/virtualenv.py")

;;;; Elpy powerful python integrated environment 
(setq visible-bell t)
(require 'elpy)
(require 'package)
(require 'json)
(package-initialize)
(elpy-enable)
;; fixing bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;;;; jedi python intelisense

(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;;; python end

;;;; csharp

(require 'csharp-mode)
(defun my-csharp-mode-hook ()
  (electric-pair-local-mode 1))
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

;;;; csharp end

;;;; Javascript

;; js2-mode
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

;; company for js
(require 'company)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
                           
;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
;;;; js end

;;;;  web development

;; emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; for html
(setq web-mode-ac-sources-alist
'(("css" . (ac-source-css-property))
  ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-quoting t)

;; javascript web mode
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

(flycheck-add-mode 'javascript-eslint 'web-mode)

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-eslint 'javascript-mode)

;;;; end of web development


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#1f2022" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#4f97d7" "#a3a3a3"] t)
 '(beacon-color "#cc6666")
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (base16-ocean)))
 '(custom-safe-themes
   (quote
    ("78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "99c86852decaeb0c6f51ce8bd46e4906a4f28ab4c5b201bdc3fdf85b24f88518" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "f9f2ea69700b0c660f1a6507bbd0aec13e213b7618336ff20852f617991ae369" "12bacee81d067acf07dec4c867be541a04744a6ac6a39636de25a2c77e9b573c" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(fci-rule-color "#373b41")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (omnisharp company-irony-c-headers modern-cpp-font-lock flymake-jshint flymake-jslint base16-theme oceanic-theme seti-theme neotree virtualenv virtualenvwrapper company-tern ac-js2 pylint emmet-mode web-mode ac-html auto-complete-clang rtags xref-js2 js2-refactor js2-mode csharp-mode yasnippet-snippets use-package counsel-projectile flycheck-clang-analyzer dumb-jump projectile flycheck-irony company-irony irony clang-format iedit auto-complete-c-headers yasnippet auto-complete)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil)
 '(virtualenv-root
   "~/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/py2app/recipes/"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2b303b" :foreground "#c0c5ce" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 175 :width normal :foundry "nil" :family "Menlo")))))

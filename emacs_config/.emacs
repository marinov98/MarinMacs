;;;; general
(setq c-basic-offset 4)    ;; indents 4 chars
(setq tab-width 4)         ;; and 4 char wide for TAB
(setq indent-tabs-mode nil);; And force use of spaces
(global-font-lock-mode 1)  ;; Syntax highlighting
(require 'linum)
(global-linum-mode 1)      ;; line numbers

;;;;;;;;; start package.el with
(require 'package)
;; add Melpa to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/")t)
;; initialize package.el
(package-initialize)

;;;; convinience packages

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
;; dump-jump (jump to definition) supports python as well
(require 'dumb-jump)
(dumb-jump-mode)
;; dumb-jump-go C-M-g core functionality. Attempts to jump to the definition for the thing under point
;; dumb-jump-back C-M-p jumps back to where you were when you jumped. These are chained so if you go down a rabbit hole you can get back out or where you want to be.
;; dumb-jump-quick-look C-M-q like dumb-jump-go but only shows tooltip with file, line, and context it does not jump.
;; dumb-jump-go-other-window exactly like dumb-jump-go but uses find-file-other-window instead of find-file
;; dumb-jump-go-prefer-external like dumb-jump-go but will prefer definitions not in the current buffer
;; dumb-jump-go-prefer-external-other-window expected combination of dumb-jump-go-prefer-external and dumb-jump-go-other-window
;; dumb-jump-go-prompt exactly like dumb-jump-go but prompts user for function to jump to instead of using symbol at point
;;;; convinience end

;;;;;;;; (BEGINNING OF C++)

;; define function
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/Library/Developer/CommandLineTools/usr/lib/clang/9.0.0/include")
  )
;; call the function
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)
;; start flymake-google-cppline-load
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (custom variables
  '(flymake-google-cpplint-command "/usr/local/lib/python2.7/site-packages"))
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)
;; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;; cedet TRUE c++ intellisense
(semantic-mode 1)
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
;; turn on automatic reparsing
(global-semantic-idle-scheduler-mode 1)
;; clang-format
(require 'clang-format)
(global-set-key (kbd "C-c f") 'clang-format-region)
(global-set-key (kbd "C-c u") 'clang-format-buffer)
(setq clang-format-style-option ".clang-format")
(add-hook 'c++-mode-hook 'clang-format)
;; flycheck
(require 'flycheck)
(global-flycheck-mode)
(require 'flycheck-irony)
(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
(with-eval-after-load 'flycheck
  (require 'flycheck-clang-analyzer)
  (flycheck-clang-analyzer-setup))
;; Irony
(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;;;;;;;; End of C++

;;;;;;;; Beginning of Python

;; virtualenv
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location "/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/py2app/recipes/virtualenv.py")
;;;; Elpy
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
;;;; csharp end

;;;; Javascript
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

;;;; html web dev

(defun setup-ac-for-html ()
  ;; Require ac-haml since we are setup haml auto completion
  (require 'ac-html)
  ;; Require default data provider if you want to use
  (require 'ac-html-default-data-provider)
  ;; Enable data providers,
  ;; currently only default data provider available
  (ac-html-enable-data-provider 'ac-html-default-data-provider)
  ;; Let ac-haml do some setup
  (ac-html-setup)
  ;; Set your ac-source
  (setq ac-sources '(ac-source-html-tag
                     ac-source-html-attr
                     ac-source-html-attrv))
  ;; Enable auto complete mode
  (auto-complete-mode))

(add-hook 'html-mode-hook 'setup-ac-for-html)
(require 'emmet-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'web-mode-ac-sources-alist
             '("html" . (ac-source-html-tag
                         ac-source-html-attr
                         ac-source-html-attrv)))

;;;; end of html


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (oceanic-theme seti-theme neotree virtualenv virtualenvwrapper company-tern ac-js2 pylint emmet-mode web-mode ac-html auto-complete-clang rtags xref-js2 js2-refactor js2-mode csharp-mode color-theme-sanityinc-tomorrow yasnippet-snippets use-package counsel-projectile flycheck-clang-analyzer dumb-jump projectile flycheck-irony company-irony irony clang-format color-theme-sanityinc-solarized flymake-google-cpplint iedit auto-complete-c-headers yasnippet auto-complete)))
 '(virtualenv-root
   "~/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/py2app/recipes/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 185 :width normal :foundry "nil" :family "Menlo")))))

;;; package --- summary
;;; Commentary:
;;; Code:

;;;;;;;; General
(setq c-basic-offset 4)    ;; indents 4 chars
(setq tab-width 4)         ;; and 4 char wide for TAB
(setq indent-tabs-mode nil);; And force use of spaces
(global-font-lock-mode 1)  ;; syntax highlighting
(require 'linum)
(global-linum-mode 1)      ;; line numbers
(electric-pair-mode)       ;; auto closing brackets
(setq debug-on-error t)    ;; debugging
(fset 'yes-or-no-p 'y-or-n-p) ;; change yes or no to y or n 
(global-set-key (kbd "<f5>") 'revert-buffer) ;; allow window reload using F5
;;;;;;;; General end

;;;;;;;;; Enable the ability to download packages
(require 'package)
;; add as many package-archives as you want below 
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")t)
(package-initialize)

;;;;;;;; Convinience packages

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

;; company
(require 'company)
(setq company-idle-delay 0) ;; faster auto-completion
(setq company-minimum-prefix-length 3) ;; begin autocompletion after 3 characters have been typed 

;; flycheck
(require 'flycheck)
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

;; projectile-mode s stands for command on MacOS, windows button for Windows
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

;;;;;;;; Convinience end

;;;;;;;; C++

;; set language standard
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++14")))

;; enable modern C++ font lock
(require 'modern-cpp-font-lock)
(modern-c++-font-lock-global-mode t)

;; clang-format
(require 'clang-format)
(global-set-key (kbd "C-c u") 'clang-format-region)
(global-set-key (kbd "C-c f") 'clang-format-buffer)
(setq clang-format-style-option ".clang-format") ;; another option is llvm 
;(add-hook 'c++-mode-hook 'clang-format) ;; this gives issues for some reason

;;;; C++ intellisense

;; company-irony
(require 'company-irony)
(add-to-list 'company-backends 'company-irony)

;; c headers auto completion with irony
(require 'company-irony-c-headers)
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

;; enable irony mode for C/C++/Objective-C
(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;; eldoc indexing
(add-hook 'irony-mode-hook #'irony-eldoc)

;; initiate company mode when opening/creating C/C++ files
(with-eval-after-load 'company
  (add-hook 'c++-mode-hook 'company-mode)
  (add-hook 'c-mode-hook 'company-mode))

;; c++ flycheck intelligent linter for c++ 
(require 'flycheck-irony)
(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
  (setq irony--compile-options
      '("-std=c++14"        ;; general 
        "-stdlib=libc++"))) ;; for mac only 

;;;;;;;; End of C++

;;;;;;;; Python

;; UNCOMMENT ONLY IF YOU NEED A PYTHON SHELL 
;; virtualenv (interactive python shell) 
;(require 'virtualenvwrapper)
;(venv-initialize-interactive-shells)
;(venv-initialize-eshell)
;(setq venv-location "/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/py2app/recipes/virtualenv.py")

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

;;;;;;;; Python end

;;;;;;;; C#

(require 'csharp-mode)
(defun my-csharp-mode-hook ()
  "Csharp development."
  (electric-pair-local-mode 1))
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

;;;;;;;; C# end

;;;;;;;; Javascript

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
;;;; JavaScript end

;;;;;;;;  web-development (html/css)

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;;csswatcher (uncomment only if you've installed csswatcher and really need it) 
;(require 'ac-html-csswatcher)
;(ac-html-csswatcher-setup)

;; indentation
(setq web-mode-markup-indent-offset 4)
(setq web-mode-code-indent-offset 4)
(setq web-mode-css-indent-offset 4)

;; auto-closing
(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-quoting t)

;; highlighting
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

;; company auto-completion
(require 'company-web-html)
(defun my-web-mode-hook ()
  "Company auto-complete."
  (set (make-local-variable 'company-backends) '(company-css company-web-html company-yasnippet company-files))
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; es-lint for javascript
(flycheck-add-mode 'javascript-eslint 'web-mode)

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-eslint 'javascript-mode)

;;;;;;;; end of web-development


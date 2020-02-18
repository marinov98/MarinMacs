(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

;; You can uncomment any themes that you like
;; BE AWARE: emacs can have multiple themes on at the same time
;; Multiple themes can mix into a super theme
;; Some themes do not mix well which is why I commented some themes

(use-package zerodark-theme
    :ensure t)

(use-package zenburn-theme
    :ensure t)
    
;; (use-package poet-theme
;;    :ensure t)
 
 (use-package spacemacs-theme 
      :defer t) 
;;    :init  (load-theme 'spacemacs-dark t))

 (use-package gruvbox-theme
    :ensure t)

(use-package base16-theme
    :ensure t)
 ;;   :config
 ;;   (load-theme 'base16-ocean))

(use-package jbeans-theme
    :ensure t
    :config
    (load-theme 'jbeans t))

;;(load-theme 'zerodark t)
;;(zerodark-setup-modeline-format)

(setq c-basic-offset 4)    ;; indents 4 chars
(setq tab-width 4)         ;; and 4 char wide for TAB
(setq indent-tabs-mode nil);; And force use of spaces
(global-font-lock-mode 1)  ;; syntax highlighting
(global-linum-mode 1)      ;; line numbers
(electric-pair-mode)       ;; auto closing brackets
(fset 'yes-or-no-p 'y-or-n-p) ;; change yes or no to y or n
(menu-bar-mode -1) ;; disable menu bar
(toggle-scroll-bar -1) ;; disable scroll bar
(tool-bar-mode -1) ;; disable tool bar

;; Disable annoying back up files (comment if you want to enable backup files) 
(setq make-backup-files nil) ;; stop creating backup~ files
(setq auto-save-default nil) ;; stop creating autosave# files
(setq create-lockfiles nil)  ;; stop creating any # files

;;;;; Debugger
(setq gdb-many-windows t) ;; have multiple windows when debugging
(setq  gdb-show-main t )  ;; Non-nil means display source file containing the main routine at startup

(use-package restart-emacs
    :ensure t)

;; My personal keybindings, you change these anyway you like 
(global-set-key (kbd "C-S-p") 'beginning-of-buffer) ;; top of file
(global-set-key (kbd "C-S-n") 'end-of-buffer) ;; end of file
(global-set-key (kbd "M-m") 'move-beginning-of-line) ;; moves beginning of the line 
(global-set-key (kbd "C-?") 'comment-region) ;; comment
(global-set-key (kbd "C-a") 'back-to-indentation) ;; moves beginning of the first char 
(global-set-key (kbd "s-r") 'compile) ;; compile code
(global-set-key (kbd "<f5>") 'restart-emacs) ;; reload
(global-set-key (kbd "C-c C-e") 'eval-buffer) ;; evaluate the buffer (mini reload)
(global-set-key (kbd "C-`") 'eshell)
(global-set-key (kbd "C-c b") 'switch-to-prev-buffer)

;; Beacon
(use-package beacon
    :ensure t
    :config
    (beacon-mode 1))

;; DashBoard
(use-package dashboard 
    :ensure t
    :config
    (dashboard-setup-startup-hook)
    (setq dashboard-banner-logo-title "MarinMacs")
    (setq dashboard-startup-banner 'logo)
    (setq dashboard-items '((recents  . 5)
                           (bookmarks . 5)
                           (projects . 5))))

;; Which-Key
(use-package which-key
	:ensure t 
	:config
	(which-key-mode))

;; Ace-Window
(use-package ace-window
     :ensure t
     :init 
     (global-set-key (kbd "M-o") 'ace-window)
     (setq aw-background nil)
     (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

;; You can pick one of these, simply uncomment the one you want to try and comment the rest  

 ;; Telephone-line

 ;; (use-package telephone-line
 ;;     :ensure t
 ;;     :config
 ;;     (setq telephone-line-primary-right-separator 'telephone-line-abs-left
 ;;           telephone-line-secondary-right-separator 'telephone-line-abs-hollow-left)
 ;;     (setq telephone-line-height 24
 ;;           telephone-line-evil-use-short-tag t)
 ;;     (setq telephone-line-lhs
 ;;         '((evil   . (telephone-line-evil-tag-segment))
 ;;          (accent . (telephone-line-vc-segment
 ;;                    telephone-line-erc-modified-channels-segment
 ;;                    telephone-line-process-segment))
 ;;          (nil    . (telephone-line-minor-mode-segment
 ;;                    telephone-line-buffer-segment))))
 ;;     (setq telephone-line-rhs
 ;;           '((nil    . (telephone-line-misc-info-segment))
 ;;            (accent . (telephone-line-major-mode-segment))
 ;;            (evil   . (telephone-line-airline-position-segment))))
 ;;     (telephone-line-mode 1))


;; Spaceline

;;  (use-package spaceline
;;     :ensure t
;;     :config
;;     (require 'spaceline-config)
;;     (setq powerline-default-separator (quote arrow))
;;     (spaceline-spacemacs-theme))

;; Powerline

   (use-package powerline
         :ensure t
         :config
         (powerline-default-theme))

  ;; Other themes with powerline

  ;;     (powerline-center-theme)
  ;;     (powerline-vim-theme)
  ;;     (powerline-center-evil-theme)
  ;;     (powerline-nano-theme)

;; Ivy
(use-package ivy
    :ensure t
    :diminish (ivy-mode)
    :config
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t))

;; Counsel
(use-package counsel
    :ensure t
    :bind
    (("M-y" . counsel-yank-pop)
    :map ivy-minibuffer-map
    ("M-y" . ivy-next-line)))


;; Swiper 
(use-package swiper
    :ensure t
    :bind 
    (("C-s" . swiper)
    ("C-r" . swiper)
    ("C-c C-r" . ivy-resume)
    ("M-x" . counsel-M-x)
    ("C-x C-f" . counsel-find-file))
    :config
    (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)))

(use-package avy
   :ensure t
   :bind 
   (("C-:" . avy-goto-word-1)))

;; Pretty Icons
(use-package all-the-icons
    :ensure t)

;; Neotree
(use-package neotree
    :ensure t
    :defer t
    :bind ("C-c t" . neotree-toggle)
    :config (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;; Ranger
(use-package ranger
    :ensure t
    :config
    (ranger-override-dired-mode t))

;; Projectile-mode NOTE: s stands for command on MacOS, windows button for Windows
(use-package projectile
    :ensure t
    :bind
    (("C-c p" . projectile-command-map)
    ("s-d" . projectile-find-dir)
    ("s-f" . projectile-find-file)
    ("s-g" . projectile-grep))
    :config
    (setq projectile-completion-system 'ivy)
    (projectile-mode +1))

;; Counsel-Projectile
 (use-package counsel-projectile
    :ensure t)

(use-package auto-complete 
  :ensure t
  :init
  (progn
  (ac-config-default)
  (global-auto-complete-mode t)))

(use-package yasnippet
    :ensure t
    :init 
    (yas-global-mode 1))

(use-package yasnippet-snippets 
    :ensure t)

(use-package flycheck
     :ensure t
     :init
     (global-flycheck-mode t))

(use-package flycheck-pos-tip
    :ensure t
    :config
    (flycheck-pos-tip-mode))

(use-package company
    :ensure t
    :config
    (setq company-idle-delay 0) ;; faster autcompletion
    (setq company-minimum-prefix-length 3) ;; show completions after 3 chars
    (setq global-company-mode t))

(use-package iedit
    :ensure t
    :bind (("C-c c" . iedit-mode)))

(use-package dumb-jump
    :bind 
    (("C-M-g" . dumb-jump-go-other-window)
    ("M-g j" . dumb-jump-go)
    ("M-g i" . dumb-jump-go-prompt)
    ("M-g x" . dumb-jump-go-prefer-external)
    ("M-g z" . dumb-jump-go-prefer-external-other-window))
    :config 
    (setq dumb-jump-selector 'ivy) 
    :ensure)

(use-package cider
    :ensure t)

(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode))

(use-package better-shell
    :ensure t
    :bind 
    (("C-x C-`" . better-shell-shell)
    ("C-;" . better-shell-remote-open)))

(use-package exec-path-from-shell
    :ensure t
    :config
    (when (memq window-system '(mac ns x)) ;; check if its mac
    (exec-path-from-shell-initialize)))

(use-package magit
    :ensure t
    :bind
    (("C-x g" . magit-status)
    ("C-x M-g" . magit-dispatch-popup)))

(use-package org 
   :ensure t
   :pin org)

  ;; Package cannot load for some reason on newer versions so I commented it   
  ;; (use-package org-ac
  ;;   :config 
  ;;   (org-ac/config-default))

(use-package org-bullets
    :ensure t
    :config
    (add-hook 'org-mode-hook (lambda() (org-bullets-mode 1))))

(use-package tex
    :ensure auctex)

;; Pdf tools
(use-package pdf-tools
    :ensure t)

(use-package org-pdfview
    :ensure t)

(require 'pdf-tools)
(require 'org-pdfview)

;; writegood and wc mode 
(use-package wc-mode
    :ensure t
    :bind 
    ("C-x C-j" . wc-mode))

(use-package writegood-mode
    :ensure t
    :bind 
    ("C-." . writegood-mode))

(use-package modern-cpp-font-lock
    :ensure t
    :config
    (modern-c++-font-lock-global-mode t))

(use-package clang-format 
    :ensure t
    :bind 
    (("C-c u" . clang-format-region) ;; format current line
    ("C-c f" . clang-format-buffer)) ;; format entire file
    :config
    (setq clang-format-style-option ".clang-format")) 
 ;; (setq clang-format-style-option "llvm")) use this option if you do not have a .clang-format file

;; Begin auto-completion for C++
(use-package company-irony
    :ensure t
    :config
    (require 'company)
    (add-to-list 'company-backends 'company-irony))

;; C Headers Auto-Completion
(use-package company-irony-c-headers
    :ensure t
    :after (company)
    :config
    (add-to-list 'company-backends '(company-irony-c-headers company-irony)))

;; Enable Irony Mode
(use-package irony
    :ensure t
    :config
    (add-hook 'c++-mode-hook 'irony-mode)
    (add-hook 'c-mode-hook 'irony-mode)
    (add-hook 'objc-mode-hook 'irony-mode)
    (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

;; Eldoc indexing
(use-package irony-eldoc
    :ensure t
    :hook irony-mode)

(with-eval-after-load 'company
  (add-hook 'c++-mode-hook 'company-mode)
  (add-hook 'c-mode-hook 'company-mode))

(use-package flycheck-irony
    :ensure t
    :after (flycheck)
    :hook (flycheck-mode . flycheck-irony-setup))

(use-package ggtags
    :ensure t
    :config 
    (add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1)))))

(setq py-python-command "python3")
(setq python-shell-interpreter "python3")

(use-package elpy
    :ensure t
    :config 
    (elpy-enable))

(use-package virtualenv
    :ensure t)

(use-package virtualenvwrapper
    :ensure t
    :config
    (venv-initialize-interactive-shells)
    (venv-initialize-eshell))

(use-package company-jedi
    :ensure t
    :config
    (add-hook 'python-mode-hook 'jedi:setup))

(defun add-intellisense-hook ()
  "Finish add jedi intellisense."
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'add-intellisense-hook)

(use-package web-mode
    :ensure t
    :after (add-node-modules-path)
    :config
	   (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
	   (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
	   (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
	   (add-to-list 'auto-mode-alist '("\\.vue?\\'" . web-mode))
	   (setq web-mode-engines-alist
		 '(("django"    . "\\.html\\'")))
	   (setq web-mode-ac-sources-alist
	   '(("css" . (ac-source-css-property))
	   ("vue" . (ac-source-words-in-buffer ac-source-abbrev))
         ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

;; Indentation
    (setq web-mode-markup-indent-offset 4)
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-css-indent-offset 4)

;; Auto-closing
    (setq web-mode-enable-auto-closing t)
    (setq web-mode-enable-auto-quoting t)

;; Highlighting
    (setq web-mode-enable-current-column-highlight t)
    (setq web-mode-enable-current-element-highlight t))

(use-package emmet-mode
    :ensure t
    :config
    (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
    (add-hook 'css-mode-hook  'emmet-mode)) ;; enable Emmet's css abbreviation.)

;; Js2-mode
(use-package js2-mode
    :ensure t)

(use-package js2-refactor
    :ensure t)

(use-package xref-js2
    :ensure t)

(use-package company-tern
   :ensure t
   :ensure tern)

(use-package add-node-modules-path
   :ensure t
   :config
   ;; automatically run the function when web-mode starts
   (eval-after-load 'web-mode
     '(add-hook 'web-mode-hook 'add-node-modules-path)))

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

;; Company-tern Intellisense for JavaScript
(require 'company-tern)
(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
                           
;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)

;; Js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

;; Es-lint for javascript
(eval-after-load 'js-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))

(flycheck-add-mode 'javascript-eslint 'web-mode)

(setq-default flycheck-disabled-checkers 
    (append flycheck-disabled-checkers 
    '(json-jsonlist)))

;; Disable jshint and enable es-lint
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; Use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-eslint 'javascript-mode)

;;;;;;;; JavaScript end

(use-package csharp-mode
    :ensure t
    :config
    (defun csharp-development ()
    "Csharp development."
    (electric-pair-local-mode 1))
    (add-hook 'csharp-mode-hook 'csharp-development))

(use-package omnisharp
    :ensure t
    :config
    (add-hook 'csharp-mode-hook 'omnisharp-mode))

;; Uncomment if you want to switch to vim bindings 

 (use-package evil
    :ensure t
    :config
    (evil-mode 1))

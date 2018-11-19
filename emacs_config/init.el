;;; package --- Summary
;;; Commentary:
;;; Code:

(setq debug-on-error t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

;;  install use-package unless it has been previously installed
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/marinov.org"))
;;; init.el ends here

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 200 :width normal :foundry "nil" :family "Hack")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (base16-ocean)))
 '(custom-safe-themes
   (quote
    ("fee4e306d9070a55dce4d8e9d92d28bd9efe92625d2ba9d4d654fc9cd8113b7f" "50d07ab55e2b5322b2a8b13bc15ddf76d7f5985268833762c500a90e2a09e7aa" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "12bacee81d067acf07dec4c867be541a04744a6ac6a39636de25a2c77e9b573c" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "5a7830712d709a4fc128a7998b7fa963f37e960fd2e8aa75c76f692b36e6cf3c" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "f9f2ea69700b0c660f1a6507bbd0aec13e213b7618336ff20852f617991ae369" "bc4c89a7b91cfbd3e28b2a8e9e6750079a985237b960384f158515d32c7f0490" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "08ef1356470a9d3bf363ffab0705d90f8a492796e9db489936de4bde6a4fdb19" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (company-jedi which-key ggtags cider dashboard beacon telephone-line ranger gruvbox-theme latex-math-preview swiper-helm better-shell org-ac tabbar zerodark-theme yasnippet-snippets xref-js2 web-mode virtualenvwrapper virtualenv treemacs spacemacs-theme seti-theme rtags python-mode pylint org-bullets org omnisharp oceanic-theme neotree modern-cpp-font-lock magit js2-refactor irony-eldoc iedit google-c-style flymake-jslint flymake-jshint flymake-cursor flycheck-irony flycheck-clang-analyzer emmet-mode elpy dumb-jump counsel-projectile company-web company-tern company-irony-c-headers company-irony clang-format bind-key base16-theme auto-complete-clang auto-complete-c-headers ac-js2 ac-html-csswatcher ac-html)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#282828"))))
(put 'set-goal-column 'disabled nil)


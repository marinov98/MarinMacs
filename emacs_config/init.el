;;; package --- Summary
;;; Commentary:
;;; Code:

(setq debug-on-error t) ;; enable debugging in case anything goes wrong

;; Enable the ability to install packages
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

;; expand marinov.org and convert it to marinov.el to start-up emacs
(org-babel-load-file (expand-file-name "~/.emacs.d/marinov.org"))
;;; init.el ends here


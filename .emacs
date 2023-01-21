(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :init (which-key-mode))



(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(global-set-key (kbd "C-z") 'undo)

(auto-revert-mode 1)
(delete-selection-mode 1)
(tool-bar-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)
(setq auto-save-default nil)
(setq delete-auto-save-files t)



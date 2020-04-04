(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                     ("marmalade" . "http://marmalade-repo.org/packages/")
                     ("melpa" . "http://melpa.org/packages/")))


(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
      (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

(use-package helm :ensure t)
(use-package magit :ensure t)
(use-package powerline :ensure t)
(use-package wrap-region :ensure t)
(use-package markdown-mode :ensure t)
(use-package flycheck :ensure t)
(use-package lsp-mode :commands lsp :ensure t)
(use-package lsp-ui :commands lsp-ui-mode :ensure t)
(use-package company-lsp
  :ensure t
  :commands company-lsp
  :config (push 'company-lsp company-backends)) ;; add company-lsp as a backend
(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))
(use-package wrap-region
  :ensure t
  :config
  (wrap-region-add-wrapper "`" "`")
  (wrap-region-add-wrapper "_" "_"))
(use-package column-enforce-mode :ensure t)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(menu-bar-mode -1)  
(setq c-default-style "stroustrup")
(global-column-enforce-mode 1)
(require 'helm)
(helm-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages
   (quote
    (column-enforce-mode yaml-mode ccls wrap-region markdown-mode use-package sublime-themes spacemacs-theme powerline-evil magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

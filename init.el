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

;;(use-package evil :ensure t)
(use-package helm :ensure t)
(use-package magit :ensure t)
(use-package powerline :ensure t)
(use-package wrap-region :ensure t)
(use-package markdown-mode :ensure t)
;;(use-package evil-tabs :ensure t)

;;(require 'evil)
;;(evil-mode t)
;;(global-evil-tabs-mode t)
;;(powerline-center-color-theme)
(require 'helm)
(helm-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages
   (quote
    (wrap-region markdown-mode use-package sublime-themes spacemacs-theme powerline-evil magit helm evil-tabs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

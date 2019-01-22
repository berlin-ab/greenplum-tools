;;;
;;;
;;; GPDB tools emacs configuration
;;;
;;;


(defun main ()
  (defun install-third-party-packages ()
    (package-initialize)

    (add-to-list 'package-archives
		 '("melpa-stable" . "https://stable.melpa.org/packages/") t)

    ;; Install these third-party packages
    (require 'use-package)
    (use-package flycheck :ensure t)
    (use-package real-auto-save :ensure t)
    (use-package neotree :ensure t)
    (use-package rainbow-delimiters :ensure t)
    (use-package srefactor :ensure t)
    (use-package expand-region :ensure t)
    (use-package ag :ensure t)
    (use-package aggressive-indent :ensure t)
    (use-package grandshell-theme :ensure t)
    (use-package projectile :ensure t))

  (defun configure-theme ()
    (load-theme 'misterioso))

  (defun setup-keyboard-shortcuts ()
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
    (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
    (global-set-key (kbd "M-u") 'er/expand-region)
    (global-set-key (kbd "M-n") 'er/contract-region)
    (global-set-key (kbd "C-M-\\") 'neotree-toggle))

  (defun require-and-configure-third-party-libraries ()
    ;; Require and configure third-party libraries
    (require 'projectile)
    (projectile-mode +1)

    
    ;; Configure expand-region
    (require 'expand-region)
    (pending-delete-mode t)


    ;; Configure neotree
    (require 'neotree)
    (setq neo-smart-open t)

    
    ;; Autosave
    (setq auto-save-visited-mode t)
    (require 'real-auto-save)
    (add-hook 'prog-mode-hook 'real-auto-save-mode)
    (setq real-auto-save-interval 1) ;; seconds
    )

  
  ;;
  ;; Configuration steps
  ;;
  (install-third-party-packages)
  (configure-theme)
  (require-and-configure-third-party-libraries)

  
  ;; Load Postgres/Greenplum code style
  (load-file "~/workspace/gpdb/src/tools/editors/emacs.samples")


  ;; Coding
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (which-function-mode t)
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (global-git-gutter-mode +1))


;;
;; Run the configuration
;;
(main)


;; Setup projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
(projectile-mode +1)


;; Current theme
(load-theme 'misterioso)


;; Load Postgres/Greenplum code style
(load-file "~/workspace/gpdb/src/tools/editors/emacs.samples")

;; Configure expand-region
(require 'expand-region)
(global-set-key (kbd "M-u") 'er/expand-region)
(global-set-key (kbd "M-n") 'er/contract-region)
(pending-delete-mode t)

;; Coding
(which-function-mode t)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(global-git-gutter-mode +1)

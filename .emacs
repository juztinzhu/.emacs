(setq load-home-init-file t) ; don't load init file from ~/.xemacs/init.el
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(dired-listing-switches "-o")
'(inhibit-startup-screen t)
'(tool-bar-mode nil nil (tool-bar)))
(scroll-bar-mode 0)
(dirtrack-mode)
(menu-bar-mode 0)
(global-set-key (kbd"C-=") 'windmove-right)
(global-set-key (kbd"C--") 'windmove-left)
(global-set-key (kbd"M-=") 'windmove-up)
(global-set-key (kbd"M--") 'windmove-down)
(global-set-key (kbd"<f9>") 'rename-buffer)


(put 'erase-buffer 'disabled nil)

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
       '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme
    flycheck
    elpy
    markdown-mode))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(elpy-enable)
(server-mode)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(load-file "~/.emacs.d/russian-colemak.el")
(setq default-input-method "russian-colemak")

;(set-language-environment 'UTF-8)
;(setq default-buffer-file-coding-system 'utf-8-unix)

(setq indent-tabs-mode nil)

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (c-set-style "k&r")
	    (setq c-basic-offset 2)))

(setq-default make-backup-files nil)

(setq-default auto-save-defaults t)

(show-paren-mode)

(require 'linum+)
(setq linum-format "%d ")
(global-linum-mode 1)

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(global-set-key (kbd "<f2>") 'bs-show)

(byte-compile-file "~/.emacs.d/lisp/highlight-parentheses.el")
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
    highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.12.2")
(require 'yasnippet)
(yas-global-mode 1)
(yas/initialize)
(yas/load-directory "~/.emacs.d/elpa/yasnippet-0.12.2/snippets")

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(add-to-list 'load-path "~/.emacs.d/lisp/slime")
(require 'slime)
(setq slime-net-coding-system 'utf-8-unix)
(slime-setup '(slime-repl
               slime-fuzzy
               slime-fancy-inspector
               slime-indentation))

(load-theme 'charcoal-black t t)
(enable-theme 'charcoal-black)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yasnippet djvu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

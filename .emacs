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

(require 'jabber)
;(add-hook 'jabber-chat-mode-hook 'flyspell-mode)
(global-set-key "\C-x\C-a" 'jabber-activity-switch-to)


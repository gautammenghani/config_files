(cua-mode t)
(global-display-line-numbers-mode t)
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-S-f") 'rgrep)
(define-key isearch-mode-map [(control f)] 'isearch-repeat-forward)
(setq xref-search-program 'ripgrep)
(global-set-key (kbd "C-h") 'replace-string)
(global-set-key (kbd "C-c h") 'help-command)
(xterm-mouse-mode 1)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(require 'eglot)

;; hooks to automatically start eglot:
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

;; Use spaces instead of literal tabs by default
(setq-default indent-tabs-mode nil)

;; Set default tab display width and standard indentation to 4 spaces
(setq-default tab-width 4)
(setq-default standard-indent 4)

;; Set C/C++ default indentation to 4 spaces
(setq-default c-basic-offset 4)

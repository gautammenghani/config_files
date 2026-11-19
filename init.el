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

;; Optionally, add hooks to automatically start eglot for your favorite modes:
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

;; Use spaces instead of literal tabs by default
(setq-default indent-tabs-mode nil)

;; Set default tab display width and standard indentation to 4 spaces
(setq-default tab-width 4)
(setq-default standard-indent 4)

;; Set C/C++ default indentation to 4 spaces (when outside the Linux kernel)
(setq-default c-basic-offset 4)

(with-eval-after-load 'diff-mode
  (set-face-attribute 'diff-added nil :background 'unspecified :foreground "#50fa7b")
  (set-face-attribute 'diff-removed nil :background 'unspecified :foreground "#ff5555")
  (set-face-attribute 'diff-refine-added nil :background 'unspecified :weight 'bold)
  (set-face-attribute 'diff-refine-removed nil :background 'unspecified :weight 'bold))

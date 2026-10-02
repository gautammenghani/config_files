(cua-mode t)
(global-display-line-numbers-mode t)
(global-set-key (kbd "C-f") 'isearch-forward)
(define-key isearch-mode-map [(control f)] 'isearch-repeat-forward)

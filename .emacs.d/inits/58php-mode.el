(add-hook 'php-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "<f1>") 'my-php-symbol-lookup)
	     (auto-complete-mode t)
	     (require 'ac-php)
	     (add-to-list 'ac-sources 'ac-source-php)
	     (yas-global-mode 1)
	     (php-eldoc-enable)
	     (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)
	     (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back)))
(add-hook 'php-mode-hook 'php-enable-psr2-coding-style)

(defun my-php-symbol-lookup ()
  (interactive)
  (let ((symbol (symbol-at-point)))
    (if (not symbol)
        (message "No symbol at point.")
      (browse-url (concat "http://php.net/manual-lookup.php?pattern="
                          (symbol-name symbol))))))

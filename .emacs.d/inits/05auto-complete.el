;; Auto Complete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'html-mode)
(add-to-list 'ac-modes 'text-mode)
(add-to-list 'ac-modes 'fundamental-mode)
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'yatex-mode)
(add-to-list 'ac-modes 'markdown-mode)
(add-to-list 'ac-modes 'json-mode)
(add-to-list 'ac-modes 'toml-mode)
(add-to-list 'ac-modes 'twig-mode)
(add-to-list 'ac-modes 'enh-ruby-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t);; Complement candidate selection with C-n / C-p when complement menu is displayed
(setq ac-use-fuzzy t)   ;; Ambiguous match
(global-auto-complete-mode t)
(set-face-background 'popup-tip-face "#2f4f4f")
(set-face-foreground 'popup-tip-face "white")
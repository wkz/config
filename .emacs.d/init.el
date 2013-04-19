;; marmalade
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; loads
(require 'tramp)

;; UI
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(load-theme 'solarized-dark t)

;; Keys
(global-set-key (kbd "M-<tab>") 'dabbrev-expand)
(global-set-key (kbd "M-r") 'rgrep)

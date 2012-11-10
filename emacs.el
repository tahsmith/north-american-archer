(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/python-mode/")
(add-to-list 'load-path "~/.emacs.d/smex/")

(scroll-bar-mode -1)
(tool-bar-mode -1)
(fset 'yes-or-no-p ' y-or-n-p)
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" .
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path
	     "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

(require 'ido)
(require 'uniquify)
(ido-mode t)
(setq ido-enable-flex-matching t)

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
 (cons '("\\.m%" . octave-mode) auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/monky")
(require 'monky)

(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(setq py-shell-name "python2")
(require 'cython-mode)

(require 'lambda-mode)
(add-hook 'python-mode-hook #'lambda-mode 1)
(setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))

(add-to-list 'load-path "~/.emacs.d/autopair")
(require 'autopair)
(autopair-global-mode)
(add-hook 'python-mode-hook
          #'(lambda ()
              (setq autopair-handle-action-fns
                    (list #'autopair-default-handle-action
                          #'autopair-python-triple-quote-action))))

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-x") 'smex-major-mode-commands)
;; Old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-commands)

(push '("." . "~/.emacs.d/backups") backup-directory-alist)

(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ipython-complete-use-separate-shell-p t)
 '(py-install-directory "/home/tsmith/.emacs.d/python-mode")
 '(py-shell-name "ipython2")
 '(py-split-windows-on-execute-p nil)
 '(py-start-run-py-shell nil)
 '(py-switch-buffers-on-execute-p t)
 '(python-shell-interpreter "ipython2")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

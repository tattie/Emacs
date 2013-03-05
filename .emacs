;;(load "~/.emacs.d/autoloads" 'install)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Droid Sans Mono")))))

(add-to-list 'auto-mode-alist '("\\.bream\\'" . java-mode))
(add-to-list 'load-path "~/.emacs.d")
;;(require 'install)
;;(load "auto-complete-1.3.1\\auto-complete.el")
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;;========== enable mode ===============
(iswitchb-mode 1)
(which-function-mode 1)
(desktop-save-mode 1)

(recentf-mode 1) ; keep a list of recently opened files

(global-hl-line-mode 1) ; turn on highlighting current line
(global-linum-mode 1) ; display line numbers in margin. Emacs 23 only.
(delete-selection-mode 1)

(show-paren-mode 1)
(setq show-paren-style 'expression) ; highlight entire bracket expression

(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

;;(speedbar 1)

(set-default-font "Monospace 12")

(setq c-default-style "linux"
          c-basic-offset 4)

(setq frame-title-format "%b")

;;(require ‘c++-mode)
;;(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;;=========== short-cut key====================
;;(global-set-key [(meta right)] ’forward-sexp)
;;(global-set-key [(meta g)] ’goto-line)


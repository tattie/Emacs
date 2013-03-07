;; How to install emacs24 in Ubuntu:
;; $ sudo apt-add-repository ppa:cassou/emacs
;; $ sudo apt-get install emacs24

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


;; =========== Cusor movement ============
;; other-window <C-x o> "Select another window in cyclic ordering of windows."

;;================= Edit =============
;; [Edit]
;; function-name key short-description
;; undo  C-/ "undo"
;; kill-region   C-w "cut/kill"
;; kill-ring-save  M-w "copy"
;; yank  C-y "paste"

;; kill-word <C-delete>, M-d "Kill characters forward until encountering the end of a word."
;; kill-whole-line <C-S-backspace> Kill current line.
;; delete-indentation <M-^> Join this line to previous and fix up whitespace at join.

;; mark-paragraph  M-h
;; mark-whole-buffer C-x h
;; string-insert-rectangle "Insert STRING on each line of region-rectangle, shifting text right."

;; transpose-lines C-x C-t "当前行和上一行互换"
;; dabbrev-expand  M-/ "auto completion"
;; 
;; ================ [Search] ============
;; isearch-forward C-s "Do incremental search forward."
;; The following non-printing keys are bound in `isearch-mode-map'.
;; C-w "search current word"
;; C-s "to search again forward"
;; C-y "to yank the last string of killed text."
;; M-c "toggle case sensitivity"

;; occur M-s o "Show all lines in the current buffer containing a match for REGEXP."

;; query-replace  M-％
;; in replace mode: <!> means replace all without confirm 
;; 
;; ============== [File & Buffer] =========
;; ido-find-file C-x C-f
;; load-file "Load the Lisp file named FILE."

;; how to edit files in remote machine? 
;; use file name like this: /user@host:filename

;; ============== [Window] =============
;; recenter-top-bottom  C-l "center point vertically"

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
(semantic-mode 1)
(auto-complete-mode 1)
(ido-mode 1)
(which-function-mode 1)
(desktop-save-mode 1)

(recentf-mode 1) ; keep a list of recently opened files

;;(global-hl-line-mode 1) ; turn on highlighting current line
(global-linum-mode 1) ; display line numbers in margin. Emacs 23 only.
(delete-selection-mode 1)

(show-paren-mode 1)
;;(setq show-paren-style 'expression) ; highlight entire bracket expression

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

(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name))
)
(global-set-key "\C-cz" 'show-file-name)

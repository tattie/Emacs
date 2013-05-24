;; How to install emacs24 in Ubuntu:
;; $ sudo apt-add-repository ppa:cassou/emacs
;; $ sudo apt-get install emacs24

;;(load "~/.emacs.d/autoloads" 'install)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Droid Sans Mono")))))


(setq scroll-conservatively 6)
(setq scroll-step 6)
(setq scroll-preserve-screen-position t)

;; =========== Cusor movement ============
;; other-window <C-x o> "Select another window in cyclic ordering of windows."

;; forward-sexp <C-M-right>, C-M-f "Move forward across one balanced expression (sexp)."
;; C-M-b

;; Moving in the Parenthesis Structure
;; C-M-u/d Move up/down in parenthesis structure (backward-up-list).  
;; C-M-n/p Move forward/backward over a parenthetical group (forward-list).

;; ============ Help =============
;; describe-mode <F1 m> "In any mode, see its inline documentation."

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
;; string-rectangle

;; transpose-lines C-x C-t "当前行和上一行互换"
;; dabbrev-expand  M-/ "auto completion"
;; comment-dwim M-; "comment/uncomment selected region"
;; quoted-insert C-q "Read next input character and insert it."

;; list-matching-lines
;; delete-matching-lines
;; delete-non-matching-lines

;; highlight-phrase, highlight-regexp, highlight-lines-matching-regexp

;; delete-trailing-whitespace "delete trailing white spaces for the whole buffer."

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
;; find-name-dired "Search DIR recursively for files matching the globbing pattern PATTERN, and run dired on those files."

;; how to edit files in remote machine?
;; use file name like this: /user@host:filename

;; ============== [Window] =============
;; recenter-top-bottom  C-l "center point vertically"

;; ============= Misc ================
;; count-words-region M-= "Count the number of words in the region"

;; ============= customized shortcut key ===========

(global-set-key (kbd "<C-f4>") 'kill-buffer-and-window)
;; describe-key

; define some keys only when the major mode html-mode is active
;; (add-hook 'html-mode-hook
;;  (lambda ()
;;  (local-set-key (kbd "C-c w") 'bold-word)
;;  )
;; )

;; make cursor movement keys under right hand's home-row.
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-l") 'forward-char)

(global-set-key (kbd "M-u") 'backward-word)
(global-set-key (kbd "M-o") 'forward-word)

(global-set-key [S-f3] 'find-grep)

(add-to-list 'auto-mode-alist '("\\.bream\\'" . java-mode))
(add-to-list 'load-path "~/.emacs.d")
;;(require 'install)
;;(load "auto-complete-1.3.1\\auto-complete.el")
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq load-path (cons "/usr/share/emacs/site-lisp/global" load-path))
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c++-mode-hook 
   '(lambda () 
      (gtags-mode t)
))

;; Start speedbar automatically if we're using a window system like X, etc
;; (when window-system 
;;   (speedbar t))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;; helm (anything) https://github.com/emacs-helm/helm.git
;; (add-to-list 'load-path "~/code/github/helm")
;; (require 'helm-config)
;;(helm-mode 1)

;;========== enable mode ===============
;;(iswitchb-mode 1)
(semantic-mode 1)
(auto-complete-mode 1)
(ido-mode 1)
(which-function-mode 1)
(desktop-save-mode 1)

(global-auto-revert-mode 1)
(recentf-mode 1) ;; keep a list of recently opened files

;; (whitespace-mode 1) ;; Toggle whitespace visualization

;;(global-hl-line-mode 1) ;; turn on highlighting current line
(global-linum-mode 1) ;; display line numbers in margin. Emacs 23 only.
(delete-selection-mode 1)

(require 'whole-line-or-region) ;; when no selection, cut/copy whole line
(whole-line-or-region-mode 1)

;; (require 'sr-speedbar)

(show-paren-mode 1)
;;(setq show-paren-style 'expression) ;; highlight entire bracket expression

(setq make-backup-files nil) ;; stop creating those backup~ files
(setq auto-save-default nil) ;; stop creating those #autosave# files

;;(speedbar 1)

(set-default-font "Monospace 12")

(setq c-default-style "linux"
          c-basic-offset 4)

(setq frame-title-format "%b")

(setq semantic-load-turn-useful-things-on t)

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
(put 'scroll-left 'disabled nil)


;; =============== alias ===============
;; (defalias 'g 'grep)

;; =============== abbrev ==============
;; (define-abbrev-table 'global-abbrev-table '(
;;     ("8g" "Google")
;;     ))

(defalias 'yes-or-no-p 'y-or-n-p)

;; turn on abbrev mode globally
(setq-default abbrev-mode t)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1))


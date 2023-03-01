(setq gc-cons-threshold (* 50 1000 1000))
;; ######################################## INSTALL PACKAGES ######################################
(require 'package)

(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
         '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
        '("org" . "http://orgmode.org/elpa/") t)  ;; for newest version of org mode
(add-to-list 'package-archives 
        '( "jcs-elpa" . "https://jcs-emacs.github.io/jcs-elpa/packages/") t)



(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;(customize-set-variable 'package-load-list
;;   '((doom-modeline nil) ; never enable or
;;                         ; install newer versions
;;                         ; of this package
;;
;    (tree-sitter-langs "0.12.8") ; lock this
;                                 ; package to
;                                 ; this version
;                                 ; even if newer
;                                 ; versions are
;                                 ; available
;
;    all))                        ; enable the
;;                                  ; rest of the
;;                                  ; packages


;; (unless (package-installed-p `better-defaults) (package-install `better-defaults))
;; (unless (package-installed-p `auto-complete) (package-install `auto-complete))

;; ####################################### Addlist #########################################
;; (add-to-list 'package-selected-packages '0blayout)
;; (add-to-list 'package-selected-packages '0xc)
;; (add-to-list 'package-selected-packages 'ac-helm)
;; (add-to-list 'package-selected-packages 'ac-ispell)
;; (add-to-list 'package-selected-packages 'ace-window)
;; (add-to-list 'package-selected-packages 'ack)
;;(add-to-list 'package-selected-packages 'aide)
(add-to-list 'package-selected-packages 'all-the-icons)
;; (add-to-list 'package-selected-packages 'anaconda-mode)
(add-to-list 'package-selected-packages 'atomic-chrome)
(add-to-list 'package-selected-packages 'auctex)
;;(add-to-list 'package-selected-packages 'auto-complete)
;;(add-to-list 'package-selected-packages 'auto-complete-config)
;;(add-to-list 'package-selected-packages 'auto-complete-auctex)
;; (add-to-list 'package-selected-packages 'auto-complete-clang)
;; (add-to-list 'package-selected-packages 'auto-package-update)
(add-to-list 'package-selected-packages 'avy)
(add-to-list 'package-selected-packages 'better-defaults)
(add-to-list 'package-selected-packages 'bibtex)
;; (add-to-list 'package-selected-packages 'c-eldoc)
(add-to-list 'package-selected-packages 'cape)
(add-to-list 'package-selected-packages 'cider)
(add-to-list 'package-selected-packages 'citar)
;; (add-to-list 'package-selected-packages 'cmake-ide)
;; (add-to-list 'package-selected-packages 'cmake-mode)
;; (add-to-list 'package-selected-packages 'code-cells)
;; (add-to-list 'package-selected-packages 'combobulate)
;; (add-to-list 'package-selected-packages 'conda)
;;(add-to-list 'package-selected-packages 'codegpt)
(add-to-list 'package-selected-packages 'consult)
(add-to-list 'package-selected-packages 'corfu)
(add-to-list 'package-selected-packages 'corfu-prescient)
;; (add-to-list 'package-selected-packages 'counsel)
(add-to-list 'package-selected-packages 'dashboard-hackernews)
(add-to-list 'package-selected-packages 'dashboard)
(add-to-list 'package-selected-packages 'dap-mode)
(add-to-list 'package-selected-packages 'dired-icon)
(add-to-list 'package-selected-packages 'dired-subtree)
(add-to-list 'package-selected-packages 'dirvish)
(add-to-list 'package-selected-packages 'dot-mode)
(add-to-list 'package-selected-packages 'drag-stuff)
(add-to-list 'package-selected-packages 'ef-themes)
;; (add-to-list 'package-selected-packages 'ein)
;; (add-to-list 'package-selected-packages 'eldoc-stan)
;; (add-to-list 'package-selected-packages 'electric-spacing)
;; (add-to-list 'package-selected-packages 'elisp-lint)
;; (add-to-list 'package-selected-packages 'elpy)
(add-to-list 'package-selected-packages 'elfeed)
(add-to-list 'package-selected-packages 'elfeed-org)
(add-to-list 'package-selected-packages 'elfeed-score)
(add-to-list 'package-selected-packages 'embark)
(add-to-list 'package-selected-packages 'embark-consult)
(add-to-list 'package-selected-packages 'emojify)
(add-to-list 'package-selected-packages 'eros)
(add-to-list 'package-selected-packages 'ess)
(add-to-list 'package-selected-packages 'evil-nerd-commenter)
;; (add-to-list 'package-selected-packages 'evil)
;; (add-to-list 'package-selected-packages 'evil-collection)
;; (add-to-list 'package-selected-packages 'evil-visual-mark-mode)
(add-to-list 'package-selected-packages 'exec-path-from-shell)
;; (add-to-list 'package-selected-packages 'expand-region)
;; (add-to-list 'package-selected-packages 'exwm)
(add-to-list 'package-selected-packages 'flycheck)
;; (add-to-list 'package-selected-packages 'flycheck-grammarly)
;; (add-to-list 'package-selected-packages 'flycheck-plantuml)
;; (add-to-list 'package-selected-packages 'flycheck-pycheckers)
;; (add-to-list 'package-selected-packages 'flycheck-stan)
;; (add-to-list 'package-selected-packages 'flymake)
;; (add-to-list 'package-selected-packages 'flymake-grammarly)
;; (add-to-list 'package-selected-packages 'fn)
;; (add-to-list 'package-selected-packages 'fzf)
(add-to-list 'package-selected-packages 'focus)
(add-to-list 'package-selected-packages 'git-gutter)
;; (add-to-list 'package-selected-packages 'gnuplot)
;; (add-to-list 'package-selected-packages 'gnuplot-mode)
(add-to-list 'package-selected-packages 'google-this)
;; (add-to-list 'package-selected-packages 'graphviz-dot-mode)
(add-to-list 'package-selected-packages 'greader)
(add-to-list 'package-selected-packages 'helpful)
(add-to-list 'package-selected-packages 'helm)
(add-to-list 'package-selected-packages 'highlight-defined)
;; (add-to-list 'package-selected-packages 'highlight-parentheses)
(add-to-list 'package-selected-packages 'impatient-mode)
;; (add-to-list 'package-selected-packages 'jedi)
;; (add-to-list 'package-selected-packages 'jedi-core)
(add-to-list 'package-selected-packages 'jupyter)
(add-to-list 'package-selected-packages 'ivy-prescient)
(add-to-list 'package-selected-packages 'languagetool)
(add-to-list 'package-selected-packages 'latex-preview-pane)
(add-to-list 'package-selected-packages 'lsp-mode)
(add-to-list 'package-selected-packages 'lsp-pyright)
(add-to-list 'package-selected-packages 'lsp-ui)
(add-to-list 'package-selected-packages 'lsp-treemacs)
(add-to-list 'package-selected-packages 'magit)
(add-to-list 'package-selected-packages 'markdown-mode)
(add-to-list 'package-selected-packages 'marginalia)
;; (add-to-list 'package-selected-packages 'markdown-preview-eww)
;; (add-to-list 'package-selected-packages 'markdown-preview-mode)
;; (add-to-list 'package-selected-packages 'material-theme)
(add-to-list 'package-selected-packages 'maxframe)
;; (add-to-list 'package-selected-packages 'mu4e-alert)
;; (add-to-list 'package-selected-packages 'mu4e-views)
(add-to-list 'package-selected-packages 'multiple-cursors)
;; (add-to-list 'package-selected-packages 'ob-diagrams)
;; (add-to-list 'package-selected-packages 'ob-ess-julia)
;; (add-to-list 'package-selected-packages 'ob-ipython)
;; (add-to-list 'package-selected-packages 'ob-mermaid)
;;(add-to-list 'package-selected-packages 'openai)
(add-to-list 'package-selected-packages 'orderless)
;; (add-to-list 'package-selected-packages 'org-babel-eval-in-repl)
;; (add-to-list 'package-selected-packages 'org-bullets)
(add-to-list 'package-selected-packages 'org-drill)
;; (add-to-list 'package-selected-packages 'org-evil)
(add-to-list 'package-selected-packages 'org-inline-pdf)
;; (add-to-list 'package-selected-packages 'org-latex-impatient)
;; (add-to-list 'package-selected-packages 'org-msg)
(add-to-list 'package-selected-packages 'org-noter-pdftools)
(add-to-list 'package-selected-packages 'org-pdftools)
;; (add-to-list 'package-selected-packages 'org-plus-contrib)
(add-to-list 'package-selected-packages 'org-pomodoro)
;; (add-to-list 'package-selected-packages 'org-preview-html)
;; (add-to-list 'package-selected-packages 'org-ql)
(add-to-list 'package-selected-packages 'org-ref)
(add-to-list 'package-selected-packages 'org-roam)
(add-to-list 'package-selected-packages 'org-roam-bibtex)
(add-to-list 'package-selected-packages 'org-roam-timestamps)
(add-to-list 'package-selected-packages 'org-roam-ui)
(add-to-list 'package-selected-packages 'org-wc)
(add-to-list 'package-selected-packages 'org2blog)
;; (add-to-list 'package-selected-packages 'orgtbl-ascii-plot)
;; (add-to-list 'package-selected-packages 'ox-latex-subfigure)
;; (add-to-list 'package-selected-packages 'ox-pandoc)
;; (add-to-list 'package-selected-packages 'package-utils)
(add-to-list 'package-selected-packages 'page-break-lines)
(add-to-list 'package-selected-packages 'paredit)
(add-to-list 'package-selected-packages 'pdb-mode)
(add-to-list 'package-selected-packages 'pdf-tools)
;; (add-to-list 'package-selected-packages 'plantuml-mode)
(add-to-list 'package-selected-packages 'poly-markdown)
(add-to-list 'package-selected-packages 'polymode)
;; (add-to-list 'package-selected-packages 'poly-org)
(add-to-list 'package-selected-packages 'poly-R)
;; (add-to-list 'package-selected-packages 'pomodoro)
(add-to-list 'package-selected-packages 'popup)
(add-to-list 'package-selected-packages 'powerline)
;; (add-to-list 'package-selected-packages 'powerline-evil)
(add-to-list 'package-selected-packages 'powershell)
(add-to-list 'package-selected-packages 'prescient)
(add-to-list 'package-selected-packages 'projectile)
;; (add-to-list 'package-selected-packages 'pydoc)
;; (add-to-list 'package-selected-packages 'python-pytest)
(add-to-list 'package-selected-packages 'quelpa)
(add-to-list 'package-selected-packages 'quelpa-use-package)
(add-to-list 'package-selected-packages 'racket-mode)
(add-to-list 'package-selected-packages 'rainbow-delimiters)
;; (add-to-list 'package-selected-packages 'rtags)
(add-to-list 'package-selected-packages 'simple-httpd)
(add-to-list 'package-selected-packages 'sound-wav)
;; (add-to-list 'package-selected-packages 'ssh)
;; (add-to-list 'package-selected-packages 'stan-mode)
;; (add-to-list 'package-selected-packages 'stan-snippets)
;; (add-to-list 'package-selected-packages 'standoff-mode)
(add-to-list 'package-selected-packages 'swiper)
;; (add-to-list 'package-selected-packages 'sx)
;; (add-to-list 'package-selected-packages 'treemacs)
;; (add-to-list 'package-selected-packages 'treemacs-evil)
;; (add-to-list 'package-selected-packages 'treemacs-icons-dired)
;; (add-to-list 'package-selected-packages 'treemacs-magit)
;; (add-to-list 'package-selected-packages 'treemacs-persp)
;; (add-to-list 'package-selected-packages 'treemacs-projectile)
(add-to-list 'package-selected-packages 'tree-sitter-langs)
(add-to-list 'package-selected-packages 'vertico)
(add-to-list 'package-selected-packages 'vertico-prescient)
;; (add-to-list 'package-selected-packages 'try)
;; (add-to-list 'package-selected-packages 'use-package)
;; (add-to-list 'package-selected-packages 'wc-mode)
;; (add-to-list 'package-selected-packages 'web)
(add-to-list 'package-selected-packages 'which-key)
;; (add-to-list 'package-selected-packages 'xelb)
;; (add-to-list 'package-selected-packages 'xwidgets-reuse)
;; (add-to-list 'package-selected-packages 'xwwp-follow-link-ivy)
(add-to-list 'package-selected-packages 'yasnippet)
;; (add-to-list 'package-selected-packages 'yasnippet-classic-snippets)
;; (add-to-list 'package-selected-packages 'yasnippet-snippets)
;; (add-to-list 'package-selected-packages 'ztree)

(package-install-selected-packages)
(message "Installing missing packages. Take 4-5 minutes when all are missing.")


;; ############################## Basics Configuration ################################
;; ==> adjust here
;;(setq openai-key "[]")
;;(setq openai-api-key "")

(setq inhibit-startup-message t) ;; hide the startup message
;; (load-theme 'material t) ;; load material theme
;; (global-linum-mode t) ;; enable line numbers globally
(set-default 'truncate-lines t) ;; do not wrap
(prefer-coding-system 'utf-8) ;; use UTF-8

;; Zoom
(set-face-attribute 'default nil :height 128)

;; Save History
(savehist-mode +1)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))


;; Size of the starting Window
(setq initial-frame-alist '((top . 1)
			    (left . 450)
			    (width . 101)
			    (height . 90)))

;; Line wrap
(global-visual-line-mode +1)
(delete-selection-mode +1)
(save-place-mode +1)



;; ==> adjust here
;;### Shell configuration
(use-package exec-path-from-shell
  :init
  (setenv "SHELL" "/opt/local/bin/bash")
  :if (memq window-system '(mac ns x))
  :config
  (setq exec-path-from-shell-variables '("PATH" "GOPATH" "PYTHONPATH"))
  (exec-path-from-shell-initialize))


;;### Faked full screen
;; (use-package maxframe
;; (defvar my-fullscreen-p t "Check if fullscreen is on or off")
;; (defun my-toggle-fullscreen ()
;; (interactive)
;; (setq my-fullscreen-p (not my-fullscreen-p))
;; (if my-fullscreen-p
;;   (restore-frame)
;;   (maximize-frame)))
;; ;; (global-set-key (kbd "M-RET") 'toggle-frame-fullscreen) ;; conflicts with an auctex command to insert an \item in a list.

;;### Backups
(setq vc-make-backup-files t)

(setq version-control t ;; Use version numbers for backups.
        kept-new-versions 10 ;; Number of newest versions to keep.
        kept-old-versions 0 ;; Number of oldest versions to keep.
        delete-old-versions t ;; Don't ask to delete excess backup versions.
        backup-by-copying t) ;; Copy all files, don't rename them.
;; If you want to avoid 'backup-by-copying', you can instead use
;;
;; (setq backup-by-copying-when-linked t)
;;
;; but that makes the second, "per save" backup below not run, since
;; buffers with no backing file on disk are not backed up, and
;; renaming removes the backing file.  The "per session" backup will
;; happen in any case, you'll just have less consistent numbering of
;; per-save backups (i.e. only the second and subsequent save will
;; result in per-save backups).

;; If you want to avoid backing up some files, e.g. large files,
;; then try setting 'backup-enable-predicate'.  You'll want to
;; extend 'normal-backup-enable-predicate', which already avoids
;; things like backing up files in '/tmp'.

;; Default and per-save backups go here:
(setq backup-directory-alist '(("" . "~/latex-tree-emacs30/backup/per-save")))

 (defun force-backup-of-buffer ()
    ;; Make a special "per session" backup at the first save of each
    ;; emacs session.
    (when (not buffer-backed-up)
      ;; Override the default parameters for per-session backups.
      (let ((backup-directory-alist '(("" . "~/latex-tree-emacs30/backup/per-session")))
            (kept-new-versions 3))
        (backup-buffer)))
    ;; Make a "per save" backup on each save.  The first save results in
    ;; both a per-session and a per-save backup, to keep the numbering
    ;; of per-save backups consistent.
    (let ((buffer-backed-up nil))
      (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)

;; Do not move the current file while creating backup.
(setq backup-by-copying t)

;; Disable lockfiles.
(setq create-lockfiles nil)

(column-number-mode)

;; Show stray whitespace.
(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries 'left)

;; Add a newline automatically at the end of a file while saving.
(setq-default require-final-newline t)

;; A single space follows the end of sentence.
(setq sentence-end-double-space nil)


;;### Turn on font-locking or syntax highlighting
(global-font-lock-mode t)

;;### font size in the modeline
(set-face-attribute 'mode-line nil  :height 140)

;; set default coding of buffers
(setq default-buffer-file-coding-system 'utf-8-unix)

;; Switch from tabs to spaces for indentation
;; Set the indentation level to 4.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Indentation setting for various languages.
(setq c-basic-offset 4)
(setq js-indent-level 2)
(setq css-indent-offset 2)
(setq python-basic-offset 4)

(setq user-init-file "/Users/blaine/latex-tree-emacs30/init.el")
(setq user-emacs-directory "/Users/blaine/latex-tree-emacs30/")
(setq default-directory "/Users/blaine")
(setenv "HOME" "/Users/blaine")
;; (load user-init-file)


;; Write customizations to a separate file instead of this file.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)


;; Custom command.
(defun show-current-time ()
  "Show current time."
  (interactive)
  (message (current-time-string)))

;; Custom key sequences.
(global-set-key (kbd "C-c t") 'show-current-time)
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)


;; display line numbers. Need with s-l. 
(global-display-line-numbers-mode)

;;### hippie-expand M-/
(global-set-key [remap dabbrev-expand]  'hippie-expand)


;; GUI related settings
(if (display-graphic-p)
    (progn
      ;; Removed some UI elements
      ;; (menu-bar-mode -1)
      (tool-bar-mode -1)
      (scroll-bar-mode -1)
      ;; Show battery status
      (display-battery-mode 1)))


;; Hey, stop being a whimp and learn the Emacs keybindings!
;; ;; Set copy+paste 
;;  (cua-mode t)
;;     (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;;     (transient-mark-mode 1) ;; No region when it is not highlighted
;;     (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; REMOVE THE SCRATCH BUFFER AT STARTUP
;; Makes *scratch* empty.
;; (setq initial-scratch-message "")
;; Removes *scratch* from buffer after the mode has been set.
;; (defun remove-scratch-buffer ()
;;   (if (get-buffer "*scratch*")
;;       (kill-buffer "*scratch*")))
;; (add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)


;; Disable the C-z sleep/suspend key
;; See http://stackoverflow.com/questions/28202546/hitting-ctrl-z-in-emacs-freezes-everything
(global-unset-key (kbd "C-z"))

;; Disable the C-x C-b key, use helm (C-x b) instead
(global-unset-key (kbd "C-x C-b"))


;; Make copy and paste use the same clipboard as emacs.
(setq select-enable-primary t
      select-enable-clipboard t)


(setq display-time-default-load-average nil)
(setq display-time-day-and-date t display-time-24hr-format t)
(display-time-mode t)


;; dired-icon-mode
(add-hook 'dired-mode-hook 'dired-icon-mode)

;; replace dired with dirvish
(dirvish-override-dired-mode)


;; Revert Dired and other buffers after changes to files in directories on disk.
;; Source: [[https://www.youtube.com/watch?v=51eSeqcaikM&list=PLEoMzSkcN8oNmd98m_6FoaJseUsa6QGm2&index=2][Dave Wilson]]
(setq global-auto-revert-non-file-buffers t)


;; customize powerline
;; (line above the command line at the bottom of the screen)
(use-package powerline)
(powerline-default-theme)


;; Add line numbers.
;; (global-nlinum-mode t)

;; highlight current line
(global-hl-line-mode +1)
(set-face-background hl-line-face "#1c1f26")
(set-face-attribute 'mode-line nil  :height 360)

;; List recently opened files.
;; Recent files
(recentf-mode 1)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; UTF-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)



;; Quickly access dot emacs d
(global-set-key (kbd "C-c e")
    (lambda()
      (interactive)
      (find-file "~/latex-tree-emacs30")))


;; Global keys
;; If you use a window manager be careful of possible key binding clashes
(setq recenter-positions '(top middle bottom))
(global-set-key (kbd "C-1") 'kill-this-buffer)
(global-set-key (kbd "C-<down>") (kbd "C-u 1 C-v"))
(global-set-key (kbd "C-<up>") (kbd "C-u 1 M-v"))
(global-set-key [C-tab] 'other-window)
(global-set-key (kbd "C-c c") 'calendar)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "C-x C-j") 'dired-jump)
(global-set-key (kbd "C-c r") 'remember)


(setq case-fold-search t)

;; Browse URLS in text mode
(global-goto-address-mode +1)


;; Revert buffers when the underlying file has changed.
(global-auto-revert-mode 1)


;; Save history going back 25 commands.
;; Use M-p to get previous command used in the minibuffer.
;; Use M-n to move to next command.
(setq history-length 25)
(savehist-mode 1)


;; Save place in a file.
(save-place-mode 1)


;; sets monday to be the first day of the week in calendar
(setq calendar-week-start-day 1)

;; save emacs backups in a different directory
;; (some build-systems build automatically all files with a prefix, and .#something.someending breakes that)
(setq backup-directory-alist '(("." . "~/.emacsbackups")))


;; Enable show-paren-mode (to visualize paranthesis) and make it possible to delete things we have marked
(show-paren-mode 1)
(delete-selection-mode 1)


;; use y or n instead of yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; These settings enables using the same configuration file on multiple platforms.
;; Note that windows-nt includes [[https://www.gnu.org/software/emacs/manual/html_node/elisp/System-Environment.html][windows 10]].
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-a-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (eq system-type 'windows-nt))
(defconst *is-cygwin* (eq system-type 'cygwin))
(defconst *is-unix* (not *is-windows*))


;; ==> adjust here
;; See this [[http://ergoemacs.org/emacs/emacs_hyper_super_keys.html][ for more information.]]
;; set keys for Apple keyboard, for emacs in OS X 
;; Source http://xahlee.info/emacs/emacs/emacs_hyper_super_keys.html
(setq mac-command-modifier 'meta) ; make cmd key do Meta
(setq mac-option-modifier 'super) ; make option key do Super. 
(setq mac-control-modifier 'control) ; make Control key do Control
(setq mac-function-modifier 'hyper)  ; make Fn key do Hyper. Only works on Apple produced keyboards.  
(setq mac-right-command-modifier 'hyper)


;; Switch to previous buffer
(define-key global-map (kbd "s-<left>") 'previous-buffer)
;; Switch to next buffer
(define-key global-map (kbd "s-<right>") 'next-buffer)


;; Minibuffer history keybindings
;; The calling up of a previously issued command in the minibuffer with ~M-p~ saves times.
(autoload 'edit-server-maybe-dehtmlize-buffer "edit-server-htmlize" "edit-server-htmlize" t)
(autoload 'edit-server-maybe-htmlize-buffer "edit-server-htmlize" "edit-server-htmlize" t)
(add-hook 'edit-server-start-hook 'edit-server-maybe-dehtmlize-buffer)
(add-hook 'edit-server-done-hook  'edit-server-maybe-htmlize-buffer)
(define-key minibuffer-local-map (kbd "M-p") 'previous-complete-history-element)
(define-key minibuffer-local-map (kbd "M-n") 'next-complete-history-element)
(define-key minibuffer-local-map (kbd "<up>") 'previous-complete-history-element)
(define-key minibuffer-local-map (kbd "<down>") 'next-complete-history-element)


(defun switch-to-minibuffer ()
  "Switch to minibuffer window."
  (interactive)
  (if (active-minibuffer-window)
      (select-window (active-minibuffer-window))
    (error "Minibuffer is not active")))

(global-set-key "\C-cm" 'switch-to-minibuffer) ;; Bind to `C-c m' for minibuffer.

;; Bibtex configuration
(defconst blaine/bib-libraries (list "/Users/blaine/Documents/global.bib")) 

;; Combined with emacs-mac, this gives good PDF quality for [[https://www.aidanscannell.com/post/setting-up-an-emacs-playground-on-mac/][retina display]].
(setq pdf-view-use-scaling t)


;; PDF default page width behavior
(setq-default pdf-view-display-size 'fit-page)


;; Set delay in the matching parenthesis to zero.
(setq show-paren-delay 0)
(show-paren-mode t)

;; **** Window management
;; ***** winner-mode C-c <rigth> undo change C-c <left> redo change
(winner-mode 1)

(defun split-vertical-evenly ()
  (interactive)
  (command-execute 'split-window-vertically)
  (command-execute 'balance-windows))
(global-set-key (kbd "C-x 2") 'split-vertical-evenly)


(defun split-horizontal-evenly ()
  (interactive)
  (command-execute 'split-window-horizontally)
  (command-execute 'balance-windows))
(global-set-key (kbd "C-x 3") 'split-horizontal-evenly)

(message "Starting config of packages--takes 5-60 seconds, depending on the operating system.")

;; ############################## Package Configurations ################################

;;** A



;;;;*** Auto-completion from Gavin Freeborn
;;;; https://github.com/Gavinok
;;;;

;;(use-package vertico
;;  :init
;;  ;; Enable vertico using the vertico-flat-mode
;;  (require 'vertico-directory)
;;  (add-hook 'rfn-eshadow-update-overlay-hook #'vertico-directory-tidy)
;;
;;  (use-package orderless
;;    :commands (orderless)
;;    :custom (completion-styles '(orderless flex)))
;;  (load (concat user-emacs-directory
;;                "lisp/affe-config.el"))
;;  (use-package marginalia
;;    :custom
;;    (marginalia-annotators
;;     '(marginalia-annotators-heavy marginalia-annotators-light nil))
;;    :init
;;    (marginalia-mode))
;;  (vertico-mode t)
;;  :config
;;  ;; Do not allow the cursor in the minibuffer prompt
;;  (setq minibuffer-prompt-properties
;;        '(read-only t cursor-intangible t face minibuffer-prompt))
;;  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)
;;  ;; Enable recursive minibuffers
;;  (setq enable-recursive-minibuffers t))
;;
;;;;;; Extra Completion Functions
;;(use-package consult
;;  :after vertico
;;  :bind (("C-x b"       . consult-buffer)
;;         ("C-x C-k C-k" . consult-kmacro)
;;         ("M-y"         . consult-yank-pop)
;;         ("M-g g"       . consult-goto-line)
;;         ("M-g M-g"     . consult-goto-line)
;;         ("M-g f"       . consult-flymake)
;;         ("M-g i"       . consult-imenu)
;;         ("M-s l"       . consult-line)
;;         ("M-s L"       . consult-line-multi)
;;         ("M-s u"       . consult-focus-lines)
;;         ("M-s g"       . consult-ripgrep)
;;         ("M-s M-g"     . consult-ripgrep)
;;         ("C-x C-SPC"   . consult-global-mark)
;;         ("C-x M-:"     . consult-complex-command)
;;         ("C-c n"       . consult-org-agenda)
;;         ("C-c m"       . my/notegrep)
;;         :map help-map
;;         ("a" . consult-apropos)
;;         :map minibuffer-local-map
;;         ("M-r" . consult-history))
;;  :custom
;;  (completion-in-region-function #'consult-completion-in-region)
;;  :config
;;  (defun my/notegrep ()
;;    "Use interactive grepping to search my notes"
;;    (interactive)
;;    (consult-ripgrep org-directory))
;;  (recentf-mode t))
;;(use-package consult-dir
;;  :ensure t
;;  :bind (("C-x C-j" . consult-dir)
;;         ;; :map minibuffer-local-completion-map
;;         :map vertico-map
;;         ("C-x C-j" . consult-dir)))
;;
;;(use-package consult-recoll
;;  :bind (("M-s r" . counsel-recoll)
;;         ("C-c I" . recoll-index))
;;  :init
;;  (setq consult-recoll-inline-snippets t)
;;  :config
;;  (defun recoll-index (&optional arg) (interactive)
;;    (start-process-shell-command "recollindex"
;;                                 "*recoll-index-process*"
;;                                 "recollindex")))
;;
;;(use-package embark
;;  :ensure t
;;  :bind
;;  ;; pick some comfortable binding
;;  (("C-="                     . embark-act)
;;   ([remap describe-bindings] . embark-bindings)
;;   :map embark-file-map
;;   ("C-d"                     . dragon-drop)
;;   :map embark-defun-map
;;   ("M-t" . chatgpt-gen-tests-for-region)
;;   :map embark-general-map
;;   ("M-c" . chatgpt-prompt)
;;   :map embark-region-map
;;   ("?"   . chatgpt-explain-region)
;;   ("M-f" . chatgpt-fix-region)
;;   ("M-f" . chatgpt-fix-region))
;;  :custom
;;  (embark-indicators
;;   '(embark-highlight-indicator
;;     embark-isearch-highlight-indicator
;;     embark-minimal-indicator))
;;  :init
;;  ;; Optionally replace the key help with a completing-read interface
;;  (setq prefix-help-command #'embark-prefix-help-command)
;;  (setq embark-prompter 'embark-completing-read-prompter)
;;  :config
;;  (defun search-in-source-graph (text))
;;  (defun dragon-drop (file)
;;    (start-process-shell-command "dragon-drop" nil
;;                                 (concat "dragon-drop " file))))
;;;; Consult users will also want the embark-consult package.
;;(use-package embark-consult
;;  :ensure t
;;  :after (:all embark consult)
;;  :demand t
;;  ;; if you want to have consult previews as you move around an
;;  ;; auto-updating embark collect buffer
;;  :hook
;;  (embark-collect-mode . consult-preview-at-point-mode))
;;;; For uploading files
;;(use-package 0x0
;;  :ensure t
;;  :after embark
;;  :bind (
;;         :map embark-file-map
;;         ("U"    . 0x0-upload-file)
;;         :map embark-region-map
;;         ("U"    . 0x0-dwim))
;;  :commands (0x0-dwim 0x0-upload-file))
;;
;;;;;; Code Completion
;;(use-package corfu
;;  ;; Optional customizations
;;  :custom
;;  (corfu-cycle t)                 ; Allows cycling through candidates
;;  (corfu-auto t)                  ; Enable auto completion
;;  (corfu-auto-prefix 2)
;;  (corfu-auto-delay 0.0)
;;  (corfu-popupinfo-delay '(0.5 . 0.2))
;;  (corfu-preview-current 'insert) ; Do not preview current candidate
;;  (corfu-preselect-first nil)
;;  (corfu-on-exact-match nil)      ; Don't auto expand tempel snippets
;;
;;  ;; Optionally use TAB for cycling, default is `corfu-complete'.
;;  :bind (:map corfu-map
;;              ("M-SPC"      . corfu-insert-separator)
;;              ("TAB"        . corfu-next)
;;              ([tab]        . corfu-next)
;;              ("S-TAB"      . corfu-previous)
;;              ([backtab]    . corfu-previous)
;;              ("S-<return>" . corfu-insert)
;;              ("RET"        . nil))
;;
;;  :init
;;  (global-corfu-mode)
;;  (corfu-history-mode)
;;  (corfu-popupinfo-mode) ; Popup completion info
;;  :config
;;  (add-hook 'eshell-mode-hook
;;            (lambda () (setq-local corfu-quit-at-boundary t
;;                              corfu-quit-no-match t
;;                              corfu-auto nil)
;;              (corfu-mode))))
;;(use-package cape
;;  :defer 10
;;  :bind ("C-c f" . cape-file)
;;  :init
;;  ;; Add `completion-at-point-functions', used by `completion-at-point'.
;;  (defalias 'dabbrev-after-2 (cape-capf-prefix-length #'cape-dabbrev 2))
;;  (add-to-list 'completion-at-point-functions 'dabbrev-after-2 t)
;;  (cl-pushnew #'cape-file completion-at-point-functions)
;;  :config
;;  ;; Silence then pcomplete capf, no errors or messages!
;;  (advice-add 'pcomplete-completions-at-point :around #'cape-wrap-silent)
;;
;;  ;; Ensure that pcomplete does not write to the buffer
;;  ;; and behaves as a pure `completion-at-point-function'.
;;  (advice-add 'pcomplete-completions-at-point :around #'cape-wrap-purify))
;;(use-package yasnippet
;;  :ensure t
;;  :init
;;  (setq yas-nippet-dir "~/.emacs.d/snippets")
;;  (yas-global-mode))
;;(use-package yasnippet-snippets
;;  :ensure t :after yasnippet)
;;(use-package cape-yasnippet
;;  :ensure nil
;;  :quelpa (cape-yasnippet :fetcher github :repo "elken/cape-yasnippet")
;;  :after yasnippet
;;  :hook ((prog-mode . yas-setup-capf)
;;         (text-mode . yas-setup-capf)
;;         (lsp-mode  . yas-setup-capf)
;;         (sly-mode  . yas-setup-capf))
;;  :bind (("C-c y" . cape-yasnippet)
;;         ("M-+"   . yas-insert-snippet))
;;  :config
;;  (defun yas-setup-capf ()
;;    (setq-local completion-at-point-functions
;;                (cons 'cape-yasnippet
;;                      completion-at-point-functions)))
;;  (push 'cape-yasnippet completion-at-point-functions))



;; 
;; ;; Copyright (C) 2022
;; ;; SPDX-License-Identifier: MIT
;; 
;; ;; Author: System Crafters Community
;; 
;; ;;; Commentary:
;; 
;; ;; Setup completion packages.  Completion in this sense is more like
;; ;; narrowing, allowing the user to find matches based on minimal
;; ;; inputs and "complete" the commands, variables, etc from the
;; ;; narrowed list of possible choices.
;; 
;; ;;; Code:
;; 
;;; crafted-completion.el --- Crafted Completion Configuration -*- lexical-binding: t; -*-

(use-package cape)
(use-package consult)
(use-package corfu)
(use-package embark-consult)
(use-package orderless)
(use-package vertico)
(use-package marginalia)


(defun crafted-completion/minibuffer-backward-kill (arg)
  "Delete word or delete up to parent folder when completion is a file.

ARG is the thing being completed in the minibuffer."
  (interactive "p")
  (if minibuffer-completing-file-name
      ;; Borrowed from https://github.com/raxod502/selectrum/issues/498#issuecomment-803283608
      (if (string-match-p "/." (minibuffer-contents))
          (zap-up-to-char (- arg) ?/)
        (delete-minibuffer-contents))
    (backward-kill-word arg)))

;;; Vertico
;; (require 'vertico)

;; Straight and Package bundle the vertico package differently. When
;; using `package.el', the extensions are built into the package and
;; available on the load-path. When using `straight.el', the
;; extensions are not built into the package, so have to add that path
;; to the load-path manually to enable the following require.
;;(when (eq crafted-package-system 'straight)
;;  (add-to-list 'load-path
;;               (expand-file-name "straight/build/vertico/extensions"
;;                                 straight-base-dir)))
;;(require 'vertico-directory)

(with-eval-after-load 'evil
  (define-key vertico-map (kbd "C-j") 'vertico-next)
  (define-key vertico-map (kbd "C-k") 'vertico-previous)
  (define-key vertico-map (kbd "M-h") 'vertico-directory-up))

;; Cycle back to top/bottom result when the edge is reached
(customize-set-variable 'vertico-cycle t)

;; Start Vertico
(vertico-mode 1)

;;; Marginalia

;; Configure Marginalia
;; (require 'marginalia)
(customize-set-variable 'marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
(marginalia-mode 1)

;; Set some consult bindings
(global-set-key (kbd "C-s") 'consult-line)
(define-key minibuffer-local-map (kbd "C-r") 'consult-history)

(setq completion-in-region-function #'consult-completion-in-region)


;;; Orderless

;; Set up Orderless for better fuzzy matching
;;(require 'orderless)
(customize-set-variable 'completion-styles '(orderless basic))
(customize-set-variable 'completion-category-overrides '((file (styles . (partial-completion)))))

;; Improve speed and highlighting
(setq orderless-skip-highlighting (lambda () selectrum-is-active))

;; Added 14 Feb 2023
(setq vertico-prescient-mode t)

;;; Embark
;;(require 'embark)
;;(require 'embark-consult)

(use-package embark
  :bind
  (("C-." . embark-act)
   ("H-l" . embark-line)
   ("M-." . embark-dwim)
   ("C-h B" . embark-bindings))
  :init
  (setq prefix-help-command #'embark-prefix-help-command))

;;(global-set-key [remap describe-bindings] #'embark-bindings)
;;(global-set-key (kbd "C-.") 'embark-act)

(with-eval-after-load 'embark-consult
  (add-hook 'embark-collect-mode-hook #'consult-preview-at-point-mode))

;;; Corfu

;; Setup corfu for popup like completion
(customize-set-variable 'corfu-cycle t) ; Allows cycling through candidates
(customize-set-variable 'corfu-auto t)  ; Enable auto completion
(customize-set-variable 'corfu-auto-prefix 2) ; Complete with less prefix keys
(customize-set-variable 'corfu-auto-delay 0.0) ; No delay for completion
(customize-set-variable 'corfu-echo-documentation 0.25) ; Echo docs for current completion option

(global-corfu-mode 1)

;;; Cape

;; Setup Cape for better completion-at-point support and more
;; (require 'cape)

;; Add useful defaults completion sources from cape
(add-to-list 'completion-at-point-functions #'cape-file)
(add-to-list 'completion-at-point-functions #'cape-dabbrev)

;; Silence the pcomplete capf, no errors or messages!
;; Important for corfu
(advice-add 'pcomplete-completions-at-point :around #'cape-wrap-silent)

;; Ensure that pcomplete does not write to the buffer
;; and behaves as a pure `completion-at-point-function'.
(advice-add 'pcomplete-completions-at-point :around #'cape-wrap-purify)
(add-hook 'eshell-mode-hook
          (lambda () (setq-local corfu-quit-at-boundary t
                            corfu-quit-no-match t
                            corfu-auto nil)
            (corfu-mode)))

;; The above completion framework is missing prescient which lists options based on frequecy of use

(use-package prescient)
(use-package corfu-prescient)
;; (straight-use-package 'company-prescient)
(use-package ivy-prescient) ; I have ivy lurking about in this configuration.
;; (use-package 'selectrum-prescient) vertico has replaced slection
(use-package vertico-prescient)


;; Keybindings suggested here https://github.com/revrari/emacs_elements_chapter_2/blob/main/orderless-selectrum-prescient-etc.txt
(global-set-key (kbd "<f7>") 'consult-outline)
(global-set-key [C-tab] 'consult-buffer)
(global-set-key (kbd "C-x C-r") 'consult-recent-file)
(global-set-key (kbd "C-x C-l") 'consult-line)  

;; I am testing whether I can live with the above cool-kid completion system for now.
;; ;;*** auto-complete
;; ;; do default config for auto-complete
;; (use-package auto-complete)
;; (use-package auto-complete-config)
;; (ac-config-default)
;; (global-auto-complete-mode t)
;; (ac-flyspell-workaround)
;; 


;; ;;;### auto-complete-auctex.el --- auto-completion for auctex
;; 
;; ;; Copyright (C) 2012 Christopher Monsanto
;;      
;; ;; Author: Christopher Monsanto <chris@monsan.to>
;; ;; Version: 1.0
;; ;; Package-Requires: ((yasnippet "0.6.1") (auto-complete "1.4"))
;; 
;; ;; This program is free software; you can redistribute it and/or modify
;; ;; it under the terms of the GNU General Public License as published by
;; ;; the Free Software Foundation, either version 3 of the License, or
;; ;; (at your option) any later version.
;; 
;; ;; This program is distributed in the hope that it will be useful,
;; ;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; ;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; ;; GNU General Public License for more details.
;; 
;; ;; You should have received a copy of the GNU General Public License
;; ;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;; 
;; ;;; Commentary:
;; 
;; ;; You can install this by (require 'auto-complete-auctex).
;; ;; Feel free to contribute better documentation!
;; 
;; ;;;#### Code:
;; 
;; 
;; (eval-when-compile
;;   (require 'auto-complete)
;;   (require 'yasnippet))
;; 
;; (defvar ac-auctex-arg-lookup-table
;;   '((TeX-arg-define-macro . ("\\MacroName"))
;;     (TeX-arg-counter . ("Counter"))
;;     (TeX-arg-define-counter . ("\\CounterName"))
;;     (TeX-arg-file . ("Filename"))
;;     (TeX-arg-bibliography . ("Filename"))
;;     (TeX-arg-bibstyle . ("Style"))
;;     (TeX-arg-environment . ("Environment"))
;;     (TeX-arg-define-environment . ("EnvironmentName"))
;;     (TeX-arg-size . ("(w, h)"))
;;     (TeX-arg-ref . ("Name"))
;;     (TeX-arg-index . ("Index"))
;;     (TeX-arg-define-label . ("Label"))
;;     (LaTeX-arg-usepackage . (["opt1,..."] "Package"))
;;     (LaTeX-env-label . nil)
;;     (LaTeX-amsmath-env-aligned . (["htbp!"]))
;;     (LaTeX-amsmath-env-alignat . (["# Columns"]))
;;     (LaTeX-env-array . (["bct"] "lcrpmb|"))
;;     (LaTeX-env-item . nil)
;;     (LaTeX-env-document . nil)
;;     (LaTeX-env-figure . (["htbp!"]))
;;     (LaTeX-env-contents . ("Filename"))
;;     (LaTeX-env-minipage . (["htbp!"] "Width"))
;;     (LaTeX-env-list . ("Label" "\\itemsep,\\labelsep,..."))
;;     (LaTeX-env-picture . ("(w, h)" "(x, y)"))
;;     (LaTeX-env-tabular* . ("Width" ["htbp!"] "lcrpmb|><"))
;;     (LaTeX-env-bib . ("WidestLabel"))
;;     (TeX-arg-conditional . ([""]))
;;     (2 . ("" ""))
;;     (3 . ("" "" ""))
;;     (4 . ("" "" "" ""))
;;     (5 . ("" "" "" "" ""))
;;     (6 . ("" "" "" "" "" ""))
;;     (7 . ("" "" "" "" "" "" ""))
;;     (8 . ("" "" "" "" "" "" "" ""))
;;     (9 . ("" "" "" "" "" "" "" "" "")))
;;   "Anything not in this table defaults to '(\"\")")
;; 
;; (defun ac-auctex-expand-arg-info (arg-info)
;;   (loop for item in arg-info
;; 	append (cond
;; 		((or (stringp item) (and (vectorp item) (stringp (elt item 0))))
;; 		 (list item))
;; 		((vectorp item)
;; 		 (loop for item-2 in (or (assoc-default (or (car-safe (elt item 0)) (elt item 0))
;; 							ac-auctex-arg-lookup-table 'equal) '(""))
;; 		       collect [item-2]))
;; 		(t
;; 		 (or (assoc-default (or (car-safe item) item) ac-auctex-arg-lookup-table) '(""))))))
;; 
;; (defun ac-auctex-snippet-arg (n arg)
;;   (let* ((opt (vectorp arg))
;; 	 (item (if opt (elt arg 0) arg))
;; 	 (m (if (vectorp arg) (1+ n) n))
;; 	 (var (format "${%s}" item)))
;;     (list (1+ m)
;; 	  (if opt
;; 	      (concat (format "${[") var "]}")
;; 	    (concat "{" var "}")))))
;; 
;; ;;;#### Macros
;; ;;
;; 
;; (defun ac-auctex-expand-args (str env)
;;   (yas/expand-snippet (ac-auctex-macro-snippet (assoc-default str env))))
;; 
;; (defun ac-auctex-macro-snippet (arg-info)
;;   (let ((count 1))
;;     (apply 'concat (loop for item in (ac-auctex-expand-arg-info arg-info)
;; 			 collect (destructuring-bind (n val)
;; 				     (ac-auctex-snippet-arg count item)
;; 				   (setq count n)
;; 				   val)))))
;; 
;; (defun ac-auctex-macro-candidates ()
;;    (let ((comlist (if TeX-symbol-list
;; 		      (mapcar (lambda (item)
;; 			        (or (car-safe (car item)) (car item)))
;; 			    TeX-symbol-list))))
;;     (all-completions ac-prefix comlist)))
;; 
;; (defun ac-auctex-macro-action ()
;;   (yas/expand-snippet (ac-auctex-macro-snippet (assoc-default candidate TeX-symbol-list)))) 
;; 
;; (ac-define-source auctex-macros
;;   '((init . TeX-symbol-list)
;;     (candidates . ac-auctex-macro-candidates)
;;     (action . ac-auctex-macro-action)
;;     (requires . 0)
;;     (symbol . "m")
;;     (prefix . "\\\\\\([a-zA-Z]*\\)\\=")))
;; 
;; ;;;#### Symbols
;; 
;; (defun ac-auctex-symbol-candidates ()
;;   (all-completions ac-prefix (mapcar 'cadr LaTeX-math-default)))
;; 
;; (defun ac-auctex-symbol-action ()
;;   (re-search-backward candidate)
;;   (delete-region (1- (match-beginning 0)) (match-end 0))
;;   (if (texmathp)
;;       (progn
;; 	(insert "\\" candidate)
;; 	(yas/expand-snippet (ac-auctex-macro-snippet (assoc-default candidate TeX-symbol-list))))
;;     (insert "$\\" candidate "$")
;;     (backward-char)
;;     (yas/expand-snippet (ac-auctex-macro-snippet (assoc-default candidate TeX-symbol-list)))))
;; 
;; (defun ac-auctex-symbol-document (c)
;;   (let* ((cl (assoc c (mapcar 'cdr LaTeX-math-default)))
;;          (decode (if (nth 2 cl) (char-to-string (decode-char 'ucs (nth 2 cl))) ""))
;;          (st (nth 1 cl))
;;          (hs (if (listp st) (mapconcat 'identity st " ") st)))
;;     (and decode (concat hs " == " decode))))
;; 
;; (ac-define-source auctex-symbols
;;   '((init . LaTeX-math-mode)
;;     (candidates . ac-auctex-symbol-candidates)
;;     (document . ac-auctex-symbol-document)
;;     (action . ac-auctex-symbol-action)
;;     (requires . 0)
;;     (symbol . "s")
;;     (prefix . "\\\\\\([a-zA-Z]*\\)\\=")))
;; 
;; 
;; ;;;#### Environments
;; 
;; (defvar ac-auctex-environment-prefix "beg")
;; 
;; (defun ac-auctex-environment-candidates ()
;;   (let ((envlist (mapcar (lambda (item) (concat ac-auctex-environment-prefix (car item)))
;; 			 LaTeX-environment-list)))
;;     (all-completions ac-prefix envlist)))
;; 
;; (defun ac-auctex-environment-action ()
;;   (re-search-backward candidate)
;;   (delete-region (1- (match-beginning 0)) (match-end 0))
;;   (let ((candidate (substring candidate (length ac-auctex-environment-prefix))))
;;     (yas/expand-snippet (format "\\begin{%s}%s\n$0\n\\end{%s}"
;; 				candidate
;; 				(ac-auctex-macro-snippet (assoc-default candidate LaTeX-environment-list))
;; 				candidate)))) 
;; 
;; (ac-define-source auctex-environments
;;   '((init . LaTeX-environment-list)
;;     (candidates . ac-auctex-environment-candidates)
;;     (action .  ac-auctex-environment-action)
;;     (requires . 0)
;;     (symbol . "e")
;;     (prefix . "\\\\\\([a-zA-Z]*\\)\\=")))
;; 
;; 
;; ;;;#### Refs
;; 
;; (defun ac-auctex-label-candidates ()
;;   (all-completions ac-prefix (mapcar 'car LaTeX-label-list)))
;; 
;; (ac-define-source auctex-labels
;;   '((init . LaTeX-label-list)
;;     (candidates . ac-auctex-label-candidates)
;;     (requires . 0)
;;     (symbol . "r")
;;     (prefix . "\\\\ref{\\([^}]*\\)\\=")))
;; 
;; 
;; ;;;#### Bibs
;; 
;; (defun ac-auctex-bib-candidates ()
;;   (all-completions ac-prefix (mapcar 'car LaTeX-bibitem-list)))
;; 
;; (ac-define-source auctex-bibs
;;   `((init . LaTeX-bibitem-list)
;;     (candidates . ac-auctex-bib-candidates)
;;     (requires . 0)
;;     (symbol . "b")
;;     (prefix . ,(concat "\\\\cite"
;; 		       "\\(?:"
;; 		         "\\[[^]]*\\]"
;; 		       "\\)?"
;; 		       "{\\([^},]*\\)"
;; 		       "\\="))))
;; 
;; ;;;#### Setup
;; 
;; (defun ac-auctex-setup ()
;;   (setq ac-sources (append
;;                       '(ac-source-auctex-symbols
;;                         ac-source-auctex-macros
;; 			ac-source-auctex-environments
;; 			ac-source-auctex-labels
;; 			ac-source-auctex-bibs)
;;                       ac-sources)))
;; 
;; (add-to-list 'ac-modes 'latex-mode)
;; (add-hook 'LaTeX-mode-hook 'ac-auctex-setup)
;; 
;; (provide 'auto-complete-auctex)
;; 
;; ;;; auto-complete-auctex.el ends here
;; 
;; ;; indent with spaces instead of tabs for pep8 compatibility
;; (setq tab-width 4)
;; (setq-default indent-tabs-mode nil)
;; 
;; *** atomic-chrome, used to interact with GhostText extension for Google Chrome.
(use-package atomic-chrome)
;;(atomic-chrome-start-server)
(setq atomic-chrome-default-major-mode 'python-mode)
(setq atomic-chrome-extension-type-list '(ghost-text))
;;(atomic-chrome-start-httpd)
(setq atomic-chrome-server-ghost-text-port 4001)
(setq atomic-chrome-url-major-mode-alist
      '(("github\\.com" . gfm-mode)
        ("overleaf.com" . latex-mode)
        ("750words.com" . latex-mode)))
; Select the style of opening the editing buffer by atomic-chrome-buffer-open-style.
; full: Open in the selected window.
; split: Open in the new window by splitting the selected window (default).
; frame: Create a new frame and window in it. Must be using some windowing pacakge.
(setq atomic-chrome-buffer-open-style 'split)


;;*** AUCTeX config
(eval-after-load "tex"
  '(setcdr (assoc "LaTeX" TeX-command-list)
          '("%`%l%(mode) -shell-escape%' %t"
          TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")
    )
  )



;;;; Copyright (C) 2022
;;;; SPDX-License-Identifier: MIT
;;
;;;; Author: System Crafters Community
;;
;;;;; Commentary:
;;
;;;; Setup completion packages.  Completion in this sense is more like
;;;; narrowing, allowing the user to find matches based on minimal
;;;; inputs and "complete" the commands, variables, etc from the
;;;; narrowed list of possible choices.
;;
;;;;; Code:
;;
;;
;;(defun crafted-completion/minibuffer-backward-kill (arg)
;;  "Delete word or delete up to parent folder when completion is a file.
;;
;;ARG is the thing being completed in the minibuffer."
;;  (interactive "p")
;;  (if minibuffer-completing-file-name
;;      ;; Borrowed from https://github.com/raxod502/selectrum/issues/498#issuecomment-803283608
;;      (if (string-match-p "/." (minibuffer-contents))
;;          (zap-up-to-char (- arg) ?/)
;;        (delete-minibuffer-contents))
;;    (backward-kill-word arg)))
;;
;;;;; Vertico
;;;; (require 'vertico)
;;
;;;; Straight and Package bundle the vertico package differently. When
;;;; using `package.el', the extensions are built into the package and
;;;; available on the load-path. When using `straight.el', the
;;;; extensions are not built into the package, so have to add that path
;;;; to the load-path manually to enable the following require.
;;;;(when (eq crafted-package-system 'straight)
;;;;  (add-to-list 'load-path
;;;;               (expand-file-name "straight/build/vertico/extensions"
;;;;                                 straight-base-dir)))
;;;;(require 'vertico-directory)
;;
;;(with-eval-after-load 'evil
;;  (define-key vertico-map (kbd "C-j") 'vertico-next)
;;  (define-key vertico-map (kbd "C-k") 'vertico-previous)
;;  (define-key vertico-map (kbd "M-h") 'vertico-directory-up))
;;
;;;; Cycle back to top/bottom result when the edge is reached
;;(customize-set-variable 'vertico-cycle t)
;;
;;;; Start Vertico
;;(vertico-mode 1)
;;
;;;;; Marginalia
;;
;;;; Configure Marginalia
;;;; (require 'marginalia)
;;(customize-set-variable 'marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
;;(marginalia-mode 1)
;;
;;;; Set some consult bindings
;;(global-set-key (kbd "C-s") 'consult-line)
;;(define-key minibuffer-local-map (kbd "C-r") 'consult-history)
;;
;;(setq completion-in-region-function #'consult-completion-in-region)
;;
;;
;;;;; Orderless
;;
;;;; Set up Orderless for better fuzzy matching
;;;;(require 'orderless)
;;(customize-set-variable 'completion-styles '(orderless basic))
;;(customize-set-variable 'completion-category-overrides '((file (styles . (partial-completion)))))
;;
;;;; Improve speed and highlighting
;;(setq orderless-skip-highlighting (lambda () selectrum-is-active))
;;
;;;; Added 14 Feb 2023
;;(setq vertico-prescient-mode t)
;;
;;;;; Embark
;;;;(require 'embark)
;;;;(require 'embark-consult)
;;
;;(global-set-key [remap describe-bindings] #'embark-bindings)
;;(global-set-key (kbd "C-.") 'embark-act)
;;
;;;; Use Embark to show bindings in a key prefix with `C-h`
;;(setq prefix-help-command #'embark-prefix-help-command)
;;
;;(with-eval-after-load 'embark-consult
;;  (add-hook 'embark-collect-mode-hook #'consult-preview-at-point-mode))
;;
;;;;; Corfu
;;
;;;; Setup corfu for popup like completion
;;(customize-set-variable 'corfu-cycle t) ; Allows cycling through candidates
;;(customize-set-variable 'corfu-auto t)  ; Enable auto completion
;;(customize-set-variable 'corfu-auto-prefix 2) ; Complete with less prefix keys
;;(customize-set-variable 'corfu-auto-delay 0.0) ; No delay for completion
;;(customize-set-variable 'corfu-echo-documentation 0.25) ; Echo docs for current completion option
;;
;;(global-corfu-mode 1)
;;
;;;;; Cape
;;
;;;; Setup Cape for better completion-at-point support and more
;;;; (require 'cape)
;;
;;;; Add useful defaults completion sources from cape
;;(add-to-list 'completion-at-point-functions #'cape-file)
;;(add-to-list 'completion-at-point-functions #'cape-dabbrev)
;;
;;;; Silence the pcomplete capf, no errors or messages!
;;;; Important for corfu
;;(advice-add 'pcomplete-completions-at-point :around #'cape-wrap-silent)
;;
;;;; Ensure that pcomplete does not write to the buffer
;;;; and behaves as a pure `completion-at-point-function'.
;;(advice-add 'pcomplete-completions-at-point :around #'cape-wrap-purify)
;;(add-hook 'eshell-mode-hook
;;          (lambda () (setq-local corfu-quit-at-boundary t
;;                            corfu-quit-no-match t
;;                            corfu-auto nil)
;;            (corfu-mode)))
;;






;; avy superimposes letters in the buffer with coloured backgrounds. 

;; line commands
;; especially helpful across windows
(global-set-key (kbd "M-g f") 'avy-goto-line) ;; go to a line, but not by using line-numbers; useful for moving across windows
(global-set-key (kbd "C-c l") 'avy-copy-line) ;; useful for copying lines across windows
(global-set-key (kbd "C-c m") 'avy-move-line) ;; useful for moving lines across windows

;; word commands
(global-set-key (kbd "M-g w") 'avy-goto-word-1)

;; char commands
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-j") 'avy-goto-char-timer) ;; adds a timer feature, offering a slight delay BEFORE the coloured letters appear, allowing you to orientated yourself in buffer.
(setq avy-timeout 1.0) ;; sets the duration of the variable



;; ==> adjust here
;; *** awesome-tabs
;; I love awesome-tabs; some people do not.
;; cd ~/latex-tree-emacs30/manual-packages
;; git clone --depth=1 https://github.com/manateelazycat/awesome-tab.git 
(use-package awesome-tab
  :load-path "~/latex-tree-emacs30/manual-packages/awesome-tab"
  :config
  (awesome-tab-mode t))

(global-set-key (kbd "s-1") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-2") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-3") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-4") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-5") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-6") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-7") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-8") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-9") 'awesome-tab-select-visible-tab)
(global-set-key (kbd "s-0") 'awesome-tab-select-visible-tab)


;;** B


;;### bibtex-mode related
;; Fetch bibtex for the given DOI. Insert at point, which should be in your global.bib file.
;; Needs code to reformat the bibtex key.
;;
;; https://www.anghyflawn.net/blog/2014/emacs-give-a-doi-get-a-bibtex-entry/

(defun get-bibtex-from-doi (doi)
 "Get a BibTeX entry from the DOI"
 (interactive "MDOI: ")
 (let ((url-mime-accept-string "text/bibliography;style=bibtex"))
   (with-current-buffer 
     (url-retrieve-synchronously 
       (format "http://dx.doi.org/%s" 
       	(replace-regexp-in-string "http://dx.doi.org/" "" doi)))
     (switch-to-buffer (current-buffer))
     (goto-char (point-max))
     (setq bibtex-entry 
     	  (buffer-substring 
          	(string-match "@" (buffer-string))
              (point)))
     (kill-buffer (current-buffer))))
 (insert (decode-coding-string bibtex-entry 'utf-8))
 (define-key bibtex-mode-map (kbd "C-c C-b") 'get-bibtex-from-doi)
 (bibtex-fill-entry))
;; I want run the above function to define it upon entry into a Bibtex file. 
(add-hook
   'bibtex-mode-hook
   (lambda ()
       (get-bibtex-from-doi nil)))

;; Hook to add imenu to menubar in bibtex mode
;; http://www.jonathanleroux.org/bibtex-mode.html
(add-hook
  'bibtex-mode-hook
  (lambda ()
    (imenu-add-to-menubar "Imenu")))

;; Fetch bibtex information from DOI.
;; Source https://chainsawriot.com/postmannheim/2022/12/13/aoe13.html
;; Copy the DOI from Firefox (or any source)
;; 1. Go back to emacs (By C . e)
;; 2. Run the custom command: M-x add-doi and paste yank the DOI (C-y)
;; 3. Auto: Fetch the BIBTEX
;; 4. from Crossref
;; 5. Auto: Add it into “~/dev/dotfiles/bib.bib”
;; 6. Save it
(defun add-doi ()
  (interactive)
  (progn
    (setq doi-to-query (read-string "DOI "))
    (find-file "~/Documents/global.bib")
    (end-of-buffer)
    (doi-insert-bibtex doi-to-query)
    )
  )

;; *** biblio
(use-package biblio
  :config
  (setq-default
   biblio-bibtex-use-autokey t
   bibtex-autokey-name-year-separator ""
   bibtex-autokey-year-title-separator ""
   bibtex-autokey-year-length 4
   bibtex-autokey-titlewords 7
   bibtex-autokey-titleword-length -1 ;; -1 means exactly one
   bibtex-autokey-titlewords-stretch 0
   bibtex-autokey-titleword-separator ""
   bibtex-autokey-titleword-case-convert 'upcase)
  )



;;*** bookmarks+
(use-package quelpa)
(use-package quelpa-use-package)


;; load bookmark+-mac.el and then bytecompile the rest 
;; (use-package bookmark+
;;                  :quelpa (bookmark+ :fetcher wiki
;;                                     :files
;;                                     ("bookmark+.el"
;;                                      "bookmark+-mac.el"
;;                                      "bookmark+-bmu.el"
;;                                      "bookmark+-1.el"
;;                                      "bookmark+-key.el"
;;                                      "bookmark+-lit.el"
;;                                      "bookmark+-doc.el"
;;                                      "bookmark+-chg.el"))
;;                  :defer 2)
;;

;;*** Bookmarks+
;; Drew Adams package that runs on top of the built-in bookmark package. 
;; Inside your emacs directory, create manual-packages/bookmark-plus.
;; Uncomment this code, paste into the scratch buffer, run once to install the package, and comment the code again
;;
;;(let ((bookmarkplus-dir "~/latex-tree-emacs30/manual-packages/bookmark-plus/")
;;      (emacswiki-base "https://www.emacswiki.org/emacs/download/")
;;      (bookmark-files '("bookmark+.el" "bookmark+-mac.el" "bookmark+-bmu.el" "bookmark+-key.el" "bookmark+-lit.el" "bookmark+-1.el")))
;;  (require 'url)
;;  (add-to-list 'load-path bookmarkplus-dir)
;;  (make-directory bookmarkplus-dir t)
;;  (mapcar (lambda (arg)
;;            (let ((local-file (concat bookmarkplus-dir arg)))
;;              (unless (file-exists-p local-file)
;;                (url-copy-file (concat emacswiki-base arg) local-file t))))
;;            bookmark-files)
;;  (byte-recompile-directory bookmarkplus-dir 0))

;; ==> adjust here
(use-package bookmark+
    :load-path "manual-packages/bookmark-plus/")



;;** C
;;*** Cider

(setq org-babel-clojure-backend 'cider)
(use-package cider)
(setq org-edit-src-content-indentation 0
     org-src-tab-acts-natively t
     org-src-fontify-natively t
     org-confirm-babel-evaluate nil)
(setq nrepl-hide-special-buffers t
     cider-repl-pop-to-buffer-on-connect nil
     cider-popup-stacktraces nil
     cider-repl-popup-stacktraces t)

;; Useful keybindings when using Clojure from Org
;; (org-defkey org-mode-map "\C-x\C-e" 'cider-eval-last-sexp)
;; (org-defkey org-mode-map "\C-c\C-d" 'cider-doc)


;; git clone --single-branch --branch correlations-heatmap https://github.com/BlaineMooersLab/clojure-sandbox.git
;; (inspired by: https://github.com/clojure-emacs/cider/issues/3094)
;;(require 'cider-mode)

(defun cider-tap (&rest r) ; inspired by https://github.com/clojure-emacs/cider/issues/3094
  (cons (concat "(let [__value "
                (caar r)
                "] (tap> {:clay-tap? true :form (quote " (caar r) ") :value __value}) __value)")
        (cdar r)))

(advice-add 'cider-nrepl-request:eval
:filter-args #'cider-tap)


;; Clay related functions from Daniel Slutsky
;; https://scicloj.github.io/clay/#Setup

(defun scittle-show ()
  (interactive)
  (save-buffer)
  (let
      ((filename
        (buffer-file-name)))
    (when filename
      (cider-interactive-eval
       (concat "(scicloj.clay.v2.api/show-doc! \"" filename "\" {})")))))
(define-key clojure-mode-map "\C-c\C-s" 'scittle-show)

(defun scittle-show-and-write ()
  (interactive)
  (save-buffer)
  (let
      ((filename
        (buffer-file-name)))
    (when filename
      (cider-interactive-eval
       (concat "(scicloj.clay.v2.api/show-doc-and-write-html! \"" filename "\" {:toc? true})")))))
(define-key clojure-mode-map "\C-c\C-w" 'scittle-show-and-write)


;; Clerk is another "notebook"--really a brower interface
;;

(defun clerk-show ()
  (interactive)
  (when-let
      ((filename
        (buffer-file-name)))
    (save-buffer)
    (cider-interactive-eval
     (concat "(nextjournal.clerk/show! \"" filename "\")"))))

(define-key clojure-mode-map (kbd "<M-return>") 'clerk-show)


;;*** Clojure
(use-package lsp-mode
  :hook ((clojure-mode . lsp)
         (clojurec-mode . lsp)
         (clojurescript-mode . lsp))
  :config
  ;; add paths to your local installation of project mgmt tools, like lein
  (setenv "PATH" (concat
                   "/usr/local/bin" path-separator
                   (getenv "PATH")))
  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode))
     (add-to-list 'lsp-language-id-configuration `(,m . "clojure")))
  (setq lsp-clojure-server-command '("/usr/local/Cellar/clojure-lsp-native"))) ; Optional: In case `clojure-lsp` is not in your $PATH


;; (use-package openai
;;     :load-path "manual-packages/openai/")
;; 
;; 
;; ;;***codegpt
;; ;; https://github.com/emacs-openai/codegpt
;; ;;Commad 	Description
;; ;;codegpt 	The master command
;; ;;codegpt-custom 	Write your own instruction
;; ;;codegpt-doc 	Automatically write documentation for your code
;; ;;codegpt-fix 	Find problems with it
;; ;;codegpt-explain 	Explain the selected code
;; ;;codegpt-improve 	Improve, refactor or optimize it
;; (use-package codegpt
;;   :load-path "manual-packages/codegpt/"
;;   :after openai)
;; 
;; ;; https://github.com/junjizhi/aide.el
;; (use-package aide
;;     :load-path "manual-packages/aide/")
;; (setq aide-max-tokens 200)

;; if you change the text, you should also change the cursor_offset
;; warning: this is measured by UTF-8 encoded bytes


;; we recommend using use-package to organize your init.el
;;(use-package codeium
;;    :load-path "manual-packages/codeium/"
;;    :init
;;    ;; use globally
;;    (add-to-list 'completion-at-point-functions #'codeium-completion-at-point)
;;    :defer t
;;    :config
;;    (setq use-dialog-box nil) ;; do not use popup boxes
;;    (setq codeium-mode-line-enable
;;        (lambda (api) (not (memq api '(CancelRequest Heartbeat AcceptCompletion)))))
;;    (add-to-list 'mode-line-format '(:eval (car-safe codeium-mode-line)) t)
;;    (setq codeium-api-enabled
;;        (lambda (api)
;;            (memq api '(GetCompletions Heartbeat CancelRequest GetAuthToken RegisterUser auth-redirect AcceptCompletion))))
;;    (defun my-codeium/document/text ()
;;        (buffer-substring-no-properties (max (- (point) 3000) (point-min)) (min (+ (point) 1000) (point-max))))
;;    (defun my-codeium/document/cursor_offset ()
;;        (codeium-utf8-byte-length
;;            (buffer-substring-no-properties (max (- (point) 3000) (point-min)) (point))))
;;    (setq codeium/document/text 'my-codeium/document/text)
;;    (setq codeium/document/cursor_offset 'my-codeium/document/cursor_offset))
;;

;;*** command-log-mode
(use-package command-log-mode
  :commands command-log-mode)





;;** D
;;*** Dashboard related
;; Getting pretty icons for use with dashboard
;;(use-package all-the-icons)
;;(use-package dashboard
;;  :init
;;  (dashboard-setup-startup-hook)
;;  :custom
;;  (setq dashboard-banner-logo-title "Just begin and the mind grows heated; continue and the task will be completed. -- Geothe")
;;  (setq dashboard--ascii-banner-centered t)
;;  (setq dashboard-startup-banner "/Users/blaine/images/loxo.png")
;;  (setq dashboard-image-banner-max-width 120)
;;  (setq dashboard-image-banner-max-height 150)
;;  (setq dashboard-center-content t)
;;  (dashboard-set-navigator t)
;;  (use-package page-break-lines)
;;  (setq dashboard-set-heading-icons t)
;;  (setq dashboard-set-file-icons t)
;;  (setq dashboard-items '((recents  . 10)
;;                          (bookmarks . 10)
;;                          (projects . 10)
;;                          (hackernews . 10))))
;;(use-package dashboard-hackernews)
;;(dashboard-refresh-buffer)

(use-package dashboard
  :init
  (dashboard-setup-startup-hook)
  :custom
  (dashboard-banner-logo-title "Just begin and the mind grows heated; continue and the task will be completed! -- Geothe")
  (dashboard-startup-banner "/Users/blaine/images/loxoSmall.png")
  (setq dashboard-image-banner-max-width 37)
  (setq dashboard-image-banner-max-height 30)
  (dashboard-set-navigator t)
  (dashboard-center-content t)
  (dashboard-set-heading-icons t)
  (dashboard-set-file-icons t)
  (dashboard-items '((projects . 11)
                     (recents . 11)
                     (bookmarks . 11)
                     (hackernews . 7))))
(use-package dashboard-hackernews)
(dashboard-refresh-buffer)


;;*** Dired related
(use-package dired-subtree
  :after dired
  :config
  (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
  (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))


;;*** Dired+ and related packages related
;; (add-to-list 'load-path "~/latex-emacs2906/manual-packages/dired-plus")
;; (require 'dired+)
(use-package dired+
  :load-path "manual-packages/dired-plus/"
  :config
  (setq diredp-wrap-around-flag nil))
;;(setq diredp-copressed-file-suffix ((t (:foreground "orange"))))

;; (add-to-list 'load-path "~/latex-emacs2906/manual-packages/icicles")
;; (require 'icicles)
(use-package icicles
    :load-path "manual-packages/icicles/"
    ;; do not start on start-up; bloggs startup too much
    :config
    (icy-mode 0))


;;(add-to-list 'load-path "~/latex-emacs2906/manual-packages/highlight")
;;(require 'highlight)


;;*** dot-mode
;; This minor mode enables the use of C-. to repeat the last command.
;; I want to mimic this great Vi command enabled globally.
(use-package dot-mode
    :config
    (global-dot-mode t))


;;*** Drag stuff
;; ;;Usage
;; To start drag-stuff
;;     (drag-stuff-mode t) or M-x drag-stuff-mode
;; 
;; Or if you want it to be done automatically
;;     (drag-stuff-global-mode t)
;; 
;; ### Drag line
;; To drag a line up and down. Put the cursor on that line and press
;; **<M-up>** and **<M-down>**.
;; 
;; ### Drag lines
;; To drag several lines up and down. Select the lines you want to drag
;; and press **<M-up>** and **<M-down>**.
;; 
;; ### Drag region
;; A region can be dragged to the left and right. Select the region you
;; want to drag and press **<M-left>** and **<M-right>**.
;; 
;; ### Drag word
;; To drag a word. Just place the cursor on the word and press
;; **<M-left>** and **<M-right>**.
(use-package drag-stuff)



;;**E


;; *** ef-theme

(use-package ef-themes)
;; If you like two specific themes and want to switch between them, you
;; can specify them in `ef-themes-to-toggle' and then invoke the command
;; `ef-themes-toggle'.  All the themes are included in the variable
;; `ef-themes-collection'.
(setq ef-themes-to-toggle '(ef-summer ef-winter))

;; Make customisations that affect Emacs faces BEFORE loading a theme
;; (any change needs a theme re-load to take effect).

(setq ef-themes-headings ; read the manual's entry or the doc string
      '((0 . (variable-pitch light 1.9))
        (1 . (variable-pitch light 1.8))
        (2 . (variable-pitch regular 1.7))
        (3 . (variable-pitch regular 1.6))
        (4 . (variable-pitch regular 1.5))
        (5 . (variable-pitch 1.4)) ; absence of weight means `bold'
        (6 . (variable-pitch 1.3))
        (7 . (variable-pitch 1.2))
        (t . (variable-pitch 1.1))))

;; They are nil by default...
(setq ef-themes-mixed-fonts t
      ef-themes-variable-pitch-ui t)

;; Disable all other themes to avoid awkward blending:
(mapc #'disable-theme custom-enabled-themes)

;; Load the theme of choice:
(load-theme 'ef-cyprus :no-confirm)

;; The themes we provide:
;;
;; Light: `ef-day', `ef-light', `ef-spring', `ef-summer'.
;; Dark:  `ef-autumn', `ef-dark', `ef-night', `ef-winter'.
;;
;; Also those which are optimized for deuteranopia (red-green color
;; deficiency): `ef-deuteranopia-dark', `ef-deuteranopia-light'.

;; We also provide these commands, but do not assign them to any key:
;;
;; - `ef-themes-toggle'
;; - `ef-themes-select'
;; - `ef-themes-load-random'
;; - `ef-themes-preview-colors'
;; - `ef-themes-preview-colors-current'#+END_SRC


;; *** Electric-pair mode. Add matching pairs of quotes and parentheses.
(electric-pair-mode)



;; *** electric-spacing
;; An emacs minor-mode to automatically add spacing around [[https://github.com/xwl/electric-spacing][operators] in math expressions.].
;; Backspace over the whitespaces to remove them when none are permitted.
;; git clone https://github.com/walmes/electric-spacing.git into ~/latex-tree-emacs30/manual-packages
;; byte-compile with (byte-compile-file "~/latex-tree-emacs30/manual-packages/electric-spacing/electric-spacing.el")
;; byte-compile with (byte-compile-file "~/latex-tree-emacs30/manual-packages/electric-spacing/electric-spacing-r.el")
;; ==> adjust here
(add-to-list 'load-path "~/latex-tree-emacs30/manual-packages/electric-spacing")
(use-package electric-spacing)
(use-package electric-spacing-r)
(add-hook 'ess-mode-hook #'electric-spacing-mode)
;; restrict to limited number of modes to keep it out of the minibuffer
(defvar my-electic-pair-modes '(python-mode julia-mode org-mode latex-mode))
(defun my-inhibit-electric-pair-mode (char)
  (not (member major-mode my-electic-pair-modes)))
(setq electric-pair-inhibit-predicate #'my-inhibit-electric-pair-mode)



;; ==> adjust here
(use-package elfeed)
(setq elfeed-curl-program-name "/opt/local/bin/curl")
(setq elfeed-search-title-max-width 130)
(use-package elfeed-org)
(setq rmh-elfeed-org-files (list "~/latex-tree-emacs30/elfeed.org"))
(elfeed-org)
;;
;;(setq elfeed-feeds '("https://planet.emacslife.com/atom.xml" "http://feeds.nature.com/nchem/rss/current"
;;    "http://feeds.nature.com/nature/rss/current"
;;    "https://onlinelibrary.wiley.com/feed/1469896x/most-recent"
;;    "https://www.science.org/action/showFeed?type=axatoc&feed=rss&jc=science"
;;    "https://journals.iucr.org/j/rss10.xml"
;;    "https://journals.iucr.org/s/rss10.xml"
;;    "https://journals.iucr.org/m/rss10.xml"
;;    "https://journals.iucr.org/a/rss10.xml"
;;    "https://journals.iucr.org/d/rss10.xml"
;;    "http://feeds.feedburner.com/acs/chreay"
;;    "https://rss.sciencedirect.com/publication/science/10933263"
;;    "http://feeds.feedburner.com/acs/jcisd8"
;;    "https://www.pnas.org/about/rss"
;;    "http://feeds.feedburner.com/acs/cgdefu"
;;    "https://pubs.acs.org/page/follow.html?widget=follow-pane-rss"
;;    "https://rss.sciencedirect.com/publication/science/00222836"
;;    "https://academic.oup.com/rss/site_5127/3091.xml"
;;    "http://www.cell.com/cell/current.rss"
;;    "http://www.cell.com/cell/inpress.rss"
;;    "https://www.jstatsoft.org/gateway/plugin/WebFeedGatewayPlugin/atom"
;;    "https://rss.sciencedirect.com/publication/science/09692126"
;;    "https://onlinelibrary.wiley.com/feed/10970282/most-recent"
;;    "http://connect.biorxiv.org/biorxiv_xml.php?subject=biophysics+biochemistry+cancer"
;;    )

;; The following config is from Chris Cundy (https://cundy.me/post/elfeed/)
(defun concatenate-authors (authors-list)
  "Given AUTHORS-LIST, list of plists; return string of all authors
concatenated."
  (mapconcat
   (lambda (author) (plist-get author :name))
   authors-list ", "))

(defun my-search-print-fn (entry)
  "Print ENTRY to the buffer."
  (let* ((date (elfeed-search-format-date (elfeed-entry-date entry)))
	 (title (or (elfeed-meta entry :title)
		    (elfeed-entry-title entry) ""))
	 (title-faces (elfeed-search--faces (elfeed-entry-tags entry)))
	 (feed (elfeed-entry-feed entry))
	 (feed-title
	  (when feed
	    (or (elfeed-meta feed :title) (elfeed-feed-title feed))))
	 (entry-authors (concatenate-authors
			 (elfeed-meta entry :authors)))
	 (tags (mapcar #'symbol-name (elfeed-entry-tags entry)))
	 (tags-str (mapconcat
		    (lambda (s) (propertize s 'face
					    'elfeed-search-tag-face))
		    tags ","))
	 (title-width (- (window-width) 10
			 elfeed-search-trailing-width))
	 (title-column (elfeed-format-column
			title (elfeed-clamp
			       elfeed-search-title-min-width
			       title-width
			       elfeed-search-title-max-width)
			:left))
	 (authors-width 135)
	 (authors-column (elfeed-format-column
			entry-authors (elfeed-clamp
			       elfeed-search-title-min-width
			       authors-width
			       131)
			:left)))

    (insert (propertize date 'face 'elfeed-search-date-face) " ")

    (insert (propertize title-column
			'face title-faces 'kbd-help title) " ")

    (insert (propertize authors-column
			'face 'elfeed-search-date-face
			'kbd-help entry-authors) " ")

    ;; (when feed-title
    ;;   (insert (propertize entry-authors
    ;; 'face 'elfeed-search-feed-face) " "))

    (when entry-authors
      (insert (propertize feed-title
			  'face 'elfeed-search-feed-face) " "))

    ;; (when tags
    ;;   (insert "(" tags-str ")"))

    )
  )
(setq elfeed-search-print-entry-function #'my-search-print-fn)

(global-set-key (kbd "C-x w") 'elfeed)

(use-package  elfeed-score)
(elfeed-score-enable)
(define-key elfeed-search-mode-map "=" elfeed-score-map)

(run-at-time nil (* 8 60 60) #'elfeed-update)

;;*** Emojis
(use-package emojify
  :init
  (add-hook 'after-init-hook #'global-emojify-mode))



;;*** eros
;; Eros: Evaluation Result OverlayS for Emacs Lisp.
;; Eros is on MELPA.
;; Eros is by Tianxiang Xiong.
;; He has developed two other Emacs Lisp Packages.
;; https://github.com/xiongtx/eros
;; Eros provides Cider like behavoir for elisp with the output resturned in-line.
;; I learned about eros from yantar92 during the 2023-01-01 meeting of Mastering Emacs bookclub.

(use-package eros
      :init
      (eros-mode 1))


;; Easier commenting 
;; Inspired by https://www.youtube.com/watch?v=vTdbb7tsvQc
;; source https://github.com/redguardtoo/evil-nerd-commenter
;; Enter M-; anywhere in line to comment it out from the start of the line
;; Enter C-u 99 to M-; to comment out the 99 following lines.
(use-package evil-nerd-commenter)
(evilnc-default-hotkeys)()
(defun matlab-mode-hook-config ()
  (local-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines))
(add-hook 'matlab-mode-hook 'matlab-mode-hook-config)


;;*** ess
;; 25 Feb 2023
(use-package ess
  :custom ((ess-plain-first-buffername nil)
       (ess-ask-about-transfile nil)))



;;** F


;; *** FlySpell (spell checking)
(dolist (flyspellmodes '(text-mode-hook
					   org-mode-hook
					   latex-mode-hook))
(add-hook flyspellmodes 'turn-on-flyspell))

;; comments and strings in code
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; sets american english as defult 
(setq ispell-dictionary "american")

;; let us cycle american english (best written english) and norwegian 
(defun change-dictionary ()
(interactive)
(ispell-change-dictionary (if (string-equal ispell-current-dictionary "american")
							  "norsk"
							"american")))

;; helm functionality for flyspell. To make it more user friendly
;; (use-package helm-flyspell
;; :after flyspell
;; :init
;; ;; Disable standard keys for flyspell correct, and make my own for helm.
;; (define-key flyspell-mode-map (kbd "C-.") nil)
;; (define-key flyspell-mode-map (kbd "C-,") #'helm-flyspell-correct))


;;*** Focus
;; Highlights the current section or function.
(use-package focus)



;;** G


;;*** google-this
;; use C-x g n on a region for search submission without prompt
(use-package google-this)
(global-set-key (kbd "C-x g") 'google-this-mode-submap)


;;*** greader
;; Reads back the text that you have written in Emacs.
;;Install espeak via macports or brew.
;; 
(use-package greader)



;;** H


(use-package helm
    :config
    (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
    (global-set-key (kbd "C-x m") 'helm-M-x)
    (global-set-key (kbd "C-x b") 'helm-buffers-list)
    (global-set-key (kbd "C-x j j") 'helm-bookmarks)
    (global-set-key (kbd "C-x c g") 'helm-google-suggest)
    (global-set-key (kbd "M-y") 'helm-show-kill-ring)
    (global-set-key (kbd "C-x C-f") 'helm-find-files))

;;    :config 
;;     (helm-autoresize-mode 1)
;;     (helm-mode 0)
;;     (setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
;;       helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;;       helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;       helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;       helm-ff-file-name-history-use-recentf t
;;       helm-echo-input-in-header-line t)
;;       (setq helm-autoresize-max-height 0)
;;       (setq helm-autoresize-min-height 20)
;;       (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;;       (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
;;       (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
;;       (global-set-key (kbd "C-c h") 'helm-command-prefix)
;;       (global-unset-key (kbd "C-x c"))
;;       (global-set-key (kbd "M-x") #'helm-M-x)
;;       (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;;       (global-set-key (kbd "C-x C-f") #'helm-find-files)
;;     (helm-autoresize-mode 1)
;;     (helm-mode 0)


;; *** helpful
;; Note that the built-in `describe-function' includes both functions
;; and macros. `helpful-function' is functions only, so we provide
;; `helpful-callable' as a drop-in replacement.
(global-set-key (kbd "C-h f") #'helpful-callable)

(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)


;; Lookup the current symbol at point. C-c C-d is a common keybinding
;; for this in lisp modes.
(global-set-key (kbd "C-c C-d") #'helpful-at-point)

;; Look up *F*unctions (excludes macros).
;;
;; By default, C-h F is bound to `Info-goto-emacs-command-node'. Helpful
;; already links to the manual, if a function is referenced there.
(global-set-key (kbd "C-h F") #'helpful-function)

;; Look up *C*ommands.
;;
;; By default, C-h C is bound to describe `describe-coding-system'. I
;; don't find this very useful, but it's frequently useful to only
;; look at interactive functions.
(global-set-key (kbd "C-h C") #'helpful-command)


;;  Emacs minor mode that highlights defined Emacs Lisp symbols in source code.
;;  Currently it recognizes Lisp function, built-in function, macro, face and variable names.
(use-package highlight-defined
  :ensure t)
(add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode)



;;** I


;;*** ido-mode
;; Idomode is a built-in completion framework for moving to a destination that you are certain about.
;; Use other completion frameworks, like helm, for when you are uncertain about where you want to go.
;; ido-mode useful for finding files and switching buffers and directories.
;; ido-mode is often used with C-x C-f, C-x d, and C-x b.
;;
;; ido-mode needs flex-mathcing enabled to use fuzzy matching.
;; This feature greatly eases file finding, buffer switching, and directory switching.
;; 
;; ido-mode presents the candidates in a horizontal list. 
;; Type the name of the option that you want to narrow the list.
;; You can cycle forward through the options by entering C-s repeatedly until the point lands on the desired candidate.
;; The right arrow has the same effect but reaching for it will break your tempo.
;; You can cycle in reverse by entering C-r repeatedly.
;; The left arrow has the same effect but reaching for it will break your tempo.
;;
;; Backspace works in a context dependent manner in ido-mode.
;; It deletes one letter at a time when making file selections from a list of candidates.
;; A single backspace removes the entire directory names when you are editing a file path.
;;
;; ido-mode is smart about file paths.
;; It recognizes ~/ for the home directory and // for the root directory.
;; If you know the fullpath, ignore what is in the minibuffer and start typing the fullpath.
;;
;; When you are the using C-x C-f to find a file, you can select the folder containing the file and enter C-d to open a Dired buffer for that folder. 
;; Likewise, after issuing C-x d, select the the folder containing the file and enter C-d to open a Dired buffer for that folder. 

(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t) ; partial file and buffer names work. 


;; The article (https://www.masteringemacs.org/article/introduction-to-ido-mode) by Mickey Petersen descirbe additional configurations for ido-mode.
;; 
;; Find file at point (ffap) can be enabled with the following setting.
;; Mickey recommends also disabling URL ffap with the second setting below.

(setq ido-use-filename-at-point 'guess)
(setq ido-use-url-at-point nil)


;; Turn off the prompting for permission to create a new buffer.
(setq ido-create-new-buffer 'always)

;; You can control the order in files are displayed in the minibuffer by their extension if you tend to be more likely to open files of a certain type.
;;
(setq ido-file-extensions-order '(".tex" ".org" ".md" ".pdf" ".txt" ".el" ".py" ".R" ".clj" ".html"))

;; You can toggle ido-mode on and off temporarily by entering C-b when making a buffer selection and C-f when making a file a selection.
;; This feature is useful when the autocompletion cannot work when you are trying to create a new folder or new file.
;;
;; C-c toggles whether you should ignore case when searing buffer and file names.
;; C-p toggles prefix matching; that is, when on, ido will only match the start of a filename rather than the any letters in it.
;; C-t toggles the matching of any Emacs regular expression; this could be very powerful!
;;
;; C-<space> or C-@ restricts the selection list to your current input.
;; When started with C-x C-f, M-d will extend the search for the files in the subfolders of the current folder.
;; When started with C-x C-f, M-m will create a new subfolder and C-k will delete the selected file.
;; The last keybinding looks dangerous to me.
;; When started with C-x b, C-k kills the currently focused buffer.
;; 
;; When using C-x C-f, ido caches recently visited directories; these are known as work directories.
;; You can cycle through the previous or next work directories by entering M-p and M-n.
;; You can enter C-k to remove the current directory from the list of work directories.
;; You can search the list of work directories by entering M-s.



;;*** ielm
;; ;; Enables `auto-complete' support in \\[ielm]
;; (defalias 'erepl 'ielm)
;; (defun ielm-auto-complete ()
;;   "Enables `auto-complete' support in \\[ielm]."
;;   (setq ac-sources '(ac-source-functions
;;                      ac-source-variables
;;                      ac-source-features
;;                      ac-source-symbols
;;                      ac-source-words-in-same-mode-buffers))
;;   (add-to-list 'ac-modes 'inferior-emacs-lisp-mode)
;;   (auto-complete-mode 1))
;; (add-hook 'ielm-mode-hook 'ielm-auto-complete)


;;*** imenu
(global-set-key (kbd "M-i") 'imenu)


(ivy-mode 0)



;;** L


;;### LanguageTool

;; I downloaded Language Tool and installed it in ~/.languagetool.
;; source: https://github.com/PillFall/languagetool.el


(use-package languagetool
  :defer t
  :commands (languagetool-check
             languagetool-clear-suggestions
             languagetool-correct-at-point
             languagetool-correct-buffer
             languagetool-set-language
             languagetool-server-mode
             languagetool-server-start
             languagetool-server-stop)
  :config
  (setq languagetool-java-arguments '("-Dfile.encoding=UTF-8")
        languagetool-console-command "~/.languagetool/languagetool-commandline.jar"
        languagetool-server-command "~/.languagetool/languagetool-server.jar"))

(setq languagetool-java-arguments '("-Dfile.encoding=UTF-8"))

(setq languagetool-console-command "~/.languagetool/languagetool-commandline.jar"
      languagetool-server-command "~/.languagetool/languagetool-server.jar")

;; 25 Feb 2023
(global-set-key "\C-x4s" 'languagetool-check) ;; s for suggest
(global-set-key "\C-x4o" 'languagetool-clear-suggestions)
(global-set-key "\C-x4x" 'languagetool-correct-at-point)



;;### LaTeX helpher functions
;;#### M-x description
;; Converts a selected list into a description list.
;; The elements of the list must begin with a dash.
;; The terms to be inserted into the square brackets
;; have to be added after running the function.
(defun description (beg end) 
 "wrap the active region in an 'itemize' environment,
  converting hyphens at the beginning of a line to \item"
  (interactive "r")
  (save-restriction
    (narrow-to-region beg end)
    (beginning-of-buffer)
    (insert "\\begin{description}\n")
    (while (re-search-forward "^- " nil t)
      (replace-match "\\\\item[ ]"))
    (end-of-buffer)
    (insert "\\end{description}\n")))


;;#### M-x enumerate
;; Converts a selected list into an enumerated list.
;; The elements of the list must begin with a dash.
(defun enumerate (beg end) 
 "wrap the active region in an 'itemize' environment,
  converting hyphens at the beginning of a line to \item"
  (interactive "r")
  (save-restriction
    (narrow-to-region beg end)
    (beginning-of-buffer)
    (insert "\\begin{enumerate}\n")
    (while (re-search-forward "^- " nil t)
      (replace-match "\\\\item "))
    (end-of-buffer)
    (insert "\\end{enumerate}\n")))


;;#### M-x itemize
;; Converts a selected list into an itemized list.
;; The elements of the list must begin with a dash.
;; A similar function could be made to make an enumerated list
;; and a description list.
;; Source: \url{https://tex.stackexchange.com/questions/118958/emacsauctex-prevent-region-filling-when-inserting-itemize}
(defun itemize (beg end) 
 "wrap the active region in an 'itemize' environment,
  converting hyphens at the beginning of a line to \item"
  (interactive "r")
  (save-restriction
    (narrow-to-region beg end)
    (beginning-of-buffer)
    (insert "\\begin{itemize}\n")
    (while (re-search-forward "^- " nil t)
      (replace-match "\\\\item "))
    (end-of-buffer)
    (insert "\\end{itemize}\n")))



;; source https://github.com/ashok-khanna/emacs-notes/blob/main/bayes-init.el
;; 25 Feb 2023

;; LaTeX settings --------------------------------------------------------------
;; Latex Mode https://tex.stackexchange.com/a/209509
(defun my-LaTeX-mode()
  (add-to-list 'TeX-view-program-list '("Skim" "open -a Skim.app %o"))
  (setq TeX-view-program-selection '((output-pdf "Skim")))
  )

(add-hook 'LaTeX-mode-hook 'my-LaTeX-mode)
(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)


;;(setq
;; ;; Set the list of viewers for Mac OS X.
;; TeX-view-program-list
;; '(("Preview.app" "open -a Preview.app %o")
;;   ("Skim" "open -a Skim.app %o")
;;   ("displayline" "displayline %n %o %b")
;;   ("open" "open %o"))
;; ;; Select the viewers for each file type.
;; TeX-view-program-selection
;; '((output-dvi "open")
;;   (output-pdf "Skim")
;;   (output-html "open")))



;; Latex preview pane
(use-package latex-preview-pane)

(unless (package-installed-p `auctex) (package-install `auctex))
(use-package tex
  :ensure auctex
  :custom ((TeX-auto-save t)
	   (TeX-parse-self t)
	   (TeX-master nil)
	   (reftex-plug-into-auctex t)
	   (font-latex-fontify-script nil)
           (LaTeX-electric-left-right-brace t)
           )
  :hook ((LaTeX-mode . my-LaTeX-mode)
	 (LaTeX-mode . flyspell-mode)
	 (LaTeX-mode . LaTeX-math-mode)
         (LaTeX-mode . TeX-fold-mode)
	 (LaTeX-mode . turn-on-reftex)
	 (LaTeX-mode . rainbow-delimiters-mode)))


;;#### LaTeX related
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq doc-view-continuous t) ;; scroll over all pages in doc view 

;; Settings for minted package issue
(eval-after-load "tex" 
  '(setcdr (assoc "LaTeX" TeX-command-list)
          '("%`%l%(mode) -shell-escape%' %t"
          TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")))

;; Outline-minor-mode key map Source: https://www.emacswiki.org/emacs/OutlineMinorMode
(define-prefix-command 'cm-map nil "Outline-")
; HIDE
(define-key cm-map "q" 'hide-sublevels)    ; Hide everything but the top-level headings
(define-key cm-map "t" 'hide-body)         ; Hide everything but headings (all body lines)
(define-key cm-map "o" 'hide-other)        ; Hide other branches
(define-key cm-map "c" 'hide-entry)        ; Hide this entry's body
(define-key cm-map "l" 'hide-leaves)       ; Hide body lines in this entry and sub-entries
(define-key cm-map "d" 'hide-subtree)      ; Hide everything in this entry and sub-entries
;; SHOW
(define-key cm-map "a" 'show-all)          ; Show (expand) everything
(define-key cm-map "e" 'show-entry)        ; Show this heading's body
(define-key cm-map "i" 'show-children)     ; Show this heading's immediate child sub-headings
(define-key cm-map "k" 'show-branches)     ; Show all sub-headings under this heading
(define-key cm-map "s" 'show-subtree)      ; Show (expand) everything in this heading & below
;; MOVE
(define-key cm-map "u" 'outline-up-heading)                ; Up
(define-key cm-map "n" 'outline-next-visible-heading)      ; Next
(define-key cm-map "p" 'outline-previous-visible-heading)  ; Previous
(define-key cm-map "f" 'outline-forward-same-level)        ; Forward - same level
(define-key cm-map "b" 'outline-backward-same-level)       ; Backward - same level
(global-set-key "\M-o" cm-map)


;; Increase size of LaTeX fragment previews in org files
;; (plist-put org-format-latex-options :scale 2)

;; To enable the use of the minted package.
(eval-after-load "tex"
  '(setcdr (assoc "LaTeX" TeX-command-list)
          '("%`%l%(mode) -shell-escape%' %t"
          TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")))


;; PATH to info
;; Set path to info for texlive. This path is needed by the LSP for LaTeX. 
(add-to-list 'Info-directory-list "/opt/local/share/texmf-texlive/doc/info")


;; LSP in LaTeX
;; digestif is an LSP for LaTeX. Install it via this command in the terminal:   luarocks install digestif
;; digestif is one of two latex-lsps available
;; 
(setq lsp-tex-server 'digestif)


;; automate snippet insertion
;; If you want automatic snippet insertion upon choosing a completion candidate, make sure to activate yas-minor-mode before starting up Eglot.
;; (yas-reload-all)
;; The #' is called sharp quoting. 
;; Use it to quote functions. 
;; See http://endlessparentheses.com/get-in-the-habit-of-using-sharp-quote.html.
(add-hook 'LaTeX-mode-hook #'yas-minor-mode)


;; eglot in LaTeX mode
;; Emacs’s polyglot lsp server. 
;; Eglot provides completion, documentation, and navigation commands in LaTeX documents. 
;; Must come after yas-minor-mode. 
;; Add a hook for to invoke eglot in LaTeX-mode. 
;; But you must install digestif first Source. 
;; Invoke eglot with M-x eglot or make it available on startup:
(add-hook 'LaTeX-mode-hook #'eglot-ensure)


;; Note that eglot has no dependences, but bleeding-edge Emacs versions have dependencies that can mess it up. 
;; Enter M-x find-libraries

;; Enlarge equation preview
;; Set the scale of the preview of the LaTeX equation so you can see it. 
;; Place the point in equation and enter C-c C-x C-l to render.
(setq org-format-latex-options (plist-put org-format-latex-options :scale 4.0))


;; Grammar checking with language-tool
;; (add-hook 'LaTeX-mode-hook
;;           (lambda ()
;;              (add-hook 'after-save-hook 'langtool-check nil 'make-it-local)))


;; Spell check with flyspell
;; Run the command M-x flyspell-buffer or M-x flys-bu.
;; Turn on ispell for tex fileset
;; This recommendation is from the 2020 edtion of Petersen’s book Mastering Emacs, page 250.
(add-hook 'tex-mode-hook
      #'(lambda () (setq ispell-parser 'tex)))





;; To bind a key in a mode, you need to wait for the mode to be loaded before defining the key. 
(eval-after-load 'latex 
                   '(define-key LaTeX-mode-map [(tab)] 'outline-cycle))

;; Word count in LaTeX files
;; Run texcount.pl on an open tex document in the current buffer to get a report of word counts by section. 
;; Create in .bashAppAliases:  alias texcount='/usr/local/bin/texcount.pl'
;; Enter C-c w if the document is one file.
;; Enter C-c w m if the docment has multiple parts.
;; If the shortcut fails: M-! /usr/local/bin/texcount.pl WritingLog.tex
;; If the shortcut fails: M-! /usr/local/bin/texcount.pl WritingLog.tex -inc -total
;; Source: https://newbedev.com/word-count-for-latex-within-emacs
(defun bhmm-latex-setup ()
  (defun latex-word-count ()
  "Runs the texcount.pl script on the current buffer.
    If the shortcut fails: M-! /usr/local/bin/texcount.pl WritingLog.tex"
    (interactive)
    (let* ((this-file (buffer-file-name))
           (word-count
            (with-output-to-string
              (with-current-buffer standard-output
                (call-process "/usr/local/bin/texcount.pl" nil t nil "-brief" this-file)))))
      (string-match "\n$" word-count)
      (message (replace-match "" nil nil word-count))))
      (define-key LaTeX-mode-map "\C-cw" 'latex-word-count)
  (defun latex-word-count-multi-total ()
    "Runs the texcount.pl script on the current buffer, which is a master file for multi-part document
      with numbers include or input feeder documents. Reports just the total results.
        If the shortcut fails: M-! /usr/local/bin/texcount.pl WritingLog.tex -inc -total"
        (interactive)
        (let* ((this-file (buffer-file-name))
               (word-count
                (with-output-to-string
                  (with-current-buffer standard-output
                    (call-process "/usr/local/bin/texcount.pl" nil t nil "-brief" this-file "-inc" " -total")))))
          (string-match "\n$" word-count)
          (message (replace-match "" nil nil word-count))))
          (define-key LaTeX-mode-map (kbd "C-c u") 'latex-word-count-multi-total)
  (defun latex-word-count-multi ()
    "Runs the texcount.pl script on the current buffer which is a master file for multi-part document
      with numbers include or input feeder documents. Reports section-by-section results.
      If the shortcut fails: M-! /usr/local/bin/texcount.pl WritingLog.tex -inc"
        (interactive)
        (let* ((this-file (buffer-file-name))
               (word-count
                (with-output-to-string
                  (with-current-buffer standard-output
                    (call-process "/usr/local/bin/texcount.pl" nil t nil "-brief" this-file "-inc")))))
          (string-match "\n$" word-count)
          (message (replace-match "" nil nil word-count))))
          (define-key LaTeX-mode-map (kbd "C-c v") 'latex-word-count-multi))
(add-hook 'LaTeX-mode-hook 'bhmm-latex-setup t)
;; M-! RET texcount test.tex RET





;; ## nlinum for line numbers
;; (global-nlinum-mode t)


;; *** LSP = Language Server Protocol 
;; lsp-mode uses LSP servers to provides IDE functionality like code completion 
;; (intellisense like using company-capf), navigation (jump to symbol), 
;; refactoring functionality and so on. lsp-ui is used to get prettier boxes and 
;; more info visible in an easy way (like javadoc). 

(use-package lsp-mode
  :bind
  ("M-RET" . lsp-execute-code-action))

;; helper boxes and other nice functionality (like javadoc for java)
(defun lsp-ui-show-doc-helper ()
  (interactive)
  (if (lsp-ui-doc--visible-p)
      (lsp-ui-doc-hide)
      (lsp-ui-doc-show)))

(use-package lsp-ui
  :after lsp-mode
  :custom
  (lsp-ui-sideline-show-code-actions t)
  (lsp-ui-doc-position 'at-point)
  :bind
  ("M-s M-d" . lsp-ui-show-doc-helper))

;; Additional helpers using treemacs
;; (symbols view, errors, dependencies for Java etc.)
(use-package lsp-treemacs
  :after lsp-mode
  :config
  (lsp-treemacs-sync-mode 1))

(use-package flycheck
  :custom
  (flycheck-indication-mode nil)
  (flycheck-highlighting-mode 'lines))

(use-package lsp-mode)
(use-package lsp-treemacs)
(add-hook 'latex-mode 'lsp)
(add-hook 'python-mode 'lsp)
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (yas-global-mode))

  (use-package lsp-mode
    :init
    ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l", "s-l")
    (setq lsp-keymap-prefix "s-l")
    :hook (; replace XXX-mode with concrete major-mode (e. g. python-mode)
           (clojure-mode . lsp)
           (clojurec-mode . lsp)
           (clojurescript-mode . lsp)
           (latex-mode . lsp)
           (python-mode . lsp)
           ;; if you want which-key integration
           (lsp-mode . lsp-enable-which-key-integration))
     :config
     ;; add paths to your local installation of project mgmt tools, like lein
     (setenv "PATH" (concat
                      "/Users/blaine/bin" path-separator
                      (getenv "PATH")))
     (dolist (m '(clojure-mode
                  clojurec-mode
                  clojurescript-mode
                  clojurex-mode))
        (add-to-list 'lsp-language-id-configuration `(,m . "clojure")))
     (setq lsp-clojure-server-command '("/usr/local/bin/clojure-lsp")) ;; Optional: In case `clojure-lsp` is not in your $PATH
     :commands (lsp)
  )

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :hook (lsp-mode . lsp-ui-imenu)
  :hook (lsp-mode . lsp-ui-doc-mode)
  :hook (lsp-mode . lsp-ui-doc-show)
  :hook (lsp-mode . lsp-ui-doc-frame-mode)
  :hook (lsp-mode . anaconda-mode)
  :hook (lsp-mode . anaconda-eldoc-mode)
)
(setq lsp-ui-doc-position 'right)
(setq lsp-ui-sideline-enable t)
(setq lsp-ui-sideline-show-hover t)
(setq anaconda-mode t)
(setq lsp-eldoc-render-all t)
(use-package lsp-treemacs
  :after lsp)






;; ** M
;; *** magit
(use-package magit
  :commands magit-status
  :bind
  ("C-x g" . magit-status))

;; show todos in magit status buffer
(use-package magit-todos
  :after (magit)
  :hook
  (magit-status-mode . magit-todos-mode)
)

(use-package git-gutter
  :ensure git-gutter-fringe
  :after magit
  :init
  (global-git-gutter-mode 1)
  (setq-default left-fringe-width 20)
  :hook
  (magit-post-refresh . git-gutter:update-all-windows))

;; *** Configured for GitHub Markdown
(use-package markdown-mode
  :mode ("\\.md\\'" . gfm-mode)
  :commands (markdown-mode gfm-mode)
  :config
  (setq markdown-command "pandoc -t html5"))
;;Install simple-httpd and impatient-mode packages.
(use-package simple-httpd
  :config
  (setq httpd-port 7070)
  (setq httpd-host (system-name)))
;; The impatient-mode package takes the content of your buffer, passes it through a filter, and serves the result via simple-httpd HTTP server.
(use-package impatient-mode
  :commands impatient-mode)
;; Create a filter function to process the Markdown buffer. 
;; The function my-markdown-filter uses github-markdown-css to mimic the look of GitHub.
(defun my-markdown-filter (buffer)
  (princ
   (with-temp-buffer
     (let ((tmp (buffer-name)))
       (set-buffer buffer)
       (set-buffer (markdown tmp))
       (format "<!DOCTYPE html><html><title>Markdown preview</title><link rel=\"stylesheet\" href = \"https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/3.0.1/github-markdown.min.css\"/>
<body><article class=\"markdown-body\" style=\"box-sizing: border-box;min-width: 200px;max-width: 980px;margin: 0 auto;padding: 45px;\">%s</article></body></html>" (buffer-string))))
   (current-buffer)))
;; Create the function my-markdown-preview to show the preview. 
(defun my-markdown-preview ()
  "Preview markdown."
  (interactive)
  (unless (process-status "httpd")
    (httpd-start))
  (impatient-mode)
  (imp-set-user-filter 'my-markdown-filter)
  (imp-visit-buffer))
;; Run my-markdown-preview in any Markdown buffer.
;; It will open a new window in your browser and update it as you type.


;; ;; Let's try an org-mode previewer
;; (require 'org-mode
;;   :mode ("\\.org\\'" . gfm-mode)
;;   :commands (org-mode gfm-mode)
;;   :config
;;   (setq org-command "pandoc -t html5"))
;;
;;   (defun my-org-filter (buffer)
;;     (princ
;;      (with-temp-buffer
;;        (let ((tmp (buffer-name)))
;;          (set-buffer buffer)
;;          (set-buffer (org tmp))
;;          (format "<!DOCTYPE html><html><title>Markdown preview</title><link rel=\"stylesheet\" href = \"https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/3.0.1/github-markdown.min.css\"/>
;;   <body><article class=\"markdown-body\" style=\"box-sizing: border-box;min-width: 200px;max-width: 980px;margin: 0 auto;padding: 45px;\">%s</article></body></html>" (buffer-string))))
;;      (current-buffer)))
;;   ;; Create the function my-org-preview to show the preview.
;;
;; (defun my-org-preview ()
;;   "Preview org."
;;   (interactive)
;;   (unless (process-status "httpd")
;;     (httpd-start))
;;   (impatient-mode)
;;   (imp-set-user-filter 'my-og-filter)
;;   (imp-visit-buffer))


;; This following overlaps with the function of the drug-stuff package.
;;### Move selected regions up or down
;; It is commands like these one that enable rapid reorganization of your prose when writing one sentence per row.
;; Thank you to DivineDomain for the suggested upgrade.
;; Source: https://www.emacswiki.org/emacs/MoveText 
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-line-region-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

(defun move-line-region-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

(global-set-key (kbd "M-<down>") 'move-line-region-down)
(global-set-key (kbd "M-<up>") 'move-line-region-up)

;;### Move lines up an down
;; It is commands like these one that enable rapid reorganization of your prose when writing one sentence per row.
;; Retained for those who have not mastered regions.
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

;; Sometimes we want to edit multiple places in the file at the same time. 
;; Most of the time this is just adding the same characters multiple places 
;; in the file in places with the same pattern, 
;; other times it is inserting a sequence of numbers.
;; Package by Magnar Sveen, https://github.com/magnars/multiple-cursors.el, the author of emacsrocks.com YouTube video series.
;; 
;;*** Multiple-cursors
(use-package multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; ** O

;; *** Olivetti
;; Improves readability.
;; Olivetti centers the entire buffer like a sheet
;; of paper and truncates the content.
;; This helps my eyes when writing things that are
;; more natural flowing text (articles, books, other org mode stuff).

; (use-package olivetti
;   :if window-system
;   :after org
;   :custom
;   (olivetti-minimum-body-width 100)
;   (olivetti-body-width 0.8)
;   :hook
;   (org-mode . olivetti-mode))


;; <<<<<<< BEGINNING of org-agenda >>>>>>>>>>>>>>
(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)

(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; org-capture
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-cl" 'org-store-link)

(setq org-columns-default-format "%50ITEM(Task) %10CLOCKSUM %16TIMESTAMP_IA")

(setq org-agenda-files '("/Users/blaine/gtd/tasks/JournalArticles.org"
 "/Users/blaine/gtd/tasks/Proposals.org"
 "/Users/blaine/gtd/tasks/Books.org"
 "/Users/blaine/gtd/tasks/Talks.org"
 "/Users/blaine/gtd/tasks/Posters.org"
 "/Users/blaine/gtd/tasks/ManuscriptReviews.org"
 "/Users/blaine/gtd/tasks/Private.org"
 "/Users/blaine/gtd/tasks/Service.org"
 "/Users/blaine/gtd/tasks/Teaching.org"
 "/Users/blaine/gtd/tasks/Workshops.org"))

;; Cycle through these keywords with shift right or left arrows.
(setq org-todo-keywords
        '((sequence "TODO(t)" "INITIATED(i!)" "WAITING(w!)" "CAL(a)" "SOMEDAY(s!)" "PROJ(j)" "|" "DONE(d!)" "CANCELLED(c!)")))

(setq org-refile-targets '(("/Users/blaine/gtd/tasks/JournalArticles.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Proposals.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Books.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Talks.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Posters.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/ManuscriptReviews.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Private.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Service.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Teaching.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/grasscatcer.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/Workshops.org" :maxlevel . 2)))
(setq org-refile-use-outline-path 'file)

;; ***** customized agenda views
;;
;; These are my customized agenda views by project.
;; The letter is the last parameter.
;; For example, enter ~C-c a b~ and then enter 402 at the prompt to list all active tasks related to 402 tasks.
;;
;; I learned about this approach [[https://tlestang.github.io/blog/keeping-track-of-tasks-and-projects-using-emacs-and-org-mode.html][here]].
;;
;; The CATEGORY keyword resides inside of a Properties drawer.
;; The drawers are usually closed.
;; I am having trouble opening my drawers in may org files.
;; In addition, I do not want to have to add a drawer to each TODO.
;;
;; I am loving Tags now.
;; I may switch to using Tags because they are visible in org files.
;; I tried and they are not leading to the expect list of TODOs in org-agenda.
;; I am stumped.
;;
;; In the meantime, enter ~C-c \~ inside JournalArticles.org to narrow the focus to the list of TODOs or enter ~C-c i b~ to get an indirect buffer.
;;

(setq org-agenda-custom-commands
      '(
    ("b"
             "List of all active 402 tasks."
             tags-todo
             "402\"/TODO|INITIATED|WAITING")
    ("c"
             "List of all active 523 RNA-drug crystallization review paper tasks."
             tags-todo
             "CATEGORY=\"523\"/TODO|INITIATED|WAITING")
    ("d"
             "List of all active 485PyMOLscGUI tasks."
             tags-todo
             "CATEGORY=\"485\"/TODO|INITIATED|WAITING")
    ("e"
             "List of all active 2104 Emacs tasks"
             tags-todo
             "2104+CATEGORY=\"2104\"/NEXT|TODO|INITIATED|WAITING")
    ("n"
             "List of all active 651 ENAX2 tasks"
             tags-todo
             "651+CATEGORY=\"651\"/NEXT|TODO|INITIATED|WAITING")
    ("q"
             "List of all active 561 charge density review"
             tags
             "561+CATEGORY=\"211\"/NEXT|TODO|INITIATED|WAITING")
    ("r"
             "List of all active 211 rcl/dnph tasks"
             tags-todo
             "211+CATEGORY=\"211\"/NEXT|TODO|INITIATED|WAITING")
    ("P"
         "List of all projects"
         tags
         "LEVEL=2/PROJ")))


;; I usually know the project to which I want to assign a task.
;; I loathe having to come back latter to refile my tasks.
;; I want to do the filing at the time of capture.
;; I found a solution [[https://stackoverflow.com/questions/9005843/interactively-enter-headline-under-which-to-place-an-entry-using-capture][here]].
;;
;; A project has two or more tasks.
;; I believe that the 10,000 projects is the upper limit for a 30 year academic career.
;; There are about 10,000 workdays in a 30 year career if you work six days a week.
;; Of course, most academics work seven a week and many work longer than 30 years, some even reach 60 years.
;;
;; I have my projects split into ten org files.
;; Each org file has a limit of 1000 projects for ease of scrolling.
;;
;; It is best to let Emacs insert new task because it is easy to accidently delete sectons in an org file, especially when sections are folded.
;; (I know that many love folded sections.
;; There is a strong appeal to being able to collapse secitons of text.
;; However, folded section are not for me; I have experienced too many catastrophes.
;; I open all of my org files with all sections fully open.
;; I can use swiper to navigate if I do not want to scroll.)
;; Enter ~C-c c~ to start the capture menu.
;; The settings below show a single letter option for selecting the appropriate org-file.
;; After entering the single-letter code, you are prompted for the headline name.
;; You do not have to include the TODO keyword.
;; However, I changed "Headline" to "Tag" because I have the project ID was one of the tags on the same line as the project headline.
;; I am now prompted for the tag.
;; After entering the tag, I fill out the task entry.
;; I then enter ~C-c C-c~ to save the capture.
;;
;;This protocol can be executed from inside the target org file or from a different buffer.
;;
;;I learned about the following function, which I modified by changing "Headline " to "Tag", from
;;[[https://stackoverflow.com/questions/9005843/interactively-enter-headline-under-which-to-place-an-entry-using-capture][Lionel Henry]] with the modification by Phil on July 1, 2018.
;;
(defun org-ask-location ()
  (let* ((org-refile-targets '((nil :maxlevel . 9)))
         (hd (condition-case nil
                 (car (org-refile-get-location "Tag" nil t))
               (error (car org-refile-history)))))
    (goto-char (point-min))
    (outline-next-heading)
    (if (re-search-forward
         (format org-complex-heading-regexp-format (regexp-quote hd))
         nil t)
        (goto-char (point-at-bol))
      (goto-char (point-max))
      (or (bolp) (insert "\n"))
      (insert "* " hd "\n")))
  (end-of-line))


(setq org-capture-templates
 '(
   ("j" "JournalArticles" entry
    (file+function "/Users/blaine/gtd/tasks/JournalArticles.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("g" "GrantProposals" entry
    (file+function "/Users/blaine/gtd/tasks/Proposals.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("b" "Books" entry
    (file+function "/Users/blaine/gtd/tasks/Books.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("t" "Talks" entry
    (file+function "/Users/blaine/gtd/tasks/Talks.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("p" "Posters" entry
    (file+function "/Users/blaine/gtd/tasks/Posters.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("r" "ManuscriptReviews" entry
    (file+function "/Users/blaine/gtd/tasks/ManuscriptReviews.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("v" "Private" entry
    (file+function "/Users/blaine/gtd/tasks/Private.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("S" "Service" entry
    (file+function "/Users/blaine/gtd/tasks/Service.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("T" "Teaching" entry
    (file+function "/Users/blaine/gtd/tasks/Teaching.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("w" "Workshop" entry
    (file+function "/Users/blaine/gtd/tasks/Workshops.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("s" "Slipbox" entry  (file "/User/org-roam/inbox.org")
           "* %?\n")
    ))


(defun jethro/org-capture-slipbox ()
    (interactive)
    (org-capture nil "s"))


;; <<<<<<< END of org-agenda >>>>>>>>>>>>>>

;;*** org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (shell . t)
   (c . nil)
   (cpp . nil)
   (clojure . t)
   (F90 . nil)
   (gnuplot . t)
   (js . nil)
   (ditaa . nil)
   (java . t)
   (mathematica . nil)
   (plantuml . nil)
   (lisp . t)
   (org . t)
   (julia . t)
   (python . t)
   (R . t)
   (jupyter . t)))


;;*** org-drill
;; org-drill for spaced repetition learning in org-mode
;; You have to install org-drill from MELPA.;; This is a YouTube video about how to use org-drill[[https://www.youtube.com/watch?v=uraPXeLfWcM][to learn Chinese]].
;;You can use org tables to generate [[https://github.com/chrisbarrett/org-drill-table][flashcards]].
(use-package org-drill
             :config (progn
                          (add-to-list 'org-modules 'org-drill)
                          (setq org-drill-add-random-noise-to-intervals-p t)
                          (setq org-drill-hint-separator "||")
                          (setq org-drill-left-cloze-delimiter "<[")
                          (setq org-drill-right-cloze-delimiter "]>")
                          (setq org-drill-learn-fraction 0.25)
             )
)


;;*** org-inline-pdf
;; https://github.com/shg/org-inline-pdf.el
;; #+ATTR_ORG: :width 40% :page 3
;; [[./docs/report.pdf]]
(add-hook 'org-mode-hook #'org-inline-pdf-mode)



;;*** org-pdf-noter
(use-package org-noter
  :after org
  :config
  ;; Your org-noter config ........
  :config
  (setq
    org_notes (concat (getenv "HOME") "/org-roam/")
    zot_bib (concat (getenv "HOME") "/Documents/global.bib")
    org-directory org_notes
    deft-directory org_notes
    org-roam-directory org_notes
    ;; keep an empty line between headings and content in Org file
    org-noter-separate-notes-from-heading t)
)

(use-package org-pdftools
  :hook (org-mode . org-pdftools-setup-link))

(use-package org-noter-pdftools
  :after org-noter
  :config
  ;; Add a function to ensure precise note is inserted
  (defun org-noter-pdftools-insert-precise-note (&optional toggle-no-questions)
    (interactive "P")
    (org-noter--with-valid-session
     (let ((org-noter-insert-note-no-questions (if toggle-no-questions
                                                   (not org-noter-insert-note-no-questions)
                                                 org-noter-insert-note-no-questions))
           (org-pdftools-use-isearch-link t)
           (org-pdftools-use-freepointer-annot t))
       (org-noter-insert-note (org-noter--get-precise-info)))))

  ;; fix https://github.com/weirdNox/org-noter/pull/93/commits/f8349ae7575e599f375de1be6be2d0d5de4e6cbf
  (defun org-noter-set-start-location (&optional arg)
    "When opening a session with this document, go to the current location.
With a prefix ARG, remove start location."
    (interactive "P")
    (org-noter--with-valid-session
     (let ((inhibit-read-only t)
           (ast (org-noter--parse-root))
           (location (org-noter--doc-approx-location (when (called-interactively-p 'any) 'interactive))))
       (with-current-buffer (org-noter--session-notes-buffer session)
         (org-with-wide-buffer
          (goto-char (org-element-property :begin ast))
          (if arg
              (org-entry-delete nil org-noter-property-note-location)
            (org-entry-put nil org-noter-property-note-location
                           (org-noter--pretty-print-location location))))))))
  (with-eval-after-load 'pdf-annot
    (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))
; (eval-after-load 'org '(require 'org-pdfview))
;
; (add-to-list 'org-file-apps
;              '("\\.pdf\\'" . (lambda (file link)
;                                      (org-pdfview-open link))))





;;*** org-pomodoro
(use-package org-pomodoro
    :commands (org-pomodoro)
    :config
    (setq alert-user-configuration (quote ((((:category . "org-pomodoro")) libnotify nil)))))

(use-package sound-wav)
(setq org-pomodoro-ticking-sound-p nil)
(setq org-pomodoro-ticking-sound-states '(:pomodoro :short-break :long-break))
(setq org-pomodoro-ticking-sound-states '(:pomodoro))
(setq org-pomodoro-ticking-frequency 1)
(setq org-pomodoro-audio-player "mplayer")
(setq org-pomodoro-finished-sound-args "-volume 0.9")
(setq org-pomodoro-long-break-sound-args "-volume 0.9")
(setq org-pomodoro-short-break-sound-args "-volume 0.9")
(setq org-pomodoro-ticking-sound-args "-volume 0.3")

(global-set-key (kbd "C-c o") 'org-pomodoro)

;; /Applications/Tomighty.app/Contents/Resources/timer_tick.wav

;; <<<<<<< BEGIN org-ref >>>>>>>>>>>>>>
(use-package org-ref)
;; (require 'org-ref-ivy)
(use-package bibtex)

(setq bibtex-completion-bibliography '("/Users/blaine/Documents/global.bib")
    bibtex-completion-library-path '("/Users/blaine/0papersLabeled/")
    bibtex-completion-notes-path "/Users/blaine/Documents/notes/"
    bibtex-completion-notes-template-multiple-files "* ${author-or-editor}, ${title}, ${journal}, (${year}) :${=type=}: \n\nSee [[cite:&${=key=}]]\n"
    bibtex-completion-additional-search-fields '(keywords)
    bibtex-completion-display-formats
    '((article       . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} ${journal:40}")
      (inbook        . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} Chapter ${chapter:32}")
      (incollection  . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} ${booktitle:40}")
      (inproceedings . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*} ${booktitle:40}")
      (t             . "${=has-pdf=:1}${=has-note=:1} ${year:4} ${author:36} ${title:*}"))
    bibtex-completion-pdf-open-function
    (lambda (fpath)
      (call-process "open" nil 0 nil fpath)))

(setq bibtex-autokey-year-length 4
      bibtex-autokey-name-year-separator "-"
      bibtex-autokey-year-title-separator "-"
      bibtex-autokey-titleword-separator "-"
      bibtex-autokey-titlewords 2
      bibtex-autokey-titlewords-stretch 1
      bibtex-autokey-titleword-length 5)

;; H is the hyper key. I have bound H to Fn. For the MacAlly keyboard, it is bound to right-command.
(define-key bibtex-mode-map (kbd "H-b") 'org-ref-bibtex-hydra/body)
(define-key org-mode-map (kbd "H-c") org-ref-insert-cite-function)
(define-key org-mode-map (kbd "H-r") org-ref-insert-ref-function)
(define-key org-mode-map (kbd "H-l") org-ref-insert-label-function)
(define-key org-mode-map (kbd "H-d") 'doi-add-bibtex-entry)


;; <<<<<<< END org-ref >>>>>>>>>>>>>>




;; <<<<<<< BEGIN org-roam >>>>>>>>>>>>>>

;; ** Basic org-roam config
(use-package org-roam
   :custom
   (org-roam-directory (file-truename "/Users/blaine/org-roam/"))
   :bind (("C-c n l" . org-roam-buffer-toggle)
          ("C-c n f" . org-roam-node-find)
          ("C-c n g" . org-roam-graph)
          ("C-c n i" . org-roam-node-insert)
          ("C-c n c" . #'org-id-get-create)
          ;; Dailies
          ("C-c n j" . org-roam-dailies-capture-today))
   :config
   ;; If you're using a vertical completion framework, you might want a more informative completion interface
   (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
   (org-roam-db-autosync-mode)
   (org-roam-ui-mode))
   ;; If using org-roam-protocol
   ;;(use-package org-roam-protocol))


;; ** Basic org-roam config
;; Following https://jethrokuan.github.io/org-roam-guide/

(setq org-roam-capture-templates
      '(("m" "main" plain
         "%?"
         :if-new (file+head "main/${slug}.org" "#+title: ${title}\n#+ROAM_TAGS: %? \n\n\n\n* References\n\n* Backlinks\n\n#+created_at: %U\n#+last_modified: %U\n")
         :immediate-finish t
         :unnarrowed t)
        ("r" "reference" plain "%?"
         :if-new
         (file+head "reference/${title}.org" "#+title: ${title}\n#+ROAM_TAGS: %? \n\n\n\n\n* References\n\n* Backlinks\n\n#+created_at: %U\n#+last_modified: %U\n")
         :immediate-finish t
         :unnarrowed t)
         ("l" "clipboard" plain #'org-roam-caputre--get-point "%i%a" 
         :file-name "%<%Y%m%d%H%M%S>-${slug}"
         :head "#+title: ${title}\n#+created: %u\n#+last_modified: %U\n#+ROAM_TAGS: %?"
         :unnarrowed t
         :prepend t
         :jump-to-captured t)
        ("a" "article" plain "%?"
         :if-new
         (file+head "articles/${title}.org" "#+title: ${title}\n#+ROAM_TAGS:  %? :article:\n\n\n\n\n* References\n\n* Backlinks\n\n#+created_at: %U\n#+last_modified: %U\n")
         :immediate-finish t
         :unnarrowed t)))

(setq org-roam-node-display-template
    (concat "${type:15} ${title:*} " (propertize "${tags:10}" 'face 'org-tag)))


(defun jethro/org-roam-node-from-cite (keys-entries)
    (interactive (list (citar-select-ref :multiple nil :rebuild-cache t)))
    (let ((title (citar--format-entry-no-widths (cdr keys-entries)
                                                "${author editor} :: ${title}")))
      (org-roam-capture- :templates
                         '(("r" "reference" plain "%?" :if-new
                            (file+head "reference/${citekey}.org"
                                       ":PROPERTIES:
:ROAM_REFS: [cite:@${citekey}]
:END:
#+title: ${title}\n")
                            :immediate-finish t
                            :unnarrowed t))
                         :info (list :citekey (car keys-entries))
                         :node (org-roam-node-create :title title)
                         :props '(:finalize find-file))))


(defun jethro/tag-new-node-as-draft ()
  (org-roam-tag-add '("draft")))
(add-hook 'org-roam-capture-new-node-hook #'jethro/tag-new-node-as-draft)



;; settings to enable rendering of LaTeX equations with org-latex-preview with C-c C-x C-l
;; I tried to get org-latex-preview to work without success on 12-10-2022
;; I had to install texlive-xelatex via macports.
;;


(setq org-preview-latex-default-process 'dvisvgm)

(setq org-latex-to-pdf-process
  '("xelatex -interaction nonstopmode %f"
     "xelatex -interaction nonstopmode %f")) ;; for multiple passes

;; Increase size of LaTeX fragment previews. Note that the previews do not scale up with C-x +
(plist-put org-format-latex-options :scale 2)

;; *** Create the property “type” on my nodes.

;; (cl-defmethod org-roam-node-type ((node org-roam-node))
;;   "Return the TYPE of NODE."
;;   (condition-case nil
;;       (file-name-nondirectory
;;        (directory-file-name
;;         (file-name-directory
;;          (file-relative-name (org-roam-node-file node) org-roam-directory))))
;;     (error "")))
;;

;;(setq org-roam-node-display-template
;;          (concat "${type:15} ${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
;;



;; *** org-roam-bibtex config

(use-package org-roam-bibtex
      :hook (org-roam-mode . org-roam-bibtex-mode))

    (setq orb-preformat-keywords
          '("citekey" "title" "url" "author-or-editor" "keywords" "file")
          orb-process-file-keyword t
          orb-file-field-extensions '("pdf"))

    (setq orb-templates
          '(("r" "ref" plain(function org-roam-capture--get-point)
             ""
             :file-name "${citekey}"
             :head "#+TITLE: ${citekey}: ${title}\n#+ROAM_KEY: ${ref}
  - tags ::
  - keywords :: ${keywords}

  *Notes
  :PROPERTIES:
  :Custom_ID: ${citekey}
  :URL: ${url}
  :AUTHOR: ${author-or-editor}
  :NOTER_DOCUMENT: ${file}
  :NOTER_PAGE:
  :END:")))


(use-package citar-org-roam
  :after citar org-roam
  :no-require
  :config (citar-org-roam-mode))


(use-package citar
  :bind (("C-c b" . citar-insert-citation)
         :map minibuffer-local-map
         ("M-b" . citar-insert-preset))
  :custom
  (citar-bibliography '("/Users/blaine/Documents/global.bib")))

(setenv "PATH" (concat ":/opt/local/bin/" (getenv "PATH")))
(add-to-list 'exec-path "/opt/local/bin/")

;; org-preview-latex-process-alist

;; org-preview-latex-default-process

;; <<<<<<< END org-roam >>>>>>>>>>>>>>


;; org-speed-commands
;; https://www.youtube.com/watch?v=v-jLg1VaYzo}
(defun org-jump-to-heading-beginning ()
  "Jump to the beginning of the line of the closest Org heading."
  (interactive)
  (org-back-to-heading)
  (beginning-of-line))

(define-key org-mode-map (kbd "&*") 'org-jump-to-heading-beginning)

(setq org-use-speed-commands t)
;; (setq org-speed-commands (cons '("w" . widen) org-speed-commands))
;; (define-key org-mode-map (kbd "^") 'org-sort)
;; (define-key org-mode-map (kbd "z") 'org-refile)
;;(define-key org-mode-map (kbd "@") 'org-mark-subtree)


(use-package org2blog)
(setq org2blog/wp-blog-alist
      '(("myblog"
         :url "https://bmooerslab.wordpress.com/xmlrpc.php"
         :username "blainemooersouhscedu")))


;; source: https://www.reddit.com/r/emacs/comments/zjv1gj/org_files_to_docx/
(defun hm/convert-org-to-docx-with-pandoc ()
  "Use Pandoc to convert .org to .docx.
  Comments:
  The `-N' flag numbers the headers lines.
  Use the `--from org' flag to have this function work on files
  that are in Org syntax but do not have a .org extension"
  (interactive)
  (message "exporting .org to .docx")
  (shell-command
   (concat "pandoc -N --from org " (buffer-file-name)
           " -o "
           (file-name-sans-extension (buffer-file-name))
           (format-time-string "-%Y-%m-%d-%H%M%S") ".docx")))
(defalias 'o2d 'hm/convert-org-to-docx)


;; ** P

;; Paredit makes paranthesis handling a breeze in Lisp-languages.
;; Only setting I really need is to make it possible to select something
;; and delete the selection (including the paranthesis).

;;(use-package paredit
;;  :config
;;  ;; making paredit work with delete-selection-mode
;;  ;; found on the excellent place called what the emacs d.
;;  (put 'paredit-forward-delete 'delete-selection 'supersede)
;;  (put 'paredit-backward-delete 'delete-selection 'supersede)
;;  (put 'paredit-open-round 'delete-selection t)
;;  (put 'paredit-open-square 'delete-selection t)
;;  (put 'paredit-doublequote 'delete-selection t)
;;  (put 'paredit-newline 'delete-selection t)
;;  :hook
;;  ((emacs-lisp-mode . paredit-mode)
;;   (scheme-mode . paredit-mode)))

;; Enable Paredit.
(use-package paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)

;; Enable Rainbow Delimiters.
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'ielm-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-interaction-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)

;; Customize Rainbow Delimiters.
(use-package rainbow-delimiters)
(set-face-foreground 'rainbow-delimiters-depth-1-face "#c66")  ; red
(set-face-foreground 'rainbow-delimiters-depth-2-face "#6c6")  ; green
(set-face-foreground 'rainbow-delimiters-depth-3-face "#69f")  ; blue
(set-face-foreground 'rainbow-delimiters-depth-4-face "#cc6")  ; yellow
(set-face-foreground 'rainbow-delimiters-depth-5-face "#6cc")  ; cyan
(set-face-foreground 'rainbow-delimiters-depth-6-face "#c6c")  ; magenta
(set-face-foreground 'rainbow-delimiters-depth-7-face "#ccc")  ; light gray
(set-face-foreground 'rainbow-delimiters-depth-8-face "#999")  ; medium gray
(set-face-foreground 'rainbow-delimiters-depth-9-face "#666")  ; dark gray



;; *** Move to cursor to previously visited window
;; From the book Writing GNU Emacs Extensions by Bill Glickstein.
(defun other-window-backward (&optional n)
  "Select Nth previous window."
  (interactive "P")
  (other-window (- (prefix-numeric-value n))))

(global-set-key "\C-xp" 'other-window-backward)


;; **  pdb-tools

;;Marcin Magnus's updated fork of pdb-tools by Charlie Bond and David Love.
;;[[https://github.com/mmagnus/emacs-pdb-mode][Gitub repo]]]


;; ==> adjust here
;; pdb.el
(load-file "~/latex-tree-emacs30/manual-packages/emacs-pdb-mode/pdb-mode.el")
(setq pdb-rasmol-name "/Applications/PyMOL.app/Contents/bin/pymol")
(setq auto-mode-alist
     (cons (cons "pdb$" 'pdb-mode)
           auto-mode-alist ) )
(autoload 'pdb-mode "PDB")




;;### pdf-tools

;; This is an alternative to the built-in DocView package.
;; I allows smooth scrolling and it superior in general.
;; I could load several PDFs, including 500 pages books.
;;
;;
;; The pdf-tools package runs on top of pdf-view package.
;; This making capturing text from PDFs much easier.
;;
;; I followed a [[http://pragmaticemacs.com/emacs/view-and-annotate-pdfs-in-emacs-with-pdf-tools][blog post]].
;; You enter highlights by selecting with the mouse and entering C-c C-a h.
;; An annotation menu opens in the minibuffer.
;; Enter ~C-c C-c~ to save the annotation.
;; Enter ~C-c C-a t~ to enter text notes.
;; Enter the note and enter ~C-c C-c~ to save.
;; Right-click the mouse to get a menu of more options.


(use-package pdf-tools
  ;;:pin manual ;; manually update
  :config
  ;; initialise
  (pdf-tools-install)
  ;; This means that pdfs are fitted to width by default when you open them
  (setq-default pdf-view-display-size 'fit-width)
  ;; open pdfs scaled to fit page
  ;;  (setq-default pdf-view-display-size 'fit-page)
   ;; automatically annotate highlights
  (setq pdf-annot-activate-created-annotations t)
  ;; use normal isearch
  (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward))
  ;; Setting for sharper images with Macs with Retina displays
  (setq pdf-view-use-scaling t)



;; **** Useful keybindings for viewing PDFs
;; |------------------------------------------+-----------------|
;; | Display                                  |                 |
;; |------------------------------------------+-----------------|
;; | Zoom in / Zoom out                       | ~+~ / ~-~       |
;; | Fit height / Fit width / Fit page        | ~H~ / ~W~ / ~P~ |
;; | Trim margins (set slice to bounding box) | ~s b~           |
;; | Reset margins                            | ~s r~           |
;; | Reset z oom                              | ~0~             |
;; |------------------------------------------+-----------------|
;;
;; **** Useful keybindings for navigating PDFs
;;
;; |-----------------------------------------------+-----------------------|
;; | Navigation                                    |                       |
;; |-----------------------------------------------+-----------------------|
;; | Scroll Up / Down by Page-full                 | ~space~ / ~backspace~ |
;; | Scroll Up / Down by Line                      | ~C-n~ / ~C-p~         |
;; | Scroll Right / Left                           | ~C-f~ / ~C-b~         |
;; | First Page / Last Page                        | ~<~ / ~>~             |
;; | Next Page / Previous Page                     | ~n~ / ~p~             |
;; | First Page / Last Page                        | ~M-<~ / ~M->~         |
;; | Incremental Search Forward / Backward         | ~C-s~ / ~C-r~         |
;; | Occur (list all lines containing a phrase)    | ~M-s o~               |
;; | Jump to Occur Line                            | ~RETURN~              |
;; | Pick a Link and Jump                          | ~F~                   |
;; | Incremental Search in Links                   | ~f~                   |
;; | History Back / Forwards                       | ~l~ / ~r~             |
;; | Display Outline                               | ~o~                   |
;; | Jump to Section from Outline                  | ~RETURN~              |
;; | Jump to Page                                  | ~M-g g~               |
;; | Store position / Jump to position in register | ~m~ / ~'~             |
;; |-----------------------------------------------+-----------------------|
;;


;; *** polymode 
;; 25 Feb 2023
;; source https://github.com/ashok-khanna/emacs-notes/blob/main/bayes-init.el
;; Polymode settings
;; https://emacs.stackexchange.com/q/47842
;; https://polymode.github.io/installation/
(use-package poly-markdown)

;; https://github.com/vspinu/polymode
(use-package polymode
  :diminish (poly-org-mode
             poly-markdown-mode
             poly-noweb+r-mode
             poly-noweb+r-mode
             poly-markdown+r-mode
             poly-rapport-mode
             poly-html+r-mode
             poly-brew+r-mode
             poly-r+c++-mode
             poly-c++r-mode)
   :init
   (use-package poly-R)
   (use-package poly-markdown)
  :config
  (add-to-list 'auto-mode-alist '("\\.md$" . poly-markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.Rmd$" . poly-markdown+r-mode))
  (add-to-list 'auto-mode-alist '("\\.Rcpp$" . poly-r+c++-mode))
  (add-to-list 'auto-mode-alist '("\\.cppR$" . poly-c++r-mode))
  )




;; *** projectile
(use-package projectile)
(projectile-mode +1)
(setq projectile-enable-caching t)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;; *** Python

;; I sometimes write Python code for various things, sometimes as a calculator
;; :P (SymPy, NumPy and MatplotLib <3 ).
;;
;; I choose to start lsp manually due to sometimes not needing a language server
;; for minor edits (which is what I mostly do with Python).

;; (use-package lsp-pyright
;;   :after lsp-mode
;;   :init
;;   (require 'lsp-pyright))


;;** Q





;;** R
;; See paredit config
;; rainbow-delimiters
;; (use-package rainbow-delimiters)
;; (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; (set-face-attribute 'rainbow-delimiters-unmatched-face nil
;;             :foreground "magenta"
;;             :inherit 'error
;;             :box t)
;;(add-hook 'clojure-mode-hook 'rainbow-blocks-mode)
;;(add-hook 'org-mode-hook 'rainbow-blocks-mode)
;;(add-hook 'emacs-lisp-mode-hook 'rainbow-blocks-mode)


;; (use-package poly-R
;;   :config
;;   ;; associate the new polymode to Rmd files:
;;   (add-to-list 'auto-mode-alist
;;              '("\\.[rR]md\\'" . poly-gfm+r-mode))
;;   ;; uses braces around code block language strings:
;;   (setq markdown-code-block-braces t))


;;** S
;; (use-package swiper
;;   :config
;;   (progn
;;     (ivy-mode 1)
;;     (setq ivy-use-virtual-buffers t)
;;     (global-set-key "\C-s" 'swiper)
;; ;;    (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; ;;    (global-set-key (kbd "<f6>") 'ivy-resume)
;; ;;    (global-set-key (kbd "M-x") 'counsel-M-x)
;; ;;    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; ;;    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; ;;    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; ;;    (global-set-key (kbd "<f1> l") 'counsel-load-library)
;; ;;    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; ;;    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; ;;    (global-set-key (kbd "C-c g") 'counsel-git)
;; ;;    (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; ;;    (global-set-key (kbd "C-c k") 'counsel-ag)
;; ;;    (global-set-key (kbd "C-x l") 'counsel-locate)
;; ;;    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; ;;    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
;;     ))


;;**T
;;*** Tree-sitter
;; `M-x combobulate' (or `C-c o o') to start using Combobulate
(use-package treesit
  :preface
  (defun mp-setup-install-grammars ()
    "Install Tree-sitter grammars if they are absent."
    (interactive)
    (dolist (grammar
             '((css "https://github.com/tree-sitter/tree-sitter-css")
               (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript" "master" "src"))
               (python "https://github.com/tree-sitter/tree-sitter-python")
               (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src"))
               (yaml "https://github.com/ikatyang/tree-sitter-yaml")))
      (add-to-list 'treesit-language-source-alist grammar)
      ;; Only install `grammar' if we don't already have it
      ;; installed. However, if you want to *update* a grammar then
      ;; this obviously prevents that from happening.
      (unless (treesit-language-available-p (car grammar))
        (treesit-install-language-grammar (car grammar)))))

  ;; Optional, but recommended. Tree-sitter enabled major modes are
  ;; distinct from their ordinary counterparts.
  ;;
  ;; You can remap major modes with `major-mode-remap-alist'. Note
  ;; that this does *not* extend to hooks! Make sure you migrate them
  ;; also
  (dolist (mapping '((python-mode . python-ts-mode)
                     (css-mode . css-ts-mode)
                     (typescript-mode . tsx-ts-mode)
                     (js-mode . js-ts-mode)
                     (css-mode . css-ts-mode)
                     (yaml-mode . yaml-ts-mode)))
    (add-to-list 'major-mode-remap-alist mapping))

  :config
  (mp-setup-install-grammars)
  ;; Do not forget to customize Combobulate to your liking:
  ;;
  ;;  M-x customize-group RET combobulate RET
  ;;
  (use-package combobulate
    ;; Optional, but recommended.
    ;;
    ;; You can manually enable Combobulate with `M-x
    ;; combobulate-mode'.
    :hook ((python-ts-mode . combobulate-mode)
           (js-ts-mode . combobulate-mode)
           (css-ts-mode . combobulate-mode)
           (yaml-ts-mode . combobulate-mode)
           (typescript-ts-mode . combobulate-mode)
           (tsx-ts-mode . combobulate-mode))
    ;; Amend this to the directory where you keep Combobulate's source
    ;; code.
    :load-path ("/Users/blaine/latex-tree-emacs30/manual-packages/combobulate")))
;; ==> adjust here





;;** W
;; *** wc-mode

;; (require 'wc-mode)
;; ;; Source: https://www.emacswiki.org/emacs/wcMode
;; (setq mode-line-position
;;   (append
;;    mode-line-position
;;    '((wc-mode
;;   (6 (:eval (if (use-region-p)
;;         (format " %d,%d,%d"
;;             (abs (- (point) (mark)))
;;             (count-words-region (point) (mark))
;;             (abs (- (line-number-at-pos (point))
;;                 (line-number-at-pos (mark)))))
;;           (format " %d,%d,%d"
;;               (- (point-max) (point-min))
;;               (count-words-region (point-min) (point-max))
;;               (line-number-at-pos (point-max))))))
;;   nil))))

;;*** which-key
(use-package which-key
  :custom
  (which-key-idle-delay 2)
  :init
  :defer 0
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 0.3))
;;   (add-hook 'c-mode-hook 'lsp)
;; (add-hook 'c++-mode-hook 'lsp)
(add-hook 'clojure-mode-hook 'lsp)
;; (add-hook 'julia-mode-hook 'lsp)
(add-hook 'latex-mode-hook 'lsp)
(add-hook 'python-mode-hook 'lsp)
;; (add-hook 'R-mode-hook 'lsp)
(which-key-setup-side-window-right-bottom)



;; ** Y
;; *** yasnippet related
(use-package yasnippet
  :config
  (yas-global-mode 1)
  :bind
  ("C-c y i" . yas-insert-snippet)
  ("C-c y n" . yas-new-snippet)
  )
(global-set-key "\C-o" 'yas-expand)

(use-package popup)
;; add some shotcuts in popup menu mode
(define-key popup-menu-keymap (kbd "M-n") 'popup-next)
(define-key popup-menu-keymap (kbd "TAB") 'popup-next)
(define-key popup-menu-keymap (kbd "<tab>") 'popup-next)
(define-key popup-menu-keymap (kbd "<backtab>") 'popup-previous)
(define-key popup-menu-keymap (kbd "M-p") 'popup-previous)

(defun yas/popup-isearch-prompt (prompt choices &optional display-fn)
  (when (featurep 'popup)
    (popup-menu*
     (mapcar
      (lambda (choice)
        (popup-make-item
         (or (and display-fn (funcall display-fn choice))
             choice)
         :value choice))
      choices)
     :prompt prompt
     ;; start isearch mode immediately
     :isearch t
     )))
(setq yas/prompt-functions '(yas/popup-isearch-prompt yas/no-prompt))

(message "config • Finished package configuration. You now may enjoy Emacs.")

;; Start server.
;; Enter `M-x server-force-delete’ to disconnect the server.
(require 'server)
(unless (server-running-p)
  (server-start))

(message "Using emacs server.")



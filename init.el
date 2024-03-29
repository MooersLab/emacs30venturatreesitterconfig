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
(add-to-list 'package-selected-packages 'ack)
(add-to-list 'package-selected-packages 'ack-menu)
;;(add-to-list 'package-selected-packages 'aide)
(add-to-list 'package-selected-packages 'all-the-icons)
(add-to-list 'package-selected-packages 'all-the-icons-ivy-rich)
;; (add-to-list 'package-selected-packages 'anaconda-mode)
(add-to-list 'package-selected-packages 'atomic-chrome)
(add-to-list 'package-selected-packages 'auctex)
;;(add-to-list 'package-selected-packages 'auto-virtualenv)
(add-to-list 'package-selected-packages 'auto-yasnippet)
;;(add-to-list 'package-selected-packages 'auto-complete)
;;(add-to-list 'package-selected-packages 'auto-complete-config)
;;(add-to-list 'package-selected-packages 'auto-complete-auctex)
;; (add-to-list 'package-selected-packages 'auto-complete-clang)
;; (add-to-list 'package-selected-packages 'auto-package-update)
(add-to-list 'package-selected-packages 'avy)

(add-to-list 'package-selected-packages 'beframe)
(add-to-list 'package-selected-packages 'better-defaults)
(add-to-list 'package-selected-packages 'bibtex)
(add-to-list 'package-selected-packages 'browse-at-remote)

;; (add-to-list 'package-selected-packages 'c-eldoc)
(add-to-list 'package-selected-packages 'cape)
(add-to-list 'package-selected-packages 'change-region)
(add-to-list 'package-selected-packages 'cider)
(add-to-list 'package-selected-packages 'citar)
(add-to-list 'package-selected-packages 'citar-embark)
(add-to-list 'package-selected-packages 'citar-org)
(add-to-list 'package-selected-packages 'citar-org-roam)
(add-to-list 'package-selected-packages 'citeproc-org)
(add-to-list 'package-selected-packages 'code-cells)

;;(add-to-list 'package-selected-packages 'clomacs) ;; depends on cider-0.22.1
;; (add-to-list 'package-selected-packages 'cmake-ide)
;; (add-to-list 'package-selected-packages 'cmake-mode)
;; (add-to-list 'package-selected-packages 'code-cells)
;; (add-to-list 'package-selected-packages 'combobulate)

(add-to-list 'package-selected-packages 'company) ; required by lsp-mode.302
(add-to-list 'package-selected-packages 'company-box) ; required to avoid conflicts with copilot
(add-to-list 'package-selected-packages 'company-tabnine)
(add-to-list 'package-selected-packages 'company-prescient)
(add-to-list 'package-selected-packages 'company-quickhelp)
(add-to-list 'package-selected-packages 'company-quickhelp-terminal)

(add-to-list 'package-selected-packages 'conda)
;;(add-to-list 'package-selected-packages 'codegpt)
(add-to-list 'package-selected-packages 'consult)
(add-to-list 'package-selected-packages 'consult-projectile)
(add-to-list 'package-selected-packages 'consult-org-roam)
;; (add-to-list 'package-selected-packages 'copilot)
(add-to-list 'package-selected-packages 'corfu)
;; (add-to-list 'package-selected-packages 'corfu-prescient)
;; (add-to-list 'package-selected-packages 'counsel)


(add-to-list 'package-selected-packages 'dash)
(add-to-list 'package-selected-packages 'dashboard-hackernews)
(add-to-list 'package-selected-packages 'dashboard)
(add-to-list 'package-selected-packages 'dap-mode)
(add-to-list 'package-selected-packages 'dired-icon)
(add-to-list 'package-selected-packages 'dired-subtree)
(add-to-list 'package-selected-packages 'discover)
(add-to-list 'package-selected-packages 'dirvish)
(add-to-list 'package-selected-packages 'dot-mode)
(add-to-list 'package-selected-packages 'drag-stuff)



;;(add-to-list 'package-selected-packages 'edwina)
(add-to-list 'package-selected-packages 'ef-themes)
(add-to-list 'package-selected-packages 'eglot)
;; (add-to-list 'package-selected-packages 'ein)
;; (add-to-list 'package-selected-packages 'eldoc-stan)
;; (add-to-list 'package-selected-packages 'electric-spacing)
;; (add-to-list 'package-selected-packages 'elisp-lint)
;; (add-to-list 'package-selected-packages 'elpy)
(add-to-list 'package-selected-packages 'elfeed)
(add-to-list 'package-selected-packages 'elfeed-dashboard)

(add-to-list 'package-selected-packages 'elfeed-org)
(add-to-list 'package-selected-packages 'elfeed-score)
(add-to-list 'package-selected-packages 'elpy)
;; (add-to-list 'package-selected-packages 'emacs-cursorless)
(add-to-list 'package-selected-packages 'emacs-eat)
;; (add-to-list 'package-selected-packages 'embark)
;; (add-to-list 'package-selected-packages 'embark-consult)
(add-to-list 'package-selected-packages 'ement)
(add-to-list 'package-selected-packages 'emojify)
(add-to-list 'package-selected-packages 'engine-mode)
(add-to-list 'package-selected-packages 'eros)
(add-to-list 'package-selected-packages 'ess)
(add-to-list 'package-selected-packages 'expand-region)
(add-to-list 'package-selected-packages 'evil-nerd-commenter)
;; (add-to-list 'package-selected-packages 'evil)
;; (add-to-list 'package-selected-packages 'evil-collection)
;; (add-to-list 'package-selected-packages 'evil-visual-mark-mode)
(add-to-list 'package-selected-packages 'exec-path-from-shell)
;; (add-to-list 'package-selected-packages 'expand-region)
;; (add-to-list 'package-selected-packages 'exwm)

(add-to-list 'package-selected-packages 'file-info)
(add-to-list 'package-selected-packages 'flycheck)
(add-to-list 'package-selected-packages 'flycheck-vale)
;; (add-to-list 'package-selected-packages 'flycheck-grammarly)
;; (add-to-list 'package-selected-packages 'flycheck-plantuml)
;; (add-to-list 'package-selected-packages 'flycheck-pycheckers)
;; (add-to-list 'package-selected-packages 'flycheck-stan)
;; (add-to-list 'package-selected-packages 'flymake)
;; (add-to-list 'package-selected-packages 'flymake-grammarly)
;; (add-to-list 'package-selected-packages 'fn)
;; (add-to-list 'package-selected-packages 'fzf)
(add-to-list 'package-selected-packages 'focus)

(add-to-list 'package-selected-packages 'gcmh)
(add-to-list 'package-selected-packages 'general)
(add-to-list 'package-selected-packages 'git-gutter)
(add-to-list 'package-selected-packages 'gnuplot)
(add-to-list 'package-selected-packages 'gnuplot-mode)
(add-to-list 'package-selected-packages 'gptai)
(add-to-list 'package-selected-packages 'golden-ratio)

(add-to-list 'package-selected-packages 'google-this)
;; (add-to-list 'package-selected-packages 'graphviz-dot-mode)
;; (add-to-list 'package-selected-packages 'greader)
(add-to-list 'package-selected-packages 'gxref)

(add-to-list 'package-selected-packages 'helpful)
(add-to-list 'package-selected-packages 'helm)
(add-to-list 'package-selected-packages 'helm-bibtex)
(add-to-list 'package-selected-packages 'highlight-defined)
(add-to-list 'package-selected-packages 'hydra)
;;(add-to-list 'package-selected-packages 'hyperdrive)
;; (add-to-list 'package-selected-packages 'highlight-parentheses)
(add-to-list 'package-selected-packages 'hyperbole)

(add-to-list 'package-selected-packages 'iedit)
(add-to-list 'package-selected-packages 'impatient-mode)
;; (add-to-list 'package-selected-packages 'jedi)
;; (add-to-list 'package-selected-packages 'jedi-core)
(add-to-list 'package-selected-packages 'ivy)
(add-to-list 'package-selected-packages 'ivy-prescient)
(add-to-list 'package-selected-packages 'ivy-rich)



(add-to-list 'package-selected-packages 'jupyter)
(add-to-list 'package-selected-packages 'julia-snail)

(add-to-list 'package-selected-packages 'kind-icon)


(add-to-list 'package-selected-packages 'languagetool)
(add-to-list 'package-selected-packages 'latex-preview-pane)
(add-to-list 'package-selected-packages 'lsp-mode)
(add-to-list 'package-selected-packages 'lsp-pyright)
(add-to-list 'package-selected-packages 'lsp-ui)
(add-to-list 'package-selected-packages 'lsp-treemacs)

(add-to-list 'package-selected-packages 'magit)
(add-to-list 'package-selected-packages 'magit-commit)
(add-to-list 'package-selected-packages 'major-mode-hydra)
(add-to-list 'package-selected-packages 'marginalia)
(add-to-list 'package-selected-packages 'markdown-mode)
;; (add-to-list 'package-selected-packages 'markdown-preview-eww)
;; (add-to-list 'package-selected-packages 'markdown-preview-mode)
;; (add-to-list 'package-selected-packages 'material-theme)
(add-to-list 'package-selected-packages 'maxframe)
(add-to-list 'package-selected-packages 'mermaid-mode)
(add-to-list 'package-selected-packages 'move-text)
;; (add-to-list 'package-selected-packages 'mu4e-alert)
;; (add-to-list 'package-selected-packages 'mu4e-views)
(add-to-list 'package-selected-packages 'multiple-cursors)
(add-to-list 'package-selected-packages 'mw-thesaurus)
(add-to-list 'package-selected-packages 'my-hydras)
(add-to-list 'package-selected-packages 'my-uniteai)

(add-to-list 'package-selected-packages 'nov)


;; (add-to-list 'package-selected-packages 'ob-diagrams)
;; (add-to-list 'package-selected-packages 'ob-ess-julia)
;; (add-to-list 'package-selected-packages 'ob-ipython)
;; (add-to-list 'package-selected-packages 'ob-mermaid)
(add-to-list 'package-selected-packages 'ob-julia-vterm)
;;(add-to-list 'package-selected-packages 'openai)

(add-to-list 'package-selected-packages 'orderless)
;; (add-to-list 'package-selected-packages 'org-babel-eval-in-repl)
(add-to-list 'package-selected-packages 'org-bookmark-heading)
;; (add-to-list 'package-selected-packages 'org-bullets)
(add-to-list 'package-selected-packages 'org-drill)
;; (add-to-list 'package-selected-packages 'org-evil)
(add-to-list 'package-selected-packages 'org-inline-pdf)
;; (add-to-list 'package-selected-packages 'org-latex-impatient)
;; (add-to-list 'package-selected-packages 'org-msg)
(add-to-list 'package-selected-packages 'org-noter)
(add-to-list 'package-selected-packages 'org-noter-pdftools)
(add-to-list 'package-selected-packages 'org-pdftools)
;; (add-to-list 'package-selected-packages 'org-plus-contrib)
(add-to-list 'package-selected-packages 'org-pomodoro)
(add-to-list 'package-selected-packages 'org-preview-html)
;; (add-to-list 'package-selected-packages 'org-ql)
(add-to-list 'package-selected-packages 'org-ref)
(add-to-list 'package-selected-packages 'org-reveal)
(add-to-list 'package-selected-packages 'org-re-reveal)
(add-to-list 'package-selected-packages 'org-roam)
(add-to-list 'package-selected-packages 'org-roam-bibtex)
(add-to-list 'package-selected-packages 'org-roam-timestamps)
(add-to-list 'package-selected-packages 'org-roam-ui)
(add-to-list 'package-selected-packages 'org-similarity)
(add-to-list 'package-selected-packages 'org-wc)
(add-to-list 'package-selected-packages 'org2blog)
;; (add-to-list 'package-selected-packages 'orgtbl-ascii-plot)
;; (add-to-list 'package-selected-packages 'ox-latex-subfigure)
(add-to-list 'package-selected-packages 'ox-pandoc)
;; (add-to-list 'package-selected-packages 'package-utils)

(add-to-list 'package-selected-packages 'page-break-lines)
(add-to-list 'package-selected-packages 'paredit)
(add-to-list 'package-selected-packages 'parent-mode)
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
(add-to-list 'package-selected-packages 'pretty-hydra)
(add-to-list 'package-selected-packages 'projectile)
(add-to-list 'package-selected-packages 'pyvenv-auto)
;; (add-to-list 'package-selected-packages 'pydoc)
;; (add-to-list 'package-selected-packages 'python-pytest)

(add-to-list 'package-selected-packages 'qclj)
(add-to-list 'package-selected-packages 'qemacs)
;; (add-to-list 'package-selected-packages 'qvoice)
(add-to-list 'package-selected-packages 'qtalonvoice)
(add-to-list 'package-selected-packages 'quelpa)
(add-to-list 'package-selected-packages 'quelpa-use-package)
(add-to-list 'package-selected-packages 'query-replace-parallel)


;;(add-to-list 'package-selected-packages 'racket-mode)
(add-to-list 'package-selected-packages 'rainbow-delimiters)
(add-to-list 'package-selected-packages 'repl-driven-development)
;; (add-to-list 'package-selected-packages 'rtags)

(add-to-list 'package-selected-packages 'selcand)
(add-to-list 'package-selected-packages 'simple-httpd)
;;(add-to-list 'package-selected-packages 'slime)
;;(add-to-list 'package-selected-packages 'sound-wav)
(add-to-list 'package-selected-packages 'ssh)
(add-to-list 'package-selected-packages 'serenade-mode)
;; (add-to-list 'package-selected-packages 'stan-mode)
;; (add-to-list 'package-selected-packages 'stan-snippets)
;; (add-to-list 'package-selected-packages 'standoff-mode)
(add-to-list 'package-selected-packages 'swiper)
;; (add-to-list 'package-selected-packages 'sx)

(add-to-list 'package-selected-packages 'tabnine)
(add-to-list 'package-selected-packages 'tempel)
(add-to-list 'package-selected-packages 'tempel-collection)
;; (add-to-list 'package-selected-packages 'treemacs)
;; (add-to-list 'package-selected-packages 'treemacs-evil)
;; (add-to-list 'package-selected-packages 'treemacs-icons-dired)
;; (add-to-list 'package-selected-packages 'treemacs-magit)
;; (add-to-list 'package-selected-packages 'treemacs-persp)
;; (add-to-list 'package-selected-packages 'treemacs-projectile)
;;(add-to-list 'package-selected-packages 'transient)

(add-to-list 'package-selected-packages 'tree-sitter-ispell)
(add-to-list 'package-selected-packages 'tree-sitter-ess-r)
(add-to-list 'package-selected-packages 'tree-sitter-mode)


(add-to-list 'package-selected-packages 'tree-sitter-langs)

(add-to-list 'package-selected-packages 'vertico)
(add-to-list 'package-selected-packages 'vertico-prescient)
;; (add-to-list 'package-selected-packages 'vertico-repeat)
;; (add-to-list 'package-selected-packages 'try)
;; (add-to-list 'package-selected-packages 'use-package)
;; (add-to-list 'package-selected-packages 'wc-mode)
;; (add-to-list 'package-selected-packages 'web)

(add-to-list 'package-selected-packages 'which-key)
(add-to-list 'package-selected-packages 'whisper)
;; (add-to-list 'package-selected-packages 'wttrin)
;; (add-to-list 'package-selected-packages 'xelb)
;; (add-to-list 'package-selected-packages 'xwidgets-reuse)
;; (add-to-list 'package-selected-packages 'xwwp-follow-link-ivy)

(add-to-list 'package-selected-packages 'yasnippet)
;; (Add-to-list 'package-selected-packages 'yasnippet-classic-snippets)
;; (add-to-list 'package-selected-packages 'yasnippet-snippets)
;; (add-to-list 'package-selected-packages 'ztree)


(add-to-list 'package-selected-packages 'zetteldesk)
(add-to-list 'package-selected-packages 'zetteldesk-kb)

(package-install-selected-packages)
(message "Installing missing packages. Take 4-5 minutes when all are missing.")


;; garbage collection
(use-package gcmh
  :diminish gcmh-mode
  :config
  (setq gcmh-idle-delay 5
        gcmh-high-cons-threshold (* 16 1024 1024))  ; 16mb
  (gcmh-mode 1))

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-percentage 0.1))) ;; Default value for `gc-cons-percentage'

(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))





;; ############################## save current init.el to ~/.saves ####################
;; source https://www.reddit.com/r/emacs/comments/11ap924/the_most_important_snippet_in_my_emacs_init_file/
(setq
backup-by-copying t ; don't clobber symlinks
backup-directory-alist
'(("." . "~/.emacs30InitSaves")) ; don't litter my fs tree
delete-old-versions t
kept-new-versions 6
kept-old-versions 2
version-control t)
;; ############################## Basics Configuration ################################
;; ==> adjust here
;;(setq openai-key "[]")
;;(setq openai-api-key "")

(setq inhibit-startup-message t) ;; hide the startup message
;; (load-theme 'material t) ;; load material theme
;; (global-linum-mode t) ;; enable line numbers globally
(set-default 'truncate-lines t) ;; do not wrap
(prefer-coding-system 'utf-8) ;; use UTF-8

;;l oad prefers the newest version of a file.
;; This applies when a filename suffix is not explicitly specified and load is trying various possible suffixes (see load-suffixes and load-file-rep-suffixes). Normally, it stops at the first file that exists unless you explicitly specify one or the other. If this option is non-nil, it checks all suffixes and uses whichever file is newest.
;; (setq load-prefer-newer t) --> causes RECURSIVE LOAD error

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


;; set browser to open url in new tab
(custom-set-variables
  '(browse-url-browser-function (quote browse-url-firefox))
  '(browse-url-firefox-new-window-is-tab t))

;; Inspried https://sachachua.com/dotemacs/index.html#org4dd39d0
(defun reload-init ()
  "Reload my init.el file. Edit the path to suite your needs."
  (interactive)
  (load-file "~/emacs30/init.el"))


(defun reload-hydras ()
  "Reload my-hydras.el. Edit the path to suite your needs."
  (interactive)
  (load-file "~/emacs30/my-hydras/my-hydras.el"))

(defun reload-uniteai ()
    "Reload my-uniteai.el. Edit the path to suite your needs."
    (interactive)
    (load-file "~/emacs30/my-uniteai.el"))


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
(setq backup-directory-alist '(("" . "~/emacs30/backup/per-save")))

 (defun force-backup-of-buffer ()
    ;; Make a special "per session" backup at the first save of each
    ;; emacs session.
    (when (not buffer-backed-up)
      ;; Override the default parameters for per-session backups.
      (let ((backup-directory-alist '(("" . "~/emacs30/backup/per-session")))
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

(setq user-init-file "/Users/blaine/emacs30/init.el")
(setq user-emacs-directory "/Users/blaine/emacs30/")
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
;; (global-set-key (kbd "C-c t") 'show-current-time)
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)


;; display line numbers. Need with s-l.
(global-display-line-numbers-mode)

;;### hippie-expand M-/. Seems to be comflicting with Corfu, Cape, and dabrrev.
;; (global-set-key [remap dabbrev-expand]  'hippie-expand)


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
(set-face-background hl-line-face "wheat1")
(set-face-attribute 'mode-line nil  :height 180)

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
      (find-file "~/emacs30/init.el")))


(set-face-attribute 'default nil :height 140)

(set-frame-parameter (selected-frame) 'buffer-predicate
                     (lambda (buf)
                       (let ((name (buffer-name buf)))
                         (not (or (string-prefix-p "*" name)
                                  (eq 'dired-mode (buffer-local-value 'major-mode buf)))))))


;; Global keys
;; If you use a window manager be careful of possible key binding clashes
(setq recenter-positions '(top middle bottom))
(global-set-key (kbd "C-1") 'kill-this-buffer)
(global-set-key (kbd "C-<down>") (kbd "C-u 1 C-v"))
(global-set-key (kbd "C-<up>") (kbd "C-u 1 M-v"))
(global-set-key [C-tab] 'other-window)
(global-set-key (kbd "C-c c") 'calendar)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-`") 'mode-line-other-buffer)
;; (global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "C-x C-j") 'dired-jump)
(global-set-key (kbd "C-c r") 'remember)


(setq case-fold-search t)


;; Show the file path in the title of the frame
;; source https://stackoverflow.com/questions/2903426/display-path-of-file-in-status-bar See entry by mortnene
;; This is much more useful than just showing the file name or buffer name in the frame title.

(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             "\\\\" "/"
             (replace-regexp-in-string
              (regexp-quote (getenv "HOME")) "~"
              (convert-standard-filename buffer-file-name)))
          (buffer-name))))


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

;;*** Zoom in and out via C-scroll wheel
(global-set-key [C-wheel-up] 'text-scale-increase)
(global-set-key [C-wheel-down] 'text-scale-decrease)


;; ############################## aliases ################################
;; Source: https://www.youtube.com/watch?v=ufVldIrUOBg   
;; Defalias: a quick guide to making an alias in Emacs
;; Usage: M-x ct
 
(defalias 'ct 'customize-themes)
(defalias 'cz 'customize)
(defalias 'ddl 'delete-duplicate-lines)
(defalias 'dga 'define-global-abbrev)
(defalias 'dma 'define-mode-abbrev)
(defalias 'ea 'edit-abbrevs)
(defalias 'ff 'flip-frame)
(defalias 'fl 'flush-lines)
(defalias 'fnd 'find-name-dired)
(defalias 'klm 'kill-matching-lines)
(defalias 'lc 'langtool-check)
(defalias 'lcu 'langtool-check-buffer)
(defalias 'lp 'list-packages)
(defalias 'pcr 'package-refresh-contents)
(defalias 'pi 'package-install)
(defalias 'pua 'package-upgrade-all)
(defalias 'qr 'query-replace)
(defalias 'rg 'rgrep)
(defalias 'rsv 'replace-smart-quotes)
(defalias 'sl 'sort-lines)
(defalias 'slo 'single-lines-only)
(defalias 'spe 'ispell-region)
(defalias 'udd 'package-upgrade-all)
(defalias 'ugg 'package-upgrade-all)
(defalias 'wr 'write-region)


;; ############################## Package Configurations ################################

;;** A

;;*** ack

(use-package ack)
(use-package ack-menu)

;;*** affe
(use-package affe
:config
;; Manual preview key for `affe-grep'
(consult-customize affe-grep :preview-key "M-."))

;; -*- lexical-binding: t -*-
(defun affe-orderless-regexp-compiler (input _type _ignorecase)
  (setq input (orderless-pattern-compiler input))
  (cons input (lambda (str) (orderless--highlight input str))))
(setq affe-regexp-compiler #'affe-orderless-regexp-compiler)


;;*** auto-activating-snippets


;;**** latex-auto-activating-snippets
;; source: https://github.com/tecosaur/LaTeX-auto-activating-snippets
(use-package laas
  :hook (LaTeX-mode . laas-mode)
  :config ; do whatever here
  (aas-set-snippets 'laas-mode
                    ;; set condition!
                    :cond #'texmathp ; expand only while in math
                    "supp" "\\supp"
                    "On" "O(n)"
                    "O1" "O(1)"
                    "Olog" "O(\\log n)"
                    "Olon" "O(n \\log n)"
                    ;; bind to functions!
                    "Sum" (lambda () (interactive)
                            (yas-expand-snippet "\\sum_{$1}^{$2} $0"))
                    "jf" (lambda () (interactive)
                            (yas-expand-snippet "\\\\( $1 \\\\) $0"))
                    "Span" (lambda () (interactive)
                             (yas-expand-snippet "\\Span($1)$0"))
                    ;; add accent snippets
                    :cond #'laas-object-on-left-condition
                    "qq" (lambda () (interactive) (laas-wrap-previous-object "sqrt"))))


(use-package corfu
  :init
  (global-corfu-mode)
  :config
  (setq corfu-auto t
        corfu-echo-documentation t
        corfu-scroll-margin 0
        corfu-count 8
        corfu-max-width 50
        corfu-min-width corfu-max-width
        corfu-auto-prefix 2)

  (corfu-history-mode 1)
  (savehist-mode 1)
  (add-to-list 'savehist-additional-variables 'corfu-history)

  (defun corfu-enable-always-in-minibuffer ()
    (setq-local corfu-auto nil)
    (corfu-mode 1))
  (add-hook 'minibuffer-setup-hook #'corfu-enable-always-in-minibuffer 1)
;;
;;  (:map corfu-map
;;    ("TAB" . corfu-next)
;;    ([tab] . corfu-next)
;;    ("S-TAB" . corfu-previous)
;;    ([backtab] . corfu-previous)
;;    ("C-n" . corfu-next)
;;    ("C-p" . corfu-previous)
;;    ("C-j" . corfu-next)
;;    ("C-k" . corfu-previous)
;;    ("RET" . corfu-complete)
;;    ([escape] . corfu-quit))

;;  :bind (:map corfu-map
;;          ("M-SPC" . corfu-insert-separator)
;;          ("TAB" . corfu-next)
;;          ([tab] . corfu-next)
;;          ("S-TAB" . corfu-previous)
;;          ([backtab] . corfu-previous)
;;          ("C-n" . corfu-next)
;;          ("C-p" . corfu-previous)
;;          ("C-j" . corfu-next)
;;          ("C-k" . corfu-previous)
;;          ("S-<return>" . corfu-insert)
;;          ("RET" . nil))
)

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-keyword)
  ;; kinda confusing re length, WIP/TODO
  ;; :hook (org-mode . (lambda () (add-to-list 'completion-at-point-functions #'cape-dabbrev)))
  ;; :config
  ;; (setq dabbrev-check-other-buffers nil
  ;;       dabbrev-check-all-buffers nil
  ;;       cape-dabbrev-min-length 6)
  )


(use-package kind-icon
  :config
  (setq kind-icon-default-face 'corfu-default)
  (setq kind-icon-default-style '(:padding 0 :stroke 0 :margin 0 :radius 0 :height 0.9 :scale 1))
  (setq kind-icon-blend-frac 0.08)
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter)
  (add-hook 'counsel-load-theme #'(lambda () (interactive) (kind-icon-reset-cache)))
  (add-hook 'load-theme         #'(lambda () (interactive) (kind-icon-reset-cache))))



;;  (use-package corfu
;;      ;; Optional customizations
;;      :custom
;;      (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
;;      (corfu-auto t)                 ;; Enable auto completion
;;      ;; (corfu-separator ?\s)          ;; Orderless field separator
;;      ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
;;      ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
;;      ;; (corfu-preview-current nil)    ;; Disable current candidate preview
;;      ;; (corfu-preselect 'prompt)      ;; Preselect the prompt
;;      ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
;;      ;; (corfu-scroll-margin 5)        ;; Use scroll margin
;;
;;      ;; Enable Corfu only for certain modes.
;;      ;; :hook ((prog-mode . corfu-mode)
;;      ;;        (shell-mode . corfu-mode)
;;      ;;        (eshell-mode . corfu-mode))
;;
;;      ;; Recommended: Enable Corfu globally.
;;      ;; This is recommended since Dabbrev can be used globally (M-/).
;;      ;; See also `corfu-exclude-modes'.
;;      :init
;;      (global-corfu-mode))
;;
;;    ;; A few more useful configurations...
;;    (use-package emacs
;;      :init
;;      ;; TAB cycle if there are only few candidates
;;      (setq completion-cycle-threshold 3)
;;
;;      ;; Emacs 28: Hide commands in M-x which do not apply to the current mode.
;;      ;; Corfu commands are hidden, since they are not supposed to be used via M-x.
;;      ;; (setq read-extended-command-predicate
;;      ;;       #'command-completion-default-include-p)
;;
;;      ;; Enable indentation+completion using the TAB key.
;;      ;; `completion-at-point' is often bound to M-TAB.
;;      (setq tab-always-indent 'complete))
;;
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
;;   ("C-d"                     . dragon-drop);;   :map embark-defun-map
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

;; (use-package cape)
;; (use-package consult)
;; (use-package consult-projectile)
;; (use-package corfu)
;; ;; (use-package embark-consult)
;; (use-package orderless)
;; (use-package vertico)
;;
;; (setq enable-recursive-minibuffers t)
;; (use-package vertico-repeat
;;   :ensure nil
;;   :bind
;;   (:map minibuffer-local-map
;;         ("M-r" . vertico-repeat))
;;
;;   :config
;;   (add-hook 'minibuffer-setup-hook #'vertico-repeat-save)
;;
;;   ;; preserve history across restarts
;;   (add-to-list 'savehist-additional-variables 'vertico-repeat-history)
;;   )
;; (define-key minibuffer-mode-map (kbd "<up>") #'vertico-repeat)
;;  (use-package marginalia)


;; This config for embark is from the Github repo.

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode))

;; (use-package embark
;;   :ensure t

;;   :bind
;;   (("C-." . embark-act)         ;; pick some comfortable binding
;;    ("M-." . embark-dwim)        ;; good alternative: M-.
;;    ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'

;;   :init

;;   ;; Optionally replace the key help with a completing-read interface
;;   (setq prefix-help-command #'embark-prefix-help-command)

;;   ;; Show the Embark target at point via Eldoc.  You may adjust the Eldoc
;;   ;; strategy, if you want to see the documentation from multiple providers.
;;   (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
;;   ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)

;;   :config

;;   ;; Hide the mode line of the Embark live/completions buffers
;;   (add-to-list 'display-buffer-alist
;;                '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
;;                  nil
;;                  (window-parameters (mode-line-format . none)))))

;; ;; Consult users will also want the embark-consult package.
;; (use-package embark-consult
;;   :ensure t ; only need to install it, embark loads it after consult if found
;;   :hook
;;   (embark-collect-mode . consult-preview-at-point-mode))




;;(global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
;;
;;(with-eval-after-load 'company
;;  (define-key company-active-map (kbd "M-/") #'company-complete))
;;
;;(with-eval-after-load 'company
;;  (define-key company-active-map
;;              (kbd "TAB")
;;              #'company-complete-common-or-cycle)
;;  (define-key company-active-map
;;              (kbd "<backtab>")
;;              (lambda ()
;;                (interactive)
;;                (company-complete-common-or-cycle -1))))
;;


;;

;;(use-package company
;;
;;  :init
;;  (setq company-minimum-prefix-length 2
;;        company-dabbrev-minimum-length 3
;;        company-dabbrev-code-time-limit 0.3
;;        company-tooltip-limit 14
;;        company-tooltip-align-annotations t
;;        company-require-match 'never
;;        company-files-exclusions '(".git/" ".DS_Store")
;;        company-global-modes '(not vterm-mode)
;;        company-frontends '(company-pseudo-tooltip-frontend
;;                            ;; always show candidates in overlay tooltip
;;                            company-echo-metadata-frontend)
;;        company-backends '((company-files company-yasnippet company-capf :separate company-dabbrev-code))
;;        company-auto-commit nil
;;        company-dabbrev-other-buffers nil
;;        company-dabbrev-code-other-buffers nil
;;        company-dabbrev-ignore-case t
;;        company-dabbrev-code-ignore-case t
;;        company-dabbrev-downcase nil
;;        company-selection-wrap-around t
;;        completion-ignore-case t)
;;
;;  ;;(my/run-hook-once evil-insert-state-entry-hook global-company-mode)
;;  ;; (my/run-hook-once evil-insert-state-entry-hook company-tng-mode)
;;  (my/setq-on-hook text-mode-hook
;;                   company-backends
;;                   '((company-files company-yasnippet company-capf :separate company-dabbrev)))
;;
;;  :config
;;  ; (add-hook 'company-mode-hook #'evil-normalize-keymaps)
;;  ; (evil-make-overriding-map company-mode-map)
;;  ; (evil-make-overriding-map company-active-map)
;;
;;  (unless (display-graphic-p)
;;    ;; Don't persist company popups when switching back to normal mode.
;;    ;; `company-box' aborts on mode switch so it doesn't need this.
;;    (add-hook 'evil-normal-state-entry-hook #'my/company-abort))
;;
;;  (with-eval-after-load 'company-files
;;    ;; Fix `company-files' completion for org file:* links
;;    (add-to-list 'company-files--regexps "file:\\(\\(?:\\.\\{1,2\\}/\\|~/\\|/\\)[^\]\n]*\\)"))
;;
;;  (when (display-graphic-p)
;;    (add-hook 'company-mode-hook #'company-box-mode))
;;
;;  (general-define-key
;;   :keymaps 'company-active-map
;;   "C-e" #'company-abort
;;   ;; use C-y to enter yasnippet expansion
;;   ;; without input of additional character.
;;   "C-y" #'company-complete-selection)
;;
;;  (general-define-key
;;   :keymaps
;;   'company-mode-map
;;   ;; manually invoke the completion
;;   "M-i" #'company-complete)
;;
;;  (advice-add #'company-capf :around #'my/company-completion-styles)
;;
;;  (yas-global-mode)
;;  )
;;
;;(company +childframe)
;;

;; source https://www.sandeepnambiar.com/my-minimal-emacs-setup/
;; (use-package company
;;   :ensure t
;;   :diminish company-mode
;;   :config
;;   (add-hook 'after-init-hook #'global-company-mode))
;;
;;
;;
;; (global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
;; (with-eval-after-load 'company
;;   (define-key company-active-map (kbd "M-/") #'company-complete))
;;
;;
;; (use-package company-box
;;     :config
;;     (setq company-box-max-candidates 50
;;           company-frontends '(company-tng-frontend company-box-frontend)
;;           company-box-icons-alist 'company-box-icons-all-the-icons))
;;
;; (with-eval-after-load 'company
;;   (define-key company-active-map
;;               (kbd "TAB")
;;               #'company-complete-common-or-cycle)
;;   (define-key company-active-map
;;               (kbd "<backtab>")
;;               (lambda ()
;;                 (interactive)
;;                 (company-complete-common-or-cycle -1))))
;;
;; (with-eval-after-load 'company
;;   (define-key company-active-map (kbd "M-.") #'company-show-location)
;;   (define-key company-active-map (kbd "RET") nil))





(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :config
  (setq lsp-enable-symbol-highlighting nil
        lsp-lens-enable nil
        lsp-headerline-breadcrumb-enable nil
        lsp-modeline-code-actions-enable nil
        lsp-diagnostics-provider :none
        lsp-modeline-diagnostics-enable nil
        lsp-completion-show-detail nil
        lsp-completion-show-kind nil
        lsp-pyright-python-executable-cmd "python3"
        )
  :commands (lsp lsp-deferred))



;; source: https://www.karsdorp.io/posts/dotemacs/
(use-package company
  :config
  (add-hook 'prog-mode-hook 'company-mode)
  (setq company-global-modes '(not text-mode term-mode markdown-mode gfm-mode))
  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-selection-wrap-around t
        company-show-numbers t
        company-tooltip-align-annotations t
        company-idle-delay 0
        company-require-match nil
        company-minimum-prefix-length 2)

  ;; Bind next and previous selection to more intuitive keys

  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (add-to-list 'company-backends #'company-tabnine)
  ;; (add-to-list 'company-frontends 'company-tng-frontend)
  ;; :bind (("TAB" . 'company-indent-or-complete-common)))
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map ("<tab>" . company-complete-selection))
  (:map lsp-mode-map ("<tab>" . company-indent-or-complete-common)))

(use-package company-box
     :hook (company-mode . company-box-mode)
     :config
     (setq company-box-max-candidates 50
           company-frontends '(company-tng-frontend company-box-frontend)
           company-box-icons-alist 'company-box-icons-all-the-icons))

(use-package company-quickhelp
  :ensure t
  :after company
  :config
  (company-quickhelp-mode))

(use-package company-quickhelp-terminal)


(use-package company-tabnine
  :ensure t
  :after company
  :config
  (add-to-list 'company-backends #'company-tabnine))

(use-package company-prescient
  :ensure t
  :after company
  :config
  (company-prescient-mode 1))



; (defun crafted-completion/minibuffer-backward-kill (arg)
;   "Delete word or delete up to parent folder when completion is a file.
;
; ARG is the thing being completed in the minibuffer."
;   (interactive "p")
;   (if minibuffer-completing-file-name
;       ;; Borrowed from https://github.com/raxod502/selectrum/issues/498#issuecomment-803283608
;       (if (string-match-p "/." (minibuffer-contents))
;           (zap-up-to-char (- arg) ?/)
;         (delete-minibuffer-contents))
;     (backward-kill-word arg)))
;
;;; Vertico  config from the github readme.md file for the vertico package.

;; Enable vertico
(use-package vertico
  :init
  (vertico-mode)

  ;; Different scroll margin
  ;; (setq vertico-scroll-margin 0)

  ;; Show more candidates
  (setq vertico-count 20)

  ;; Grow and shrink the Vertico minibuffer
  (setq vertico-resize t)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  (setq vertico-cycle t)
  )

;; Persist history over Emacs restarts. Vertico sorts by history position.
(use-package savehist
  :init
  (savehist-mode))

;; A few more useful configurations...
(use-package emacs
  :init
  ;; Add prompt indicator to `completing-read-multiple'.
  ;; We display [CRM<separator>], e.g., [CRM,] if the separator is a comma.
  (defun crm-indicator (args)
    (cons (format "[CRM%s] %s"
                  (replace-regexp-in-string
                   "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" ""
                   crm-separator)
                  (car args))
          (cdr args)))
  (advice-add #'completing-read-multiple :filter-args #'crm-indicator)

  ;; Do not allow the cursor in the minibuffer prompt
  (setq minibuffer-prompt-properties
        '(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

  ;; Emacs 28: Hide commands in M-x which do not work in the current mode.
  ;; Vertico commands are hidden in normal buffers.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)

  ;; Enable recursive minibuffers
  (setq enable-recursive-minibuffers t))

;; Optionally use the `orderless' completion style.

(use-package orderless
  :init
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (setq orderless-style-dispatchers '(+orderless-consult-dispatch orderless-affix-dispatch)
  ;;       orderless-component-separator #'orderless-escapable-split-on-space)
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))






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

;; (setq completion-in-region-function #'consult-completion-in-region)


;;; Orderless

;; Set up Orderless for better fuzzy matching
;;(require 'orderless)
;; (customize-set-variable 'completion-styles '(orderless basic))
;; (customize-set-variable 'completion-category-overrides '((file (styles . (partial-completion)))))
;;
;; Improve speed and highlighting
;; (setq orderless-skip-highlighting (lambda () selectrum-is-active))

;; Added 14 Feb 2023
;;(setq vertico-prescient-mode t)

;;; Embark
;;(require 'embark)
;;(require 'embark-consult)

;; (use-package embark
;;   :bind
;;   (("C-." . embark-act)
;;    ("H-l" . embark-line)
;;    ("M-." . embark-dwim)
;;    ("C-h B" . embark-bindings))
;;   :init
;;   (setq prefix-help-command #'embark-prefix-help-command))

;; ;;(global-set-key [remap describe-bindings] #'embark-bindings)
;; ;;(global-set-key (kbd "C-.") 'embark-act)

;; (with-eval-after-load 'embark-consult
;;   (add-hook 'embark-collect-mode-hook #'consult-preview-at-point-mode))

;; ;;; Corfu

;; ;; Setup corfu for popup like completion
;; (customize-set-variable 'corfu-cycle t) ; Allows cycling through candidates
;; (customize-set-variable 'corfu-auto t)  ; Enable auto completion
;; (customize-set-variable 'corfu-auto-prefix 2) ; Complete with less prefix keys
;; (customize-set-variable 'corfu-auto-delay 0.0) ; No delay for completion
;; (customize-set-variable 'corfu-echo-documentation 0.25) ; Echo docs for current completion option

;; (global-corfu-mode 1)

;; ;;; Cape

;; ;; Setup Cape for better completion-at-point support and more
;; ;; (require 'cape)

;; (use-package cape)

;; ;; Add useful defaults completion sources from cape
;; (add-to-list 'completion-at-point-functions #'cape-file)
;; (add-to-list 'completion-at-point-functions #'cape-dabbrev)

;; ;; Silence the pcomplete capf, no errors or messages!
;; ;; Important for corfu
;; (advice-add 'pcomplete-completions-at-point :around #'cape-wrap-silent)

;; ;; Ensure that pcomplete does not write to the buffer
;; ;; and behaves as a pure `completion-at-point-function'.
;; (advice-add 'pcomplete-completions-at-point :around #'cape-wrap-purify)
;; (add-hook 'eshell-mode-hook
;;           (lambda () (setq-local corfu-quit-at-boundary t
;;                             corfu-quit-no-match t
;;                             corfu-auto nil)
;;             (corfu-mode)))

;; The above completion framework is missing prescient which lists options based on frequecy of use

;; (use-package prescient)
;; (use-package corfu-prescient)
;; (straight-use-package 'company-prescient)
;; (use-package ivy-prescient) ; I have ivy lurking about in this configuration.
;; (use-package 'selectrum-prescient) vertico has replaced slection
;; (use-package vertico-prescient)


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
;;     append (cond
;;         ((or (stringp item) (and (vectorp item) (stringp (elt item 0))))
;;          (list item))
;;         ((vectorp item)
;;          (loop for item-2 in (or (assoc-default (or (car-safe (elt item 0)) (elt item 0))
;;                             ac-auctex-arg-lookup-table 'equal) '(""))
;;                collect [item-2]))
;;         (t
;;          (or (assoc-default (or (car-safe item) item) ac-auctex-arg-lookup-table) '(""))))))
;;
;; (defun ac-auctex-snippet-arg (n arg)
;;   (let* ((opt (vectorp arg))
;;      (item (if opt (elt arg 0) arg))
;;      (m (if (vectorp arg) (1+ n) n))
;;      (var (format "${%s}" item)))
;;     (list (1+ m)
;;       (if opt
;;           (concat (format "${[") var "]}")
;;         (concat "{" var "}")))))
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
;;              collect (destructuring-bind (n val)
;;                      (ac-auctex-snippet-arg count item)
;;                    (setq count n)
;;                    val)))))
;;
;; (defun ac-auctex-macro-candidates ()
;;    (let ((comlist (if TeX-symbol-list
;;               (mapcar (lambda (item)
;;                     (or (car-safe (car item)) (car item)))
;;                 TeX-symbol-list))))
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
;;     (insert "\\" candidate)
;;     (yas/expand-snippet (ac-auctex-macro-snippet (assoc-default candidate TeX-symbol-list))))
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
;;              LaTeX-environment-list)))
;;     (all-completions ac-prefix envlist)))
;;
;; (defun ac-auctex-environment-action ()
;;   (re-search-backward candidate)
;;   (delete-region (1- (match-beginning 0)) (match-end 0))
;;   (let ((candidate (substring candidate (length ac-auctex-environment-prefix))))
;;     (yas/expand-snippet (format "\\begin{%s}%s\n$0\n\\end{%s}"
;;                 candidate
;;                 (ac-auctex-macro-snippet (assoc-default candidate LaTeX-environment-list))
;;                 candidate))))
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
;;                "\\(?:"
;;                  "\\[[^]]*\\]"
;;                "\\)?"
;;                "{\\([^},]*\\)"
;;                "\\="))))
;;
;; ;;;#### Setup
;;
;; (defun ac-auctex-setup ()
;;   (setq ac-sources (append
;;                       '(ac-source-auctex-symbols
;;                         ac-source-auctex-macros
;;             ac-source-auctex-environments
;;             ac-source-auctex-labels
;;             ac-source-auctex-bibs)
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
(atomic-chrome-start-server)
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
; frame: Create a new frame and window in it. Must be using some windowing package.
(setq atomic-chrome-buffer-open-style 'split)


;;*** AUCTeX config
(eval-after-load "tex"
  '(setcdr (assoc "LaTeX" TeX-command-list)
          '("%`%l%(mode) -shell-escape%' %t"
          TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX")
    )
  )

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-.") #'company-show-location)
  (define-key company-active-map (kbd "RET") nil))









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
;;      ;; Borrowed from https://github.com/raxod502/selectrum/issues/498#issue-comment-803283608
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


(use-package auto-yasnippet)

(global-set-key (kbd "C-c C-y w")   #'aya-create)
(global-set-key (kbd "C-c C-y TAB") #'aya-expand)
(global-set-key (kbd "C-c C-y SPC") #'aya-expand-from-history)
(global-set-key (kbd "C-c C-y d")   #'aya-delete-from-history)
(global-set-key (kbd "C-c C-y c")   #'aya-clear-history)
(global-set-key (kbd "C-c C-y n")   #'aya-next-in-history)
(global-set-key (kbd "C-c C-y p")   #'aya-previous-in-history)
(global-set-key (kbd "C-c C-y s")   #'aya-persist-snippet)
(global-set-key (kbd "C-c C-y o")   #'aya-open-line)

;; ==> adjust here
;; *** awesome-tabs
;; I love awesome-tabs; some people do not.
;; cd ~/latex-tree-emacs30/manual-packages
;; git clone --depth=1 https://github.com/manateelazycat/awesome-tab.git
(use-package awesome-tab
  :load-path "~/emacs30/manual-packages/awesome-tab"
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
;
;
;
; ;;*** beframe
; ;; source: https://protesilaos.com/emacs/beframe#h:813b78cc-83e8-4d75-b7a9-6722ffd905cd
; (use-package beframe)
;
; ;; This is the default value.  Write here the names of buffers that
; ;; should not be beframed.
; (setq beframe-global-buffers '("*scratch*" "*Messages*" "*Backtrace*" "*Bookmark List*"))
;
; (beframe-mode 1)
;
; ;; This is just an example.  We do not define any key bindings.  You
; ;; do not need this command if you enable `beframe-mode', as
; ;; `switch-to-buffer' only shows a list of beframed buffers.
; (define-key global-map (kbd "C-x B") #'beframe-switch-buffer)
;
; ;; Replace the generic `buffer-menu'.  With a prefix argument, this
; ;; commands prompts for a frame.  Call the `buffer-menu' via M-x if
; ;; you absolutely need the global list of buffers.
; (define-key global-map (kbd "C-x C-b") #'beframe-buffer-menu)
;
; ;; Integrate beframe with consult
; (defvar consult-buffer-sources)
; (declare-function consult--buffer-state "consult")
;
; (with-eval-after-load 'consult
;   (defface beframe-buffer
;     '((t :inherit font-lock-string-face))
;     "Face for `consult' framed buffers.")
;
;   (defvar beframe-consult-source
;     `( :name     "Frame-specific buffers (current frame)"
;        :narrow   ?F
;        :category buffer
;        :face     beframe-buffer
;        :history  beframe-history
;        :items    ,#'beframe-buffer-names
;        :action   ,#'switch-to-buffer
;        :state    ,#'consult--buffer-state))
;
;   (add-to-list 'consult-buffer-sources 'beframe-consult-source))
;
;
;
;
;
; ;;### bibtex-mode related
; ;; Fetch bibtex for the given DOI. Insert at point, which should be in your global.bib file.
; ;; Needs code to reformat the bibtex key.
; ;;
; ;; https://www.anghyflawn.net/blog/2014/emacs-give-a-doi-get-a-bibtex-entry/
;
; (defun get-bibtex-from-doi (doi)
;  "Get a BibTeX entry from the DOI"
;  (interactive "MDOI: ")
;  (let ((url-mime-accept-string "text/bibliography;style=bibtex"))
;    (with-current-buffer
;      (url-retrieve-synchronously
;        (format "http://dx.doi.org/%s"
;            (replace-regexp-in-string "http://dx.doi.org/" "" doi)))
;      (switch-to-buffer (current-buffer))
;      (goto-char (point-max))
;      (setq bibtex-entry
;            (buffer-substring
;               (string-match "@" (buffer-string))
;               (point)))
;      (kill-buffer (current-buffer))))
;  (insert (decode-coding-string bibtex-entry 'utf-8))
;  (define-key bibtex-mode-map (kbd "C-c C-b") 'get-bibtex-from-doi)
;  (bibtex-fill-entry))
; ;; I want run the above function to define it upon entry into a Bibtex file.
; (add-hook
;    'bibtex-mode-hook
;    (lambda ()
;        (get-bibtex-from-doi nil)))
;
; ;; Hook to add imenu to menubar in bibtex mode
; ;; http://www.jonathanleroux.org/bibtex-mode.html
; (add-hook
;   'bibtex-mode-hook
;   (lambda ()
;     (imenu-add-to-menubar "Imenu")))
;
; ;; Fetch bibtex information from DOI.
; ;; Source https://chainsawriot.com/postmannheim/2022/12/13/aoe13.html
; ;; Copy the DOI from Firefox (or any source)
; ;; 1. Go back to emacs (By C . e)
; ;; 2. Run the custom command: M-x add-doi and paste yank the DOI (C-y)
; ;; 3. Auto: Fetch the BIBTEX
; ;; 4. from Crossref
; ;; 5. Auto: Add it into “~/dev/dotfiles/bib.bib”
; ;; 6. Save it
; (defun add-doi ()
;   (interactive)
;   (progn
;     (setq doi-to-query (read-string "DOI "))
;     (find-file "~/Documents/global.bib")
;     (end-of-buffer)
;     (doi-insert-bibtex doi-to-query)
;     )
;   )
;
; ;; *** biblio
; (use-package biblio
;   :config
;   (setq-default
;    biblio-bibtex-use-autokey t
;    bibtex-autokey-name-year-separator ""
;    bibtex-autokey-year-title-separator ""
;    bibtex-autokey-year-length 4
;    bibtex-autokey-titlewords 7
;    bibtex-autokey-titleword-length -1 ;; -1 means exactly one
;    bibtex-autokey-titlewords-stretch 0
;    bibtex-autokey-titleword-separator ""
;    bibtex-autokey-titleword-case-convert 'upcase)
;   )
;
;
;
; ;;*** bookmarks+
;(use-package quelpa)
; (use-package quelpa-use-package)
;
;
; ;; load bookmark+-mac.el and then bytecompile the rest
; ;; (use-package bookmark+
; ;;                  :quelpa (bookmark+ :fetcher wiki
; ;;                                     :files
; ;;                                     ("bookmark+.el"
; ;;                                      "bookmark+-mac.el"
; ;;                                      "bookmark+-bmu.el"
; ;;                                      "bookmark+-1.el"
; ;;                                      "bookmark+-key.el"
; ;;                                      "bookmark+-lit.el"
; ;;                                      "bookmark+-doc.el"
; ;;                                      "bookmark+-chg.el"))
; ;;                  :defer 2)
; ;;
;
; ;;*** Bookmarks+
; ;; Drew Adams package that runs on top of the built-in bookmark package.
; ;; Inside your emacs directory, create manual-packages/bookmark-plus.
; ;; Uncomment this code, paste into the scratch buffer, run once to install the package, and comment the code again
; ;;
; ;;(let ((bookmarkplus-dir "~/latex-tree-emacs30/manual-packages/bookmark-plus/")
; ;;      (emacswiki-base "https://www.emacswiki.org/emacs/download/")
; ;;      (bookmark-files '("bookmark+.el" "bookmark+-mac.el" "bookmark+-bmu.el" "bookmark+-key.el" "bookmark+-lit.el" "bookmark+-1.el")))
; ;;  (require 'url)
; ;;  (add-to-list 'load-path bookmarkplus-dir)
; ;;  (make-directory bookmarkplus-dir t)
; ;;  (mapcar (lambda (arg)
; ;;            (let ((local-file (concat bookmarkplus-dir arg)))
; ;;              (unless (file-exists-p local-file)
; ;;                (url-copy-file (concat emacswiki-base arg) local-file t))))
; ;;            bookmark-files)
; ;;  (byte-recompile-directory bookmarkplus-dir 0))
;
; ;; ==> adjust here
; (use-package bookmark+
;     :load-path "manual-packages/bookmark-plus/")
;
; (defadvice bookmark-jump (after bookmark-jump activate)
;   (let ((latest (bookmark-get-bookmark bookmark)))
;     (setq bookmark-alist (delq latest bookmark-alist))
;     (add-to-list 'bookmark-alist latest)))


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
(defun clay/start ()
  (interactive)
  (cider-interactive-eval "
    (require '[scicloj.clay.v2.api])
    (scicloj.clay.v2.api/start!)")
  t)

(defun clay/show-namespace ()
  (interactive)
  (clay/start)
  (save-buffer)
  (let
      ((filename
        (buffer-file-name)))
    (when filename
      (cider-interactive-eval
       (concat "(scicloj.clay.v2.api/show-namespace! \"" filename "\" {})")))))

(defun clay/show-namespace-and-write-html ()
  (interactive)
  (clay/start)
  (save-buffer)
  (let
      ((filename
        (buffer-file-name)))
    (when filename
      (cider-interactive-eval
       (concat "(scicloj.clay.v2.api/show-namespace-and-write-html! \"" filename "\" {:toc? true})")))))

(defun clay/generate-and-show-namespace-quarto ()
  (interactive)
  (clay/start)
  (save-buffer)
  (let
      ((filename
        (buffer-file-name)))
    (when filename
      (cider-interactive-eval
       (concat "(scicloj.clay.v2.api/generate-and-show-namespace-quarto! \"" filename "\" {})")))))

(defun clay/cider-interactive-notify-and-eval (code)
  (cider-interactive-eval
   code
   (cider-interactive-eval-handler nil (point))
   nil
   nil))

(defun clay/send (code)
  (clay/start)
  (clay/cider-interactive-notify-and-eval
   (concat "(scicloj.clay.v2.api/handle-form! (quote " code "))")))

(defun clay/send-last-sexp ()
  (interactive)
  (clay/start)
  (clay/send (cider-last-sexp)))

(defun clay/send-defun-at-point ()
  (interactive)
  (clay/start)
  (clay/send (thing-at-point 'defun)))



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

;;***clomacs
;; source: https://github.com/clojure-emacs/clomacs
;; (use-package clomacs)


;;*** code-cells
;; Source: https://github.com/astoff/code-cells.el?tab=readme-ov-file
(use-package code-cells)

(with-eval-after-load 'code-cells
  (let ((map code-cells-mode-map))
    (define-key map (kbd "M-p") 'code-cells-backward-cell)
    (define-key map (kbd "M-n") 'code-cells-forward-cell)
    (define-key map (kbd "C-c C-c") 'code-cells-eval)
    ;; Overriding other minor mode bindings requires some insistence...
    (define-key map [remap jupyter-eval-line-or-region] 'code-cells-eval)))



;;*** copilot

(use-package quelpa)
(use-package quelpa-use-package)
; (use-package copilot
;   :quelpa (copilot :fetcher github
;                    :repo "zerolfx/copilot.el"
;                    :branch "main"
;                    :files ("dist" "*.el")))
; ;; you can utilize :map :hook and :config to customize copilot
;
; (add-hook 'prog-mode-hook 'copilot-mode)
;
; (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
; (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)



; ; ;; (use-package copilot
; ; ;;     :init
; ; ;;     (my/toggle-map
; ; ;;         :keymaps 'override
; ; ;;         :states '(normal insert motion)
; ; ;;         "g" #'copilot-mode)
; ; ;;
; ; ;;     :config
; ; ;;     (general-define-key
; ; ;;      :states '(insert)
; ; ;;      :keymaps 'copilot-mode-map
; ; ;;      "M-y" #'copilot-accept-completion-by-line
; ; ;;      "M-Y" #'copilot-accept-completion
; ; ;;      "M-J" #'copilot-next-completion
; ; ;;      "M-K" #'copilot-previous-completion
; ; ;;      "M->" #'copilot-next-completion
; ; ;;      "M-<" #'copilot-previous-completion))
; ;
; ;
; ; ;;;
; ; ;;; (use-package copilot
; ; ;;;   :quelpa (copilot :fetcher github
; ; ;;;                    :repo "zerolfx/copilot.el"
; ; ;;;                    :branch "main"
; ; ;;;                    :files ("dist" "*.el"))
; ; ;;;   :bind (:map copilot-mode-map
; ; ;;;               ("<tab>" . my/copilot-tab)
; ; ;;;               ("s-n" . copilot-next-completion)
; ; ;;;               ("s-p" . copilot-previous-completion)
; ; ;;;               ("s-w" . copilot-accept-completion-by-word)
; ; ;;;               ("s-l" . copilot-accept-completion-by-line))
; ; ;;;   :config
; ; ;;;   (defun my/copilot-tab ()
; ; ;;;     (interactive)
; ; ;;;     (or (copilot-accept-completion)
; ; ;;;         (indent-for-tab-command)))
; ; ;;;   :hook
; ; ;;;   (prog-mode . copilot-mode))
; ;
; ;
; ;
; ;
; ; ;; If you do not want to use tab for completion, you can use the following code to disable it:
; ; ;; https://github.com/milanglacier/dotemacs/blob/5bce7519d2ffb33371705bbe0bcfbbef1033c8ea/lisp/my-init-langtools.el#L180
; ; ;; (use-package copilot
; ; ;;     :init
; ; ;;     (my/toggle-map
; ; ;;         :keymaps 'override
; ; ;;         :states '(normal insert motion)
; ; ;;         "g" #'copilot-mode)
; ;
; ; ;;     :config
; ; ;;     (general-define-key
; ; ;;      :states '(insert)
; ; ;;      :keymaps 'copilot-mode-map
; ; ;;      "M-y" #'copilot-accept-completion-by-line
; ; ;;      "M-Y" #'copilot-accept-completion
; ; ;;      "M-J" #'copilot-next-completion
; ; ;;      "M-K" #'copilot-previous-completion
; ; ;;      "M->" #'copilot-next-completion
; ; ;;      "M-<" #'copilot-previous-completion))
; ;
; ;
; ;
; ;
; ;
; ;
; ;
; ;
; ; ;; copilot-diagnose
; ; ;; Check the current status of the plugin. Also you can check logs in the *copilot events* buffer and stderr output in the *copilot stderr* buffer.
; ;
; ; ;; copilot-login
; ; ;; Login to GitHub, required for using the plugin.
; ; ;; copilot-mode
; ;
; ; ;; Enable/disable copilot mode.
; ; ;; copilot-complete
; ;
; ; ;; Try to complete at the current point.
; ; ;; copilot-accept-completion
; ;
; ; ;; Accept the current completion.
; ; ;; copilot-clear-overlay
; ;
; ; ;; Clear copilot overlay in the current buffer.
; ; ;; copilot-accept-completion-by-line / copilot-accept-completion-by-word
; ;
; ; ;; Similar to copilot-accept-completion, but accept the completion by line or word. You can use prefix argument to specify the number of lines or words to accept.
; ; ;; copilot-next-completion / copilot-previous-completion
; ;
; ; ;; Cycle through the completion list.
; ; ;; copilot-logout
; ;
; ; ;; Logout from GitHub.
; ;
; ;
; ; ;; (use-package openai
; ; ;;     :load-path "manual-packages/openai/")
; ; ;;
; ; ;;
; ; ;; ;;***codegpt
; ; ;; ;; https://github.com/emacs-openai/codegpt
; ; ;; ;;Commad     Description
; ; ;; ;;codegpt     The master command
; ; ;; ;;codegpt-custom     Write your own instruction
; ; ;; ;;codegpt-doc     Automatically write documentation for your code
; ; ;; ;;codegpt-fix     Find problems with it
; ; ;; ;;codegpt-explain     Explain the selected code
; ; ;; ;;codegpt-improve     Improve, refactor or optimize it
; ; ;; (use-package codegpt
; ; ;;   :load-path "manual-packages/codegpt/"
; ; ;;   :after openai)
; ; ;;
; ; ;; ;; https://github.com/junjizhi/aide.el
; ; ;; (use-package aide
; ; ;;     :load-path "manual-packages/aide/")
; ; ;; (setq aide-max-tokens 200)
; ;
; ; ;; if you change the text, you should also change the cursor_offset
; ; ;; warning: this is measured by UTF-8 encoded bytes
; ;
; ;
; ;
;;;;
;
;;
;;
;; (use-package company-box
;;   :hook (company-mode . company-box-mode))




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



;;*** company-tabnine configuration
;; (use-package company-tabnine :ensure t)
;; (add-to-list 'company-backends #'company-tabnine)
;; ;; Trigger completion immediately.
;; (setq -idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
;; (setq -show-numbers t)


;;*** conda

(use-package conda)

(custom-set-variables
 '(conda-anaconda-home "/Users/blaine/opt/anaconda3"))



;;   :bind
;;   ;; Define some convenient keybindings as an addition
;;   ("C-c n e" . consult-org-roam-file-find)
;;   ("C-c n b" . consult-org-roam-backlinks)
;;   ("C-c n l" . consult-org-roam-forward-links)
;;   ("C-c n r" . consult-org-roam-search))


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
(setq dashboard-items '((hackernews . 10)))

(dashboard-refresh-buffer)


;;*** Dired related
(use-package dired-subtree
  :after dired
  :config
  (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
  (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))

(add-hook 'dired-initial-position-hook #'hydra-dired/body)

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


;;*** discover--context-menu-mappings

(discover-add-context-menu
 :context-menu '(isearch
              (description "Isearch, occur and highlighting")
              (lisp-switches
               ("-cf" "Case should fold search" case-fold-search t nil))
              (lisp-arguments
               ("=l" "context lines to show (occur)"
                "list-matching-lines-default-context-lines"
                (lambda (dummy) (interactive) (read-number "Number of context lines to show: "))))
              (actions
               ("Isearch"
                ("_" "isearch forward symbol" isearch-forward-symbol)
                ("w" "isearch forward word" isearch-forward-word))
               ("Occur"
                ("o" "occur" occur))
               ("More"
                ("h" "highlighters ..." makey-key-mode-popup-isearch-highlight))))
 :bind "M-s")


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


;; *** edwina
;; https://github.com/ajgrf/edwina
;;

;; (use-package edwina
;;   :config
;;   (setq display-buffer-base-action '(display-buffer-below-selected))
;;   (edwina-setup-dwm-keys)
;;   (edwina-modec1 1))

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


;; *** eglot lsp server
;; Soruce https://clangd.llvm.org/installation.html
;; https://emacs-lsp.github.io/lsp-mode/tutorials/CPP-guide/


(use-package eglot)

;; C++ setup
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-to-list 'eglot-server-programs '((python-mode) "pls"))
(add-to-list 'eglot-server-programs '((latex-mode) "digestif"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

;; from https://whatacold.io/blog/2022-01-22-emacs-eglot-lsp/
;; (global--mode)
(setq eldoc-echo-area-use-multiline-p nil)

;;(define-key eglot-mode-map (kbd "C-c <tab>") \#'-complete) ; initiate
;;(define-key eglot-mode-map (kbd "C-c e $f n^{\prime \prime}$ ) \#'flymake-goto-next-error)
;;(define-key eglot-mode-map (kbd "C-c e f p") \#'flymake-goto-prev-error)
;;(define-key eglot-mode-map (kbd "C-c e $r^{\prime \prime}$ ) \#'eglot-rename)

;; *** Electric-pair mode. Add matching pairs of quotes and parentheses.
(electric-pair-mode)

;; *** electric-spacing
;; An emacs minor-mode to automatically add spacing around [[https://github.com/xwl/electric-spacing][operators] in math expressions.].
;; Backspace over the whitespaces to remove them when none are permitted.
;; git clone https://github.com/walmes/electric-spacing.git into ~/latex-tree-emacs30/manual-packages
;; byte-compile with (byte-compile-file "~/latex-tree-emacs30/manual-packages/electric-spacing/electric-spacing.el")
;; byte-compile with (byte-compile-file "~/latex-tree-emacs30/manual-packages/electric-spacing/electric-spacing-r.el")
;; ==> adjust here
(add-to-list 'load-path "~/emacs30/manual-packages/electric-spacing")
(use-package electric-spacing)
(use-package electric-spacing-r)
(add-hook 'ess-mode-hook #'electric-spacing-mode)
;; restrict to limited number of modes to keep it out of the minibuffer
(defvar my-electic-pair-modes '(python-mode julia-mode org-mode latex-mode))
(defun my-inhibit-electric-pair-mode (char)
  (not (member major-mode my-electic-pair-modes)))
(setq electric-pair-inhibit-predicate #'my-inhibit-electric-pair-mode)



; ;; ==> adjust here
(use-package elfeed)
(setq elfeed-curl-program-name "/opt/local/bin/curl")
(setq elfeed-search-title-max-width 140)

;; List the feeds in an org file here:
(use-package elfeed-org)
(setq rmh-elfeed-org-files (list "~/emacs30/elfeed.org"))
(elfeed-org)

;; Emacs-eat: fast terminal
;; source https://codeberg.org/akib/emacs-eat
;; Talk at emacsconf23: 

;;(use-package emacs-eat
;;  :load-path "~/emacs30/manual-packages/emacs-eat")

; (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
;
; (use-package eat
;   :pin nongnu
;   :custom
;   (eat-kill-buffer-on-exit t)
;   :config
;   (delete [?\C-u] eat-semi-char-non-bound-keys) ; make C-u work in Eat terminals like in normal terminals
;   (delete [?\C-g] eat-semi-char-non-bound-keys) ; ditto for C-g
;   (eat-update-semi-char-mode-map)
;   ;; XXX: Awkward workaround for the need to call eat-reload after changing Eat's keymaps,
;   ;; but reloading from :config section causes infinite recursion because :config wraps with-eval-after-load.
;   (defvar eat--prevent-use-package-config-recursion nil)
;   (unless eat--prevent-use-package-config-recursion
;     (setq eat--prevent-use-package-config-recursion t)
;     (eat-reload))
;   (makunbound 'eat--prevent-use-package-config-recursion)
;   )



;; For `eat-eshell-mode'.
(add-hook 'eshell-load-hook #'eat-eshell-mode)

;; For `eat-eshell-visual-command-mode'.
(add-hook 'eshell-load-hook #'eat-eshell-visual-command-mode)


;; Keep commented out unless it is an emergency
;;  (setq elfeed-feeds '("https://planet.emacslife.com/atom.xml"
;;     "http://feeds.nature.com/nchem/rss/current"
;;     "http://feeds.nature.com/nature/rss/current"
;;     "https://onlinelibrary.wiley.com/feed/1469896x/most-recent"
;;     "https://www.science.org/action/showFeed?type=axatoc&feed=rss&jc=science"
;;     "https://journals.iucr.org/j/rss10.xml"
;;     "https://journals.iucr.org/s/rss10.xml"
;;     "https://journals.iucr.org/m/rss10.xml"
;;     "https://journals.iucr.org/a/rss10.xml"
;;     "https://journals.iucr.org/d/rss10.xml"
;;     "http://feeds.feedburner.com/acs/chreay"
;;     "https://rss.sciencedirect.com/publication/science/10933263"
;;     "http://feeds.feedburner.com/acs/jcisd8"
;;     "https://www.pnas.org/about/rss"
;;     "http://feeds.feedburner.com/acs/cgdefu"
;;     "https://pubs.acs.org/page/follow.html?widget=follow-pane-rss"
;;     "https://rss.sciencedirect.com/publication/science/00222836"
;;     "https://academic.oup.com/rss/site_5127/3091.xml"
;;     "http://www.cell.com/cell/current.rss"
;;     "http://www.cell.com/cell/inpress.rss"
;;     "https://www.jstatsoft.org/gateway/plugin/WebFeedGatewayPlugin/atom"
;;     "https://rss.sciencedirect.com/publication/science/09692126"
;;     "https://onlinelibrary.wiley.com/feed/10970282/most-recent"
;;     "http://connect.biorxiv.org/biorxiv_xml.php?subject=biophysics+biochemistry+cancer"
;;     )
;;  )


;;      ;; The following config is from Chris Cundy (https://cundy.me/post/elfeed/)
;;      (defun concatenate-authors (authors-list)
;;        "Given AUTHORS-LIST, list of plists; return string of all authors
;;      concatenated."
;;        (mapconcat
;;         (lambda (author) (plist-get author :name))
;;         authors-list ", "))
;;      
;;      (defun my-search-print-fn (entry)
;;        "Print ENTRY to the buffer."
;;        (let* ((date (elfeed-search-format-date (elfeed-entry-date entry)))
;;           (title (or (elfeed-meta entry :title)
;;                  (elfeed-entry-title entry) ""))
;;           (title-faces (elfeed-search--faces (elfeed-entry-tags entry)))
;;           (feed (elfeed-entry-feed entry))
;;           (feed-title
;;            (when feed
;;              (or (elfeed-meta feed :title) (elfeed-feed-title feed))))
;;           (entry-authors (concatenate-authors
;;                   (elfeed-meta entry :authors)))
;;           (tags (mapcar #'symbol-name (elfeed-entry-tags entry)))
;;           (tags-str (mapconcat
;;                  (lambda (s) (propertize s 'face
;;                              'elfeed-search-tag-face))
;;                  tags ","))
;;           (title-width (- (window-width) 10
;;                   elfeed-search-trailing-width))
;;           (title-column (elfeed-format-column
;;                  title (elfeed-clamp
;;                         elfeed-search-title-min-width
;;                         title-width
;;                         elfeed-search-title-max-width)
;;                  :left))
;;           (authors-width 60)
;;           (authors-column (elfeed-format-column
;;                  entry-authors (elfeed-clamp
;;                         elfeed-search-title-min-width
;;                         authors-width
;;                         61)
;;                  :left)))
;;      
;;          (insert (propertize date 'face 'elfeed-search-date-face) " ")
;;      
;;          (insert (propertize title-column
;;                  'face title-faces 'kbd-help title) " ")
;;      
;;          (insert (propertize authors-column
;;                  'face 'elfeed-search-date-face
;;                  'kbd-help entry-authors) " ")
;;      
;;          ;; (when feed-title
;;          ;;   (insert (propertize entry-authors
;;          ;; 'face 'elfeed-search-feed-face) " "))
;;      
;;          (when entry-authors
;;            (insert (propertize feed-title
;;                    'face 'elfeed-search-feed-face) " "))
;;      
;;          ;; (when tags
;;          ;;   (insert "(" tags-str ")"))
;;      
;;          )
;;        )
;;      (setq elfeed-search-print-entry-function #'my-search-print-fn)
;;      ;; End of C. Cundy's funciton



;; Runs the elfeed command. Enter elfeed-update to update.
(global-set-key (kbd "C-x w") 'elfeed)


;;        (use-package elfeed-dashboard
;;          :load-path "~/emacs30/manual-packages/elfeed-dashboard/"
;;          :config
;;          (setq elfeed-dashboard-file "~/emacs30/manual-packages/elfeed-dashboard/elfeed-dashboard.org")
;;          ;; update feed counts on elfeed-quit
;;          (advice-add 'elfeed-search-quit-window :after #'elfeed-dashboard-update-links))
;;        
;;        (use-package  elfeed-score)
;;        (elfeed-score-enable)
;;        (define-key elfeed-search-mode-map "=" elfeed-score-map)
;;

;; update every two hours
(run-at-time nil (* 2 60 60) #'elfeed-update)


; ;;*** ement
; ;; https://github.com/alphapapa/ement.el#bindings
; (use-package ement)
;
;
;
;
; ;;*** Emojis
; (use-package emojify
;   :init
;   (add-hook 'after-init-hook #'global-emojify-mode))
;   (bind-key "<C-m> r" 'Region___/body)
;
;
; engine-mode
; source https://readingworldmagazine.com/emacs/2020-03-20-emacs-selection-region-mark-browsers/

;
;    (transient-mark-mode 1)
;    (make-variable-buffer-local 'transient-mark-mode)
;    (put 'transient-mark-mode 'permanent-local t)
;    (setq-default transient-mark-mode t)
;
;    ;enables C-u C-<SPC>, to return to last mark, followed by C-<SPC> to cycle through all marks set
;    (setq set-mark-command-repeat-pop t)
;
;    ;autofill-mode
;    (bind-key "C-c q" 'auto-fill-mode)
;
;    ;unfill paragraph
;    (defun unfill-paragraph (&optional region)
;    "Takes a multi-line paragraph and makes it into a single line of text."
;    (interactive (progn (barf-if-buffer-read-only) '(t)))
;    (let ((fill-column (point-max))
;          ;; This would override `fill-column' if it's an integer.
;          (emacs-lisp-docstring-fill-column t))
;      (fill-paragraph nil region)))
;
;    ;useful packages
;    (use-package expand-region
;    :after hydra
;    :config
;    (require 'expand-region)
;    (use-package change-inner
;    :config
;    (require 'change-inner));end change inner
;    (defun ejmr-mark-line ()
;        "Mark the current line."
;        (interactive)
;        (end-of-line)
;        (set-mark (point))
;        (beginning-of-line))
;    );end use-package expand-region
;
;    (defvar region-title (with-faicon "book" "Marking The Region"))
;    ;generate hydra
;    (pretty-hydra-define Region___ ( :title region-title :quit-key "q" :color Pink )
;    (   "A"
;       (
;        ("r" er/expand-region "Expand Region" )
;        ("j" er/contract-region "Contract Region" )
;        ("i" change-inner "Mark Inside Brackets/Quotes" :color blue)
;        ("l" ejmr-mark-line "Mark The Line" :color blue )
;        ("t" er/mark-inside-pairs "Mark Inside Pairs" :color blue )
;        ("u" er/mark-url "Mark Url" :color blue)
;        ("w" er/mark-word "Mark Word" :color blue)
;    ;    ("e" academic-phrases "Insert Academic Phrase (content ideas)" )
;    ;    ("i" academic-phrases-by-section "Insert Academic Phrase (section ideas)" )
;    ;    ("g" writegood-mode "Write Good Mode" :toggle t )
;
;    );end theme
;    "B"
;    (
;        ("p" er/mark-paragraph "Mark Paragraph" )
;        (";" er/mark-comment "Mark Comment")
;        ("R" rectangle-mark-mode "Mark Rectangle")
;        ("k" copy-rectangle-as-kill "Copy Rectangle" )
;        ("Y" yank-rectangle "Paste Rectangle" )
;        ("d" delete-rectangle "Delete Rectangle" )
;        ("c"  sp-change-inner "Change Enclosed" :color blue )
;
;
;    );end highlighting
;    "C"
;    (
;
;        ("s" er/mark-sentence "Mark Sentence" :color blue)
;        ("y" helm-show-kill-ring "Helm Kill Ring")
;    ;    ("n" clear-kill-ring "Clear Clip Board")
;    ;    ("t" toggle--idle-delay "Toggle Company Dropdown")
;    ;    ("l" query-replace-regexp "Find and Replace Text" :color blue)
;    ;    ("o" Org-Central/body "Visit Org Central" :color blue)
;    ;    ("E" Org-Editor/body "Org Editing Manager" :color blue)
;    ;    ("#" count-words "Count Words")
;        ("h" hydra-helm/body "Return To Helm" :color blue )
;        ("<SPC>" nil "Quit" :color blue)
;    ;    ("m" visual-fill-column-mode "Wrap Line Column"  :toggle t)
;    ;    ("i" highlight-indent-guides-mode  "Show Indent Guides" :toggle t )
;    ;    ("g" fci-mode "Show Fill Column" :toggle t )
;    );end miscellaneous
;    );end hydra body
;    );end pretty-hydra-appearance




;;(setq browse-url-browser-function 'browse-url-default-browser)
;;(setq browse-url-firefox-program firefox-p)
;;(setq auto-window-vscroll nil)
;;
;;;browse-url in this shortcut or hyrda
;;(bind-key "C-c C-o" 'browse-url)
;;
;;;use package engine-mode
;;(use-package engine-mode
;;:after hydra
;;:commands Browse-Web/body
;;:config
;;;(engine-mode t)
;;;engine mode configuration
;;
;;(defengine duckduckgo
;;"https://duckduckgo.com/?q=%s"
;;;:keybinding "d"
;;)
;;
;;(defengine github
;;"https://github.com/search?ref=simplesearch&q=%s"
;;;:keybinding "h"
;;)
;;
;;(defengine google
;;"http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
;;;:keybinding "g"
;;)
;;
;;(defengine google-images
;;"http://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s"
;;;:keybinding "i"
;;)
;;
;;(defengine google-maps
;;"http://maps.google.com/maps?q=%s"
;;:docstring "Mappin' it up."
;;;:keybinding "m"
;;)
;;
;;(defengine stack-overflow
;;"https://stackoverflow.com/search?q=%s"
;;;:keybinding "q"
;;)
;;
;;(defengine wikipedia
;;"http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
;;;:keybinding "w"
;;:docstring "Searchin' the wikis.")
;;
;;(defengine youtube
;;"http://www.youtube.com/results?aq=f&oq=&search_query=%s"
;;;:keybinding "y"
;;);youtube
;;
;;(defengine visual-hunt
;;"https://visualhunt.com/search/instant/?q=%s"
;;:docstring "Searchin' Visual Hunt For Images."
;;);end visualhunt
;;
;;(defengine pxhere
;;"https://pxhere.com/en/photos?q=%s"
;;:docstring "Searchin' pxhere For Images."
;;);end pxhere
;;
;;;custom function print buffer in browser.
;;(defun print-buffer-to-browser ()
;;  (interactive)
;;  (browse-url-of-buffer (htmlize-buffer)))
;;
;;;custom function print region to browser
;;(defun print-region-to-browser ()
;;(interactive)
;;(if (use-region-p)
;;        (setq beg (region-beginning)
;;              end (region-end)))
;;(browse-url-of-buffer (htmlize-region beg end)))
;;
;;:config
;;;generate title for hydra
;;(defvar browser-title (with-octicon "globe" "USE BROWSER"))
;;:bind
;;("<C-m> b" . Browse-Web_/body)
;;
;;:pretty-hydra
;;(Browse-Web_ (:color blue :quit-key "q" :title browser-title)
;;(
;;          "Search Engines"
;;          (("d" engine/search-duckduckgo         "Duckduckgo")
;;           ("g" engine/search-google                 "Google")
;;           ("i" engine/search-google-images   "Google-images")
;;           ("m" engine/search-google-maps       "Google-maps")
;;           ("v" engine/search-visual-hunt       "Visual Hunt")
;;           ("3" engine/search-pxhere                 "PXHERE")
;;           ("e" helm-google-suggest   "Google Suggest in Helm")
;;);end search
;;
;;          "Other"
;;          (("w" engine/search-wikipedia "Wikipedia")
;;           ("b" engine/search-github          "Github")
;;           ("s" engine/search-stack-overflow   "Stack Over Flow")
;;           ("y" engine/search-youtube      "Youtube")
;;           ("x" xah-open-in-external-app "Open File in default file program")
;;;          ("c" engine/search-soundcloud "Search Sound Cloud" )
;;);end other
;;
;;          "Send Local Files To Browser"
;;          (("u" browse-url "Browse URL At Point")
;;           ("P" print-buffer-to-browser   "Print Buffer To Browser")
;;           ("p" print-region-to-browser   "Print Region To Browser")
;;           ("e" browse-url-of-buffer   "Render Buffer With Browser")
;;           ("h" hydra-helm/body "Return To Helm" :color blue )
;;           ("<SPC>" nil "QUIT" :color blue ));end local
;;);end heads
;;);end browse-web hydra
;;);end use-package engine-mode


;;*** eros
;; Eros: Evaluation Result OverlayS for Emacs Lisp.
;; Eros is on MELPA.
;; Eros is by Tianxiang Xiong.
;; He has developed two other Emacs Lisp Packages.
;; https://github.com/xiongtx/eros
;; Eros provides Cider like behavoir for elisp with the output resturned in-line.
;; I learned about eros from yantar92 during the 2023-01-01 meeting of Mastering Emacs bookclub.


;; (use-package emacs-cursorless
;;   :load-path "/Users/blaine-mooers/emacs30/manual-packages/emacs-cursorless/")



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

;;*** file-info

(use-package file-info
  :bind (("C-c d" . 'file-info-show))
  :config
  (setq hydra-hint-display-type 'posframe)
  (setq hydra-posframe-show-params `(:poshandler posframe-poshandler-frame-center
                                               :internal-border-width 2
                                               :internal-border-color "#61AFEF"
                                               :left-fringe 16
                                               :right-fringe 16)))


;;*** flymake-vale

(use-package flymake-vale
     :load-path "manual-packages/flymake-vale/")

;; Add flymake-vale as a backend to specific modes by adding flymake-vale-load to the relevant hook
(add-hook 'text-mode-hook #'flymake-vale-load)
(add-hook 'latex-mode-hook #'flymake-vale-load)
(add-hook 'org-mode-hook #'flymake-vale-load)
(add-hook 'markdown-mode-hook #'flymake-vale-load)
(add-hook 'message-mode-hook #'flymake-vale-load)
(add-hook 'rst-mode-hook #'flymake-vale-load)
;; (add-hook 'adoc-mode-hook #'flymake-vale-load)

;; Load flymake-vale automatically upon opening a file when that file's major mode is in flymake-vale-mode:
(add-hook 'find-file-hook 'flymake-vale-maybe-load)

;; flymake-vale-modes defaults to: 
;;  => (text-mode latex-mode org-mode markdown-mode message-mode)

;; (add-to-list 'flymake-vale-mode 'adoc-mode)
;; (add-to-list 'flymake-vale-modes 'latex-mode)
;; (add-to-list 'flymake-vale-modes 'markdown-mode)
;; (add-to-list 'flymake-vale-modes 'message-mode)
;; (add-to-list 'flymake-vale-modes 'org-mode)
;; (add-to-list 'flymake-vale-modes 'text-mode)
;; (add-to-list 'flymake-vale-modes 'rst-mode)


;;*** FlySpell (spell checking)
(dolist (flyspellmodes '(text-mode-hook
                       org-mode-hook
                       latex-mode-hook))
(add-hook flyspellmodes 'turn-on-flyspell))

;; comments and strings in code
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; sets american english as default
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

;;*** general
(use-package general)

(general-define-key
 :states '(normal motion visual)
 :keymaps 'override
 :prefix "SPC"

;; Top level functions
"/" '(jib/rg :which-key "ripgrep")
";" '(spacemacs/deft :which-key "deft")
":" '(project-find-file :which-key "p-find file")
"." '(counsel-find-file :which-key "find file")
"," '(counsel-recentf :which-key "recent files")
"TAB" '(switch-to-prev-buffer :which-key "previous buffer")
"SPC" '(counsel-find-file :which-key "M-x")
"q" '(save-buffers-kill-terminal :which-key "quit emacs")
"r" '(jump-to-register :which-key "registers")
"c" 'org-capture

;; "Applications"
"a" '(nil :which-key "applications")
"ao" '(org-agenda :which-key "org-agenda")
"am" '(mu4e :which-key "mu4e")
"aC" '(calc :which-key "calc")
"ac" '(org-capture :which-key "org-capture")
"aqq" '(org-ql-view :which-key "org-ql-view")
"aqs" '(org-ql-search :which-key "org-ql-search")

"ab" '(nil :which-key "browse url")
"abf" '(browse-url-firefox :which-key "firefox")
"abc" '(browse-url-chrome :which-key "chrome")
"abx" '(xwidget-webkit-browse-url :which-key "xwidget")
"abg" '(jib/er-google :which-key "google search")

"ad" '(dired :which-key "dired")

;; Buffers
"b" '(nil :which-key "buffer")
"bb" '(counsel-switch-buffer :which-key "switch buffers")
"bd" '(evil-delete-buffer :which-key "delete buffer")
"bs" '(jib/switch-to-scratch-buffer :which-key "scratch buffer")
"bm" '(jib/kill-other-buffers :which-key "kill other buffers")
"bi" '(clone-indirect-buffer  :which-key "indirect buffer")
"br" '(revert-buffer :which-key "revert buffer")

;; Files
"f" '(nil :which-key "files")
"fb" '(counsel-bookmark :which-key "bookmarks")
"ff" '(counsel-find-file :which-key "find file")
"fn" '(spacemacs/new-empty-buffer :which-key "new file")
"fr" '(counsel-recentf :which-key "recent files")
"fR" '(rename-file :which-key "rename file")
"fs" '(save-buffer :which-key "save buffer")
"fS" '(evil-write-all :which-key "save all buffers")
"fo" '(reveal-in-osx-finder :which-key "reveal in finder")
"fO" '(jib/open-buffer-file-mac :which-key "open buffer file")


;; Help/emacs
"h" '(nil :which-key "help/emacs")

"hv" '(counsel-describe-variable :which-key "des. variable")
"hb" '(counsel-descbinds :which-key "des. bindings")
"hM" '(describe-mode :which-key "des. mode")
"hf" '(counsel-describe-function :which-key "des. func")
"hF" '(counsel-describe-face :which-key "des. face")
"hk" '(describe-key :which-key "des. key")

"hed" '((lambda () (interactive) (jump-to-register 67)) :which-key "edit dotfile")

"hm" '(nil :which-key "switch mode")
"hme" '(emacs-lisp-mode :which-key "elisp mode")
"hmo" '(org-mode :which-key "org mode")
"hmt" '(text-mode :which-key "text mode")

"hp" '(nil :which-key "packages")
"hpr" 'package-refresh-contents
"hpi" 'package-install
"hpd" 'package-delete

;; Help/emacs
"x" '(nil :which-key "text")
"xC" '(jib/copy-whole-buffer-to-clipboard :which-key "copy whole buffer to clipboard")
"xr" '(anzu-query-replace :which-key "find and replace")
"xs" '(yas-insert-snippet :which-key "insert yasnippet")
"xf" '(flush-lines :which-key "flush-lines")
"xR" '(replace-regexp :which-key "replace-regexp")

;; Toggles
"t" '(nil :which-key "toggles")
"tt" '(toggle-truncate-lines :which-key "truncate lines")
"tv" '(visual-line-mode :which-key "visual line mode")
"tn" '(display-line-numbers-mode :which-key "display line numbers")
"ta" '(mixed-pitch-mode :which-key "variable pitch mode")
"ty" '(counsel-load-theme :which-key "load theme")
"tw" '(writeroom-mode :which-key "writeroom-mode")
"tR" '(read-only-mode :which-key "read only mode")
"tI" '(toggle-input-method :which-key "toggle input method")
"tr" '(display-fill-column-indicator-mode :which-key "fill column indicator")
"tm" '(hide-mode-line-mode :which-key "hide modeline mode")
 
;; Windows
"w" '(nil :which-key "window")
"wm" '(jib/toggle-maximize-buffer :which-key "maximize buffer")
"wN" '(make-frame :which-key "make frame")
"wd" '(evil-window-delete :which-key "delete window")
"wc" '(evil-window-delete :which-key "delete window")
"w-" '(jib/split-window-vertically-and-switch :which-key "split below")
"w/" '(jib/split-window-horizontally-and-switch :which-key "split right")
"wr" '(jb-hydra-window/body :which-key "hydra window")
"wl" '(evil-window-right :which-key "evil-window-right")
"wh" '(evil-window-left :which-key "evil-window-left")
"wj" '(evil-window-down :which-key "evil-window-down")
"wk" '(evil-window-up :which-key "evil-window-up")
"wz" '(text-scale-adjust :which-key "text zoom")
) ;; End SPC prefix block
 


;;*** google-this
;; use C-x / g n on a region for search submission without prompt
(use-package google-this)

(defun google-this-pymol-reference ()
  "Visit the most probable pymolwiki.org page for this word."
  (interactive)
  (google-this-parse-and-search-string
   (concat "site:pymolwiki.org" (thing-at-point 'symbol))
   nil (google-this-lucky-search-url)))

(global-set-key (kbd "C-x / g p") 'google-this-pymol-reference)

;;;###autoload
;;;; Really, you want to feed Moloch?
;;;;*** gpt
;;
;;(defun dw/read-openai-key ()
;;  "Read api key from disk."
;;  (with-temp-buffer
;;    (insert-file-contents "~/openapikey.txt")
;;    (string-trim (buffer-string))))
;;
;;
;;;;**** gptai
;;
;;(use-package gptai)
;;;; set configurations
;;(setq gptai-model "<MODEL-HERE>")
;;(setq gptai-username "<USERNAME-HERE>")
;;(setq gptai-api-key #'dw/read-openai-key)
;;;; set keybindings optionally
;;(global-set-key (kbd "C-c g") 'gptai-send-query)




;;*** golden-ratio
;; https://github.com/roman/golden-ratio.el
(use-package golden-ratio)
(golden-ratio-mode 1)



;;*** greader
;; Reads back the text that you have written in Emacs.
;;Install espeak via macports or brew.
;;
;; (use-package greader)


;;*** gxref
(use-package gxref)
(add-to-list 'xref-backend-functions 'gxref-xref-backend)


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


;;*** help hydra
;; source: https://www.wisdomandwonder.com/article/10760/emacsorg-mode-a-hydra-to-help-describe
;; (defhydra help/hydra/left/describe (:color blue
;;                                            :hint nil)
;;   "
;; Describe Something: (q to quit)
;; _a_ all help for everything screen
;; _b_ bindings
;; _B_ personal bindings
;; _c_ char
;; _C_ coding system
;; _f_ function
;; _F_ flycheck checker
;; _i_ input method
;; _k_ key briefly
;; _K_ key
;; _l_ language environment
;; _L_ mode lineage
;; _m_ major mode
;; _M_ minor mode
;; _n_ current coding system briefly
;; _N_ current coding system full
;; _o_ lighter indicator
;; _O_ lighter symbol
;; _p_ package
;; _P_ text properties
;; _s_ symbol
;; _t_ theme
;; _v_ variable
;; _w_ where is something defined
;; "
;;   ("b" describe-bindings)
;;   ("B" describe-personal-keybindings)
;;   ("C" describe-categories)
;;   ("c" describe-char)
;;   ("C" describe-coding-system)
;;   ("f" describe-function)
;;   ("F" flycheck-describe-checker)
;;   ("i" describe-input-method)
;;   ("K" describe-key)
;;   ("k" describe-key-briefly)
;;   ("l" describe-language-environment)
;;   ("L" help/parent-mode-display)
;;   ("M" describe-minor-mode)
;;   ("m" describe-mode)
;;   ("N" describe-current-coding-system)
;;   ("n" describe-current-coding-system-briefly)
;;   ("o" describe-minor-mode-from-indicator)
;;   ("O" describe-minor-mode-from-symbol)
;;   ("p" describe-package)
;;   ("P" describe-text-properties)
;;   ("q" nil)
;;   ("a" help)
;;   ("s" describe-symbol)
;;   ("t" describe-theme)
;;   ("v" describe-variable)
;;   ("w" where-is))
;; (global-set-key (kbd "M-i") nil)
;; (global-set-key (kbd "M-i") #'help/hydra/left/describe/body)
;; (use-package parent-mode
;;   :config
;;   (defun help/parent-mode-display ()
;;     "Display this buffer's mode hierarchy."
;;     (interactive)
;;     (let ((ls (parent-mode-list major-mode)))
;;       (princ ls))))
;; (use-package flycheck
;;   :ensure t
;;   :diminish flycheck-mode)
;;


;;*** hyperdrive
;; Emacsconf23 talk:
;; Manaul: https://ushin.org/hyperdrive/hyperdrive-manual.html
;;(use-package hyperdrive
;;  :bind ("C-c h" . hyperdrive-menu)
;;  :init (hyperdrive-menu-bar-mode 1))



;;*** hyperbole
;; More info: https://blog.abrochard.com/hyperbole-intro.html https://www.gnu.org/software/hyperbole/#invocation, 
(use-package hyperbole)
(hyperbole-mode 1)



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

(use-package iedit)

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


;;*** ivy
(use-package ivy
  :diminish ivy-mode
  :config
  (setq ivy-extra-directories nil) ;; Hides . and .. directories
  (setq ivy-initial-inputs-alist nil) ;; Removes the ^ in ivy searches
  (if (eq jib/computer 'laptop)
      (setq-default ivy-height 10)
    (setq-default ivy-height 11))
  (setq ivy-fixed-height-minibuffer t)
  (add-to-list 'ivy-height-alist '(counsel-M-x . 7)) ;; Don't need so many lines for M-x, I usually know what command I want

  (ivy-mode 1)

  ;; Shows a preview of the face in counsel-describe-face
  (add-to-list 'ivy-format-functions-alist '(counsel-describe-face . counsel--faces-format-function))

  :general
  (general-define-key
   ;; Also put in ivy-switch-buffer-map b/c otherwise switch buffer map overrides and C-k kills buffers
   :keymaps '(ivy-minibuffer-map ivy-switch-buffer-map)
   "S-SPC" 'nil
   "C-SPC" 'ivy-restrict-to-matches ;; Default is S-SPC, changed this b/c sometimes I accidentally hit S-SPC
   ;; C-j and C-k to move up/down in Ivy
   "C-k" 'ivy-previous-line
   "C-j" 'ivy-next-line)
  )


;;;; Nice icons in Ivy. Replaces all-the-icons-ivy.
;;(use-package all-the-icons-ivy-rich
;;  :init (all-the-icons-ivy-rich-mode 1)
;;  :config
;;  (setq all-the-icons-ivy-rich-icon-size 1.0))

;;
(use-package ivy-rich
  :after ivy
  :init
  (setq ivy-rich-path-style 'abbrev)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)
  :config
  (ivy-rich-mode 1))







;;** J

;;*** Julia

;;**** julia-snail
;; Requires v-term
(use-package vterm
  :ensure t)
;; Now run `M-x vterm` and make sure it works!

(use-package julia-snail
  :ensure t
  :hook (julia-mode . julia-snail-mode))

(add-to-list 'display-buffer-alist
             '("\\*julia" (display-buffer-reuse-window display-buffer-same-window)))

(customize-set-variable 'split-height-threshold 15)


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


(defun ichmk ()
  "Inserts a checkmark."
  (interactive)
  (insert "\\\item \\checkmark "))



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


(add-hook 'latex-mode-hook
    (function (lambda ()
       ;; (flymake-mode)
       ;; (reftex-mode)
       (auto-fill-mode)
       (setq fill-column 200))))

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


;; 
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
;; (setq org-format-latex-options (plist-put org-format-latex-options :scale 4.0))


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
;; (intellisense like using -capf), navigation (jump to symbol),
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

;; vale is prose linter that you run from the command line.
;;
;; vale has to be installed first and set up with a config file .vale.ini in each project.
;; I first learned about vale here: https://github.com/org2blog/org2blog#using-a-package
;; I found the macports version to be broken. Use the homebrew version.
;; /usr/local/Cellar/vale/2.23.3/bin/vale
;; https://github.com/abingham/flycheck-vale
(use-package flycheck-vale)
(flycheck-vale-setup)

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
           ;;(clojure-mode . lsp)
           ;; (clojurec-mode . lsp)
           ;; (clojurescript-mode . lsp)
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


 ;; Pair Programming Source: https://www.reddit.com/r/emacs/comments/134k63v/pair_programming_code_snippet_what_i_use_to_pair/
(defvar gopar-pair-programming nil)
(defun gopar/pair-programming ()
  "Poor mans minor mode for setting up things that i like to make pair programming easier."
  (interactive)
  (if gopar-pair-programming
      (progn
        ;; Don't use global line numbers mode since it will turn on in other modes that arent programming
        (dolist (buffer (buffer-list))
          (with-current-buffer buffer
            (when (derived-mode-p 'prog-mode)
              (display-line-numbers-mode -1))))
        (remove-hook 'prog-mode-hook 'display-line-numbers-mode)

        ;; disable all themes change to a friendlier theme
        (mapcar 'disable-theme custom-enabled-themes)
        ;; (load-theme 'tao-yin) ;; Theme i use 24/7
        (setq gopar-pair-programming nil))

    (progn
      ;; display line numbers
      (dolist (buffer (buffer-list))
        (with-current-buffer buffer
          (when (derived-mode-p 'prog-mode)
            (display-line-numbers-mode 1))))
      (add-hook 'prog-mode-hook 'display-line-numbers-mode)

      ;; disable all themes change to a friendlier theme
      (mapcar 'disable-theme custom-enabled-themes)
      (load-theme 'manoj-dark)
      (setq gopar-pair-programming t))))



;;** M
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
  (setq-default left-fringe-width
                20)
  :hook
  (magit-post-refresh . git-gutter:update-all-windows))

;; ;;**** Hydra for magit
;; ;; source: https://emacs.stackexchange.com/questions/21597/using-magit-for-the-most-basic-add-commit-push
;; (defhydra yt-hydra/help (:color blue :hint nil)
;;   "#_mp_ magit-push #_mc_ magit-commit #_md_ magit diff #_mla_ magit diff #_mla_ magit status"
;;   ;;Magit part
;;   ("mu" magit-push)
;;   ("mc" magit-commit)
;;   ("md" magit-diff)
;;   ("mla" magit-log-all)
;;   ("ms" magit-status)
;;   )
;; (global-set-key (kbd "C-c 2") 'yt-hydra/help/body)
;;


;; major-mode-hydra
;; source https://github.com/jerrypnz/major-mode-hydra.el
(use-package major-mode-hydra
  :bind
  ("s-SPC" . major-mode-hydra))


(major-mode-hydra-define emacs-lisp-mode nil
  ("Eval"
   (("b" eval-buffer "buffer")
    ("e" eval-defun "defun")
    ("r" eval-region "region"))
   "REPL"
   (("I" ielm "ielm"))
   "Test"
   (("t" ert "prompt")
    ("T" (ert t) "all")
    ("F" (ert :failed) "failed"))
   "Doc"
   (("d" describe-foo-at-point "thing-at-pt")
    ("f" describe-function "function")
    ("v" describe-variable "variable")
    ("i" info-lookup-symbol "info lookup"))))


;;(major-mode-hydra-define emacs-lisp-mode nil
;;  ("Search engines"
;;   (("h" engine/search-github          "Github")
;;    ("e" eval-defun "defun")
;;    ("r" eval-region "region"))
;;))
;;





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


;; This following overlaps with the function of the drag-stuff package.
;;### Move selected regions up or down
;; It is commands like these one that enable rapid reorganization of your prose when writing one sentence per row.
;; Thank you to DivineDomain for the suggested upgrade.
;; Source: https://www.emacswiki.org/emacs/MoveText
;; (defun move-text-internal (arg)
;;   (cond
;;    ((and mark-active transient-mark-mode)
;;     (if (> (point) (mark))
;;         (exchange-point-and-mark))
;;     (let ((column (current-column))
;;           (text (delete-and-extract-region (point) (mark))))
;;       (forward-line arg)
;;       (move-to-column column t)
;;       (set-mark (point))
;;       (insert text)
;;       (exchange-point-and-mark)
;;       (setq deactivate-mark nil)))
;;    (t
;;     (let ((column (current-column)))
;;       (beginning-of-line)
;;       (when (or (> arg 0) (not (bobp)))
;;         (forward-line)
;;         (when (or (< arg 0) (not (eobp)))
;;           (transpose-lines arg))
;;         (forward-line -1))
;;       (move-to-column column t)))))
;;
;; (defun move-line-region-down (arg)
;;   "Move region (transient-mark-mode active) or current line
;;   arg lines down."
;;   (interactive "*p")
;;   (move-text-internal arg))
;;
;; (defun move-line-region-up (arg)
;;   "Move region (transient-mark-mode active) or current line
;;   arg lines up."
;;   (interactive "*p")
;;   (move-text-internal (- arg)))
;;
;; (global-set-key (kbd "M-<down>") 'move-line-region-down)
;; (global-set-key (kbd "M-<up>") 'move-line-region-up)
;;
;; ;;### Move lines up an down
;; ;; It is commands like these one that enable rapid reorganization of your prose when writing one sentence per row.
;; ;; Retained for those who have not mastered regions.
;; (defun move-line (n)
;;   "Move the current line up or down by N lines."
;;   (interactive "p")
;;   (setq col (current-column))
;;   (beginning-of-line) (setq start (point))
;;   (end-of-line) (forward-char) (setq end (point))
;;   (let ((line-text (delete-and-extract-region start end)))
;;     (forward-line n)
;;     (insert line-text)
;;     ;; restore point to original column in moved line
;;     (forward-line -1)
;;     (forward-char col)))
;;
;; (defun move-line-up (n)
;;   "Move the current line up by N lines."
;;   (interactive "p")
;;   (move-line (if (null n) -1 (- n))))
;;
;; (defun move-line-down (n)
;;   "Move the current line down by N lines."
;;   (interactive "p")
;;   (move-line (if (null n) 1 n)))
;;
;; (global-set-key (kbd "M-<up>") 'move-line-up)
;; (global-set-key (kbd "M-<down>") 'move-line-down)

;; The above functionality is found in the move-text package.
;; https://github.com/emacsfodder/move-text
;; It uses the same keybindings as above.
;; It is in MELPA.

(move-text-default-bindings)


;; mermaid-mode
;; Flow chart generator
;; Mermaid is a JavaScript-based diagramming and charting tool that uses Markdown-inspired text definitions and a renderer to create and modify complex diagrams.
;; For examples, see https://github.com/mermaid-js/mermaid
;;
;; flowchart LR
;;
;; A[Hard] -->|Text| B(Round)
;; B --> C{Decision}
;; C -->|One| D[Result 1]
;; C -->|Two| E[Result 2]
;;
;; Runs mmdc-cli, which was installed with  `sudo npm install -g @mermaid-js/mermaid-cli`.
;; Installed in /Users/blaine/.nvm/versions/node/v20.2.0/bin/mmdc
;; https://github.com/mermaid-js/mermaid-cli
;; mmdc -i input.mmd -o output.png
;; mmdc -i input.mmd -o output.svg
;; *.mmd is the mermaid diagram file
;; https://github.com/abrochard/mermaid-mode

(use-package mermaid-mode)

;;(setq mermaid-mode-map
;;  (let ((map mermaid-mode-map))
;;    (define-key map (kbd "C-c C-d c") 'mermaid-compile)
;;    (define-key map (kbd "C-c C-d c") 'mermaid-compile)
;;    (define-key map (kbd "C-c C-d f") 'mermaid-compile-file)
;;    (define-key map (kbd "C-c C-d b") 'mermaid-compile-buffer)
;;    (define-key map (kbd "C-c C-d r") 'mermaid-compile-region)
;;    (define-key map (kbd "C-c C-d o") 'mermaid-open-browser)
;;    (define-key map (kbd "C-c C-d d") 'mermaid-open-doc)
;;    map))


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

;;*** mw-thesaurus

(use-package mw-thesaurus
  :defer t
  :config
  (add-hook 'mw-thesaurus-mode-hook
            (lambda () (define-key evil-normal-state-local-map (kbd "q") 'mw-thesaurus--quit))))


;; ** N

;; *** noaa

(use-package noaa
     :load-path "manual-packages/noaa/")
(setq noaa-latitude 35.65)
(setq noaa-longitude 97.47)

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


;;*** BEGINNING of org-agenda
(define-key org-mode-map (kbd "M-i") 'org-insert-item)
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
                         "/Users/blaine/gtd/tasks/potentialWriting.org"
                         "/Users/blaine/gtd/tasks/Proposals.org"
                         "/Users/blaine/gtd/tasks/Books.org"
                         "/Users/blaine/gtd/tasks/Talks.org"
                         "/Users/blaine/gtd/tasks/Posters.org"
                         "/Users/blaine/gtd/tasks/ManuscriptReviews.org"
                         "/Users/blaine/gtd/tasks/Private.org"
                         "/Users/blaine/gtd/tasks/Service.org"
                         "/Users/blaine/gtd/tasks/Teaching.org"
                         "/Users/blaine/gtd/tasks/Workshops.org"
                         "/Users/blaine/gtd/tasks/december23.org"
                         "/Users/blaine/gtd/tasks/springsem24.org"
                         "/Users/blaine/gtd/tasks/summersem24.org"
                         "/Users/blaine/gtd/tasks/fallsem24.org"))

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
   ("/Users/blaine/gtd/tasks/Workshops.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/december23.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/springsem24.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/summersem24.org" :maxlevel . 2)
   ("/Users/blaine/gtd/tasks/fallsem24.org" :maxlevel . 2)
   ))
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
    ("d" "December" entry
    (file+function "/Users/blaine/gtd/tasks/december23.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("s" "springsem24" entry
    (file+function "/Users/blaine/gtd/tasks/springsem24.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("u" "springsem24" entry
    (file+function "/Users/blaine/gtd/tasks/summersem24.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("f" "fallsem24" entry
    (file+function "/Users/blaine/gtd/tasks/fallsem24.org" org-ask-location)
    "\n\n*** TODO %?\n<%<%Y-%m-%d %a %T>>"
    :empty-lines 1)
    ("x" "Slipbox" entry  (file "/User/org-roam/inbox.org")
           "* %?\n")
    ))
(defun jethro/org-capture-slipbox ()
    (interactive)
    (org-capture nil "s"))



;; <<<<<<< END of org-agenda >>>>>>>>>>>>>>

;; https://github.com/shg/ob-julia-vterm.el
;;(add-to-list 'org-babel-load-languages '(julia-vterm . t))

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

;;  Removed  (jupyter . t) on May 14 due to an error message.

;; By default, you need to specify julia-vterm as the language name for source blocks. 
;; To use julia as the language name, define the following aliases.

;; (defalias 'org-babel-execute:julia 'org-babel-execute:julia-vterm)
;; (defalias 'org-babel-variable-assignments:julia 'org-babel-variable-assignments:julia-vterm)



;;*** org-bookmark-heading
(use-package org-bookmark-heading)




;;*** org-cc
;; source  https://github.com/durableOne/org-cc
(add-to-list 'load-path "/Users/blaine/emacs30/manual-packages/org-cc")
(use-package org-cc
  :ensure nil
  :after org
  :custom
  (org-cc-directory (concat org-directory "org-cc")) ;; subdirectory of the heading's attachment directory
  (org-cc-days 14)
  :init
  (add-hook 'org-clock-in-hook #'org-cc-display-notes)
)
(global-set-key (kbd "C-c k") 'org-cc-edit-cc-file)
(global-set-key (kbd "C-c x") 'org-cc-display-notes)



;;*** Org-drill
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
;; (add-hook 'org-mode-hook #'org-inline-pdf-mode)



;; org-caputre templates

(setq org-capture-templates
     '(("r" "Record"
 plain
 (file "/Users/blaine/org/notes.org")
 "* %^{Title}  :%^{Tags}:\n%U%i\n%?\n")))

(global-set-key (kbd "C-c t") 'org-tags-view)



;;*** Org-pdf-noter
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

;;(use-package org-noter-pdftools
;;  :after org-noter
;;  :config
;;  ;; Add a function to ensure precise note is inserted
;;  (defun org-noter-pdftools-insert-precise-note (&optional toggle-no-questions)
;;    (interactive "P")
;;    (org-noter--with-valid-session
;;     (let ((org-noter-insert-note-no-questions (if toggle-no-questions
;;                                                   (not org-noter-insert-note-no-questions)
;;                                                 org-noter-insert-note-no-questions))
;;           (org-pdftools-use-isearch-link t)
;;           (org-pdftools-use-freepointer-annot t))
;;       (org-noter-insert-note (org-noter--get-precise-info)))))
;;
;;  ;; fix https://github.com/weirdNox/org-noter/pull/93/commits/f8349ae7575e599f375de1be6be2d0d5de4e6cbf
;;  (defun org-noter-set-start-location (&optional arg)
;;    "When opening a session with this document, go to the current location.
;;With a prefix ARG, remove start location."
;;    (interactive "P")
;;    (org-noter--with-valid-session
;;     (let ((inhibit-read-only t)
;;           (ast (org-noter--parse-root))
;;           (location (org-noter--doc-approx-location (when (called-interactively-p 'any) 'interactive))))
;;       (with-current-buffer (org-noter--session-notes-buffer session)
;;         (org-with-wide-buffer
;;          (goto-char (org-element-property :begin ast))
;;          (if arg
;;              (org-entry-delete nil org-noter-property-note-location)
;;            (org-entry-put nil org-noter-property-note-location
;;                           (org-noter--pretty-print-location location))))))))
;;  (with-eval-after-load 'pdf-annot
;;    (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))
;; (eval-after-load 'org '(require 'org-pdfview))
;;
;; (add-to-list 'org-file-apps
;;              '("\\.pdf\\'" . (lambda (file link)
;;                                      (org-pdfview-open link))))





;;*** org-pomodoro
;; (shell-command-to-string "open -a tomighty.app")
(use-package org-pomodoro
    :commands  (org-pomodoro)
    :config
    (setq alert-user-configuration (quote ((((:category . "org-pomodoro")) libnotify nil)))))

;; add hook to enable automated start of the next pom after a break.
;; Source: https://github.com/marcinkoziej/org-pomodoro/issues/32
;; (add-hook 'org-pomodoro-break-finished-hook
;;           (lambda ()
;;             (interactive)
;;             (point-to-register 1)
;;             (org-clock-goto)
;;             (org-pomodoro '(25))
;;             (register-to-point 1)
;;             (shell-command-to-string "open -a tomighty.app")
;;             ))

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


;;*** org-preview-html
(use-package org-preview-html)



;; <<<<<<< BEGIN org-ref >>>>>>>>>>>>>>
(use-package org-ref)
;; (require 'org-ref-ivy)
(use-package bibtex)
(use-package helm-bibtex)

(setq bibtex-completion-bibliography '("/Users/blaine/Documents/global.bib")
    bibtex-completion-library-path '("/Users/blaine/0papersLabeled/" "/Users/blaine/0booksLabeled/")
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
(define-key bibtex-mode-map (kbd "s-b") 'org-ref-bibtex-hydra/body)
(define-key org-mode-map (kbd "s-i") org-ref-insert-cite-function)
(define-key org-mode-map (kbd "s-r") org-ref-insert-ref-function)
(define-key org-mode-map (kbd "H-l") org-ref-insert-label-function)
(define-key org-mode-map (kbd "H-d") 'doi-add-bibtex-entry)


;; to use org-cite-insert
(setq org-ref-insert-cite-function
      (lambda ()
	(org-cite-insert nil)))

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
   (org-roam-db-autosync-mode))
   ;;(org-roam-ui-mode))
   ;; If using org-roam-protocol
   ;;(use-package org-roam-protocol))


;; ** Basic org-roam config
;; Following https://jethrokuan.github.io/org-roam-guide/

(setq org-roam-capture-templates
      '(("p" "permanent" plain
         "%?"
         :if-new (file+head "main/${slug}.org" "#+title: ${title}\n\n* Note type: permanent\n\n* References\n\n* Backlinks\n\n#+created_at: %U\n#+last_modified: %U\n")
         :immediate-finish t
         :unnarrowed t)
         ;; citar literature note
        ("n" "literature note" plain
         "%?"
         :target (file+head "%(expand-file-name (or citar-org-roam-subdir \"\") org-roam-directory)/${citar-citekey}.org"
                    "#+title: ${citar-citekey} (${citar-date}). ${note-title}.\n Note type: literature\n\n\n#+created: %U\n#+last_modified: %U\n\n")
                  :unnarrowed t)
        ("r" "reference" plain "%?"
         :if-new
         (file+head "reference/${title}.org" "#+title: ${title}\n\n\n\n\n* References\n\n* Backlinks\n\n#+created_at: %U\n#+last_modified: %U\n")
         :immediate-finish t
         :unnarrowed t)
         ("l" "clipboard" plain #'org-roam-capture--get-point "%i%a"
         :file-name "%<%Y%m%d%H%M%S>-${slug}"
         :head "#+title: ${title}\n#+created: %u\n#+last_modified: %U\n#+ROAM_TAGS: %?"
         :unnarrowed t
         :prepend t
         :jump-to-captured t)
        ("a" "article" plain "%?"
         :if-new
         (file+head "articles/${title}.org" "#+title: ${title}\n :article:\n\n\n\n\n* References\n\n* Backlinks\n\n#+created_at: %U\n#+last_modified: %U\n")
         :immediate-finish t
         :unnarrowed t)))

(setq org-roam-node-display-template
    (concat "${type:15} ${title:*} " (propertize "${tags:10}" 'face 'org-tag)))


;; Over my head at the moment
;; (defun jethro/org-roam-node-from-cite (keys-entries)
;;     (interactive (list (citar-select-ref :multiple nil :rebuild-cache t)))
;;     (let ((title (citar--format-entry-no-widths (cdr keys-entries)
;;                                                 "${author editor} :: ${title}")))
;;       (org-roam-capture- :templates
;;                          '(("r" "reference" plain "%?" :if-new
;;                             (file+head "reference/${citekey}.org"
;;                                        ":PROPERTIES:
;; :ROAM_REFS: [cite:@${citekey}]
;; :END:
;; #+title: ${title}\n")
;;                             :immediate-finish t
;;                             :unnarrowed t))
;;                          :info (list :citekey (car keys-entries))
;;                          :node (org-roam-node-create :title title)
;;                          :props '(:finalize find-file))))
;;
;;
;; (defun jethro/tag-new-node-as-draft ()
;;   (org-roam-tag-add '("draft")))
;; (add-hook 'org-roam-capture-new-node-hook #'jethro/tag-new-node-as-draft)
;;

(use-package consult-org-roam)



;; settings to enable rendering of LaTeX equations with org-latex-preview with C-c C-x C-l
;; I tried to get org-latex-preview to work without success on 12-10-2022
;; I had to install texlive-xelatex via macports.
;;


(setq org-preview-latex-default-process 'dvisvgm)

;; (setq org-latex-to-pdf-process
;;  '("xelatex -interaction nonstopmode %f"
;;     "xelatex -interaction nonstopmode %f")) ;; for multiple passes

(setq org-latex-pdf-process (list
   "latexmk -pdflatex='lualatex -shell-escape -interaction nonstopmode' -pdf -f  %f"))


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
;; See this vidoe https://www.youtube.com/watch?v=Wy9WvF5gWYg

(use-package org-roam-bibtex
      :hook (org-roam-mode . org-roam-bibtex-mode))

;;    (setq orb-preformat-keywords
;;          '("citekey" "title" "url" "author-or-editor" "keywords" "file")
;;          orb-process-file-keyword t
;;          orb-file-field-extensions '("pdf"))
;;
;;    (setq orb-templates
;;          '(("r" "ref" plain(function org-roam-capture--get-point)
;;             ""
;;             :file-name "${citekey}"
;;             :head "#+TITLE: ${citekey}: ${title}\n#+ROAM_KEY: ${ref}
;;  - tags ::
;;  - keywords :: ${keywords}
;;
;;  *Notes
;;  :PROPERTIES:
;;  :Custom_ID: ${citekey}
;;  :URL: ${url}
;;  :AUTHOR: ${author-or-editor}
;;  :NOTER_DOCUMENT: ${file}
;;  :NOTER_PAGE:
;;  :END:")))
;;

;; (require 'org-cite
;;     :custom
;;     ;; Actually, I set this value to `kb/bib-files', which is a list of file paths.
;;     ;; I set that as the value of any variable that requires bibliography files,
;;     ;; such as `citar', as you'll see below.
;;     (org-cite-global-bibliography
;;      '("/Users/blaine/Documents/global.bib"))
;;      (org-cite-export-processors
;;       '((md . (csl "chicago-fullnote-bibliography.csl"))   ; Footnote reliant
;;         (latex biblatex)                                   ; For humanities
;;         (odt . (csl "chicago-fullnote-bibliography.csl"))  ; Footnote reliant
;;         (t . (csl "modern-language-association.csl"))))      ; Fallback
;;      :custom-face
;;      ;; Have citation link faces look closer to as they were for `org-ref'
;;      (org-cite ((t (:foreground "DarkSeaGreen4"))))
;;      (org-cite-key ((t (:foreground "forest green" :slant italic))))
;;      
;;     )


(use-package citeproc-org)



(setq citar-org-roam-capture-template-key "n")

(use-package citar
  :bind (("C-c b" . citar-insert-citation)
         :map minibuffer-local-map
         ("M-b" . citar-insert-preset))
  :custom
    (citar-bibliography '("/Users/blaine/Documents/global.bib"))
  :hook
  ;; enable autocompletion in buffer of citekeys
    (LaTeX-mode . citar-capf-setup)
    (org-mode . citar-capf-setup))

(setenv "PATH" (concat ":/opt/local/bin/" (getenv "PATH")))
(add-to-list 'exec-path "/opt/local/bin/")


;;*** citar-org, use after org-cite
(use-package citar-org
  :after oc
  :custom
  (org-cite-insert-processor 'citar)
  (org-cite-follow-processor 'citar)
  (org-cite-activate-processor 'citar)
  :general
  (:keymaps 'org-mode-map
   :prefix "C-c b"
   "b" '(citar-insert-citation :wk "Insert citation")
   "r" '(citar-insert-reference :wk "Insert reference")
   "o" '(citar-open-notes :wk "Open note"))
  :custom
  (citar-notes-paths '("/Users/blaine/org-roam/")) ; List of directories for reference nodes
  (citar-open-note-function 'orb-citar-edit-note) ; Open notes in `org-roam'
  (citar-at-point-function 'embark-act)           ; Use `embark'
  )


(use-package citar-embark
  ;; get a table of options including opening related files and the entry in global.bib.
  :after citar embark
  :no-require
  :config (citar-embark-mode))


(use-package citar-org-roam
    :after (citar org-roam)
    :no-require
    :config (citar-org-roam-mode))

  ;; source: https://github.com/emacs-citar/citar/wiki/Notes-configuration#org-roam-bibtex
  ;; Not sure if this is outdated.
  ;;(citar-register-notes-source
  ;; 'orb-citar-source (list :name "Org-Roam Notes"
  ;;        :category 'org-roam-node
  ;;        :items #'citar-org-roam--get-candidates
  ;;        :hasitems #'citar-org-roam-has-notes
  ;;        :open #'citar-org-roam-open-note
  ;;        :create #'orb-citar-edit-note
  ;;        :annotate #'citar-org-roam--annotate))

  ;; (setq citar-notes-source 'orb-citar-source)



;; org-preview-latex-process-alist

;; org-preview-latex-default-process

;; <<<<<<< END org-roam >>>>>>>>>>>>>>


;; org-similiarity
;; source https://github.com/brunoarine/org-similarity
(use-package org-similarity
  :load-path  "~/emacs30/manual-packages/org-similarity")

;; Directory to scan for possibly similar documents.
;; org-roam users might want to change it to `org-roam-directory'.
(setq org-similarity-directory org-roam-directory)

;; The language passed to the Snowball stemmer in the `nltk' package.  The
;; following languages are supported: Arabic, Danish, Dutch, English, Finnish,
;; French, German, Hungarian, Italian, Norwegian, Portuguese, Romanian, Russian,
;; Spanish and Swedish.
(setq org-similarity-language "english")

;; How many similar entries to list at the end of the buffer.
(setq org-similarity-number-of-documents 15)

;; Whether to prepend the list entries with similarity scores.
(setq org-similarity-show-scores nil)

;; Whether the resulting list of similar documents will point to ID property or
;; filename. Default it nil.
;; However, I recommend setting it to `t' if you use `org-roam' v2.
(setq org-similarity-use-id-links t)

;; Scan for files inside `org-similarity-directory' recursively.
(setq org-similarity-recursive-search t)





;; org-speed-commands
;; https://www.youtube.com/watch?v=v-jLg1VaYzo}
(defun org-jump-to-heading-beginning ()
  "Jump to the beginning of the line of the closest Org heading."
  (interactive)
  (org-back-to-heading)
  (beginning-of-line))

(define-key org-mode-map (kbd "&*") 'org-jump-to-heading-beginning)

(setq org-use-speed-commands t)
(setq org-speed-commands (cons '("w" . widen) org-speed-commands))
(define-key org-mode-map (kbd "^") 'org-sort)
;; (define-key org-mode-map (kbd "z") 'org-refile)
;; (define-key org-mode-map (kbd "@") 'org-mark-subtree) ; conflicts with org-cite-insert.
(eval-after-load 'org-mode '(define-key org-mode-map "z" nil))

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

;; source https://github.com/yjwen/org-reveal/

(setq org-reveal-root "file:////Applications/quarto/share/formats/revealjs/reveal/dist/reveal.js")
;; M-x load-library ox-reveal
(use-package ox-reveal)
;;*** ox-pandoc

(use-package ox-pandoc)

;;*** docx2txt

(add-to-list 'auto-mode-alist '("\\.docx\\'" . docx2txt.sh)) ;; /usr/local/bin/docx2txt.sh

(defun docx2txt ()
  "Run docx2txt on the entire buffer."
  (shell-command-on-region (point-min) (point-max) "docx2txt.sh" t t))

;;**** Convert docx to another format with point on the file in dired

(defun direct-pandoc-docx-md ()
  (interactive)
  (dired-do-async-shell-command
   "pandoc -f docx -t markdown --wrap=none" current-prefix-arg
   (dired-get-marked-files t current-prefix-arg)))

;; pandoc --list-output-formats
;; pandoc -f docx -t org MooersTravellingCV.docx -o MooersTravellingCV.org

(defun direct-pandoc-docx-org ()
  (interactive)
  (dired-do-async-shell-command
   "pandoc -f docx -t org --wrap=none" current-prefix-arg
   (dired-get-marked-files t current-prefix-arg)))

(defun direct-pandoc-docx-latex ()
  (interactive)
  (dired-do-async-shell-command
   "pandoc -f docx -t latex --wrap=none" current-prefix-arg
   (dired-get-marked-files t current-prefix-arg)))

(defun direct-pandoc-docx-rst ()
  (interactive)
  (dired-do-async-shell-command
   "pandoc -f docx -t rst --wrap=none" current-prefix-arg
   (dired-get-marked-files t current-prefix-arg)))

(global-set-key (kbd "C-c x") 'direct-pandoc-docx-org)

;;** P

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
(load-file "~/emacs30/manual-packages/emacs-pdb-mode/pdb-mode.el")
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


;;*** posframe
;; Like having the minibuffer at point. Very cool!
;; https://github.com/tumashu/-posframe

(use-package posframe)

(defvar my-posframe-buffer " *my-posframe-buffer*")

;;(with-current-buffer (get-buffer-create my-posframe-buffer)
;;  (erase-buffer)
;;  (insert "Hi!"))

(when (posframe-workable-p)
  (posframe-show my-posframe-buffer
                 :position (point)))

;; (use-package -posframe)
;; (-posframe-mode 1)
;; (setq -tooltip-minimum-width 60)

;;(use-package vertico-posframe)
;;(vertico-posframe-mode 1)


;;*** pretty-hydra
(use-package pretty-hydra)



;;*** projectile
;; Documentation: https://docs.projectile.mx/projectile/usage.html
;; projectile-commander s-p m
(use-package projectile)
;;(projectile-mode +1)
(setq projectile-enable-caching t)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "s-,") 'projectile-command-map)
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)




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


;; Using my virtual environments
;;;;(use-package pyvenv
;;;;  :defer t
;;;;  :init
;;;;  (setenv "WORKON_HOME" "~/.pyenv/versions")) ;; Where the virtual envs are stored on my computer

(use-package pyvenv-auto
        :hook ((python-mode . pyvenv-auto-run)))

;; Automatically set the virtual environment when entering a directory
;;(use-package auto-virtualenv
;;  :defer 2
;;  :config
;;  (add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv))
  
  

;; *** elpy (Emacs Lisp Python Environment)
;; source: https://realpython.com/emacs-the-best-python-editor/#initialization-file
(use-package elpy)
(elpy-enable)

;;** Q

;; *** eqmacs
;; This is an interactice quiz about clojure.
(use-package qclj
    :load-path "~/emacs30/manual-packages/qclj/")

;; *** eqmacs
;; This is an interactice quiz about Emacs.
(use-package qemacs
    :load-path "~/emacs30/manual-packages/qemacs/")

;; *** qvoice 
;; This is an interactive quiz about Talon Voice
;;(use-package qvoice
;;    :load-path "~/emacs30/manual-packages/qvoice/")

;; *** qtalonvoice 
;; This is an interactive quiz about Talon Voice
(use-package qtalonvoice
    :load-path "~/emacs30/manual-packages/qtalonvoice/")

;; *** query-replace-parallel
;; source: https://github.com/hokomo/query-replace-parallel
;; Talk at emacsconf23: https://emacsconf.org/2023/talks/parallel/

(use-package query-replace-parallel
  :load-path "~/emacs30/manual-packages/query-replace-parallel"
  :commands (query-replace-parallel query-replace-parallel-regexp))



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

                                        ; ;; slime
                                        ;
                                        ; ;; Source: https://github.com/susam/emacs4cl/blob/main/.emacs
                                        ; ;; Configure SBCL as the Lisp program for SLIME.
                                        ; (add-to-list 'exec-path "/opt/local/bin")
                                        ; (setq inferior-lisp-program "sbcl")
                                        ;
                                        ; ; (push "/Users/blaine/emacs30/manual-packages/slime-critic" load-path)
                                        ; ; (add-to-list 'slime-contribs 'slime-critic)
                                        ; (slime-setup)
                                        ;
                                        ;
                                        ; ;;    M-x slime-critic-critique-buffer: critique the current buffer.
                                        ; ;;    M-x slime-critic-critique-file: critique a file.
                                        ;
                                        ; ;; Enable Paredit.
                                        ; (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
                                        ; (add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
                                        ; (add-hook 'ielm-mode-hook 'enable-paredit-mode)
                                        ; (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
                                        ; (add-hook 'lisp-mode-hook 'enable-paredit-mode)
                                        ; (add-hook 'slime-repl-mode-hook 'enable-paredit-mode)
                                        ; (defun override-slime-del-key ()
                                        ;   (define-key slime-repl-mode-map
                                        ;     (read-kbd-macro paredit-backward-delete-key) nil))
                                        ; (add-hook 'slime-repl-mode-hook 'override-slime-del-key)

;; ;; Enable Rainbow Delimiters.
;; (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'ielm-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'lisp-interaction-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)
;;
;; ;; Customize Rainbow Delimiters.
;; (use-package rainbow-delimiters)
;; (set-face-foreground 'rainbow-delimiters-depth-1-face "#c66")  ; red
;; (set-face-foreground 'rainbow-delimiters-depth-2-face "#6c6")  ; green
;; (set-face-foreground 'rainbow-delimiters-depth-3-face "#69f")  ; blue
;; (set-face-foreground 'rainbow-delimiters-depth-4-face "#cc6")  ; yellow
;; (set-face-foreground 'rainbow-delimiters-depth-5-face "#6cc")  ; cyan
;; (set-face-foreground 'rainbow-delimiters-depth-6-face "#c6c")  ; magenta
;; (set-face-foreground 'rainbow-delimiters-depth-7-face "#ccc")  ; light gray
;; (set-face-foreground 'rainbow-delimiters-depth-8-face "#999")  ; medium gray
;; (set-face-foreground 'rainbow-delimiters-depth-9-face "#666")  ; dark gray
;;



;;*** serenade (source: https://github.com/justin-roche/serenade-mode)
(use-package serenade-mode
  :load-path "~/emacs30/manual-packages/serenade-mode/")

(setq serenade-completion-frontend 'helm)
(setq serenade-helm-M-x t)
(setq serenade-snippet-engine 'yasnippet)

;; Call serenade mode with the command in elisp (serenade-mode)



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
    :load-path ("/Users/blaine/emacs30/manual-packages/combobulate")))
;; ==> adjust here



;; Configure Tempel
;; soruce:
(use-package tempel
  ;; Require trigger prefix before template name when completing.
  ;; :custom
  ;; (tempel-trigger-prefix "<")

  :bind (("M-+" . tempel-complete) ;; Alternative tempel-expand
         ("M-*" . tempel-insert))

  :init

  ;; Setup completion at point
  (defun tempel-setup-capf ()
    ;; Add the Tempel Capf to `completion-at-point-functions'.
    ;; `tempel-expand' only triggers on exact matches. Alternatively use
    ;; `tempel-complete' if you want to see all matches, but then you
    ;; should also configure `tempel-trigger-prefix', such that Tempel
    ;; does not trigger too often when you don't expect it. NOTE: We add
    ;; `tempel-expand' *before* the main programming mode Capf, such
    ;; that it will be tried first.
    (setq-local completion-at-point-functions
                (cons #'tempel-expand
                      completion-at-point-functions)))

  (add-hook 'prog-mode-hook 'tempel-setup-capf)
  (add-hook 'text-mode-hook 'tempel-setup-capf)

  ;; Optionally make the Tempel templates available to Abbrev,
  ;; either locally or globally. `expand-abbrev' is bound to C-x '.
  ;; (add-hook 'prog-mode-hook #'tempel-abbrev-mode)
  ;; (global-tempel-abbrev-mode)
)

;; Optional: Add tempel-collection.
;; The package is young and doesn't have comprehensive coverage.
(use-package tempel-collection)



;;*** twauctex
(add-to-list 'load-path "~/emacs30/manual-packages/twauctex")
(use-package twauctex)
(twauctex-global-mode)


;;** U
;;*** unicode


(set-default-coding-systems 'utf-8)
;; (set-keyboard-coding-system 'mac-roman)
;; (create-fontset-from-fontset-spec
;;  "-apple-monaco-medium-r-normal--10-*-*-*-*-*-fontset-monaco,
;;   ascii:-apple-monaco-medium-r-normal--10-100-75-75-m-100-mac-roman,
;;   latin-iso8859-1:-apple-monaco-medium-r-normal--10-100-75-75-m-100-mac-roman,
;;   mule-unicode-0100-24ff:-apple-monaco-medium-r-normal--10-100-75-75-m-100-mac-roman")
;; (set-frame-font "fontset-monaco")
;; (set-clipboard-coding-system 'mac-roman)



;;** V
;;*** emacs-vega-view
;; (add-to-list 'load-path "~/emacs30/manual-packages/emacs-vega-view")
;; (use-package vega-view)
;; (setq vega-view-prefer-png t)
;; ;; source: https://github.com/applied-science/emacs-vega-view
;; ;; M-x veaga-view



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

;;*** whisper
;; inspiration: Emacs Elements  https://www.youtube.com/watch?v=I7IKAgGOnKs
;; pip install -U openai-whisper
;; source: https://github.com/natrys/whisper.el

(use-package whisper
  :load-path "/Users/blaine/emacs30/manual-packages/whisper/"
  :bind ("M-s r" . whisper-run)
  :config
  (setq whisper-install-directory "~/emacs30/.cache/"
        whisper-model "base"
        whisper-language "en"
        whisper-translate nil
        whisper--ffmpeg-input-format "avfoundation"
        whisper--ffmpeg-input-device "MacBook Pro Microphone"
        )
  )

;;   (setq whisper-ffmpeg "/opt/local/bin/ffmpeg")
;;   (setq whisper-input  "/opt/local/bin/ffmpeg -y -i /tmp/whisper.wav -acodec pcm_s16le -ac 1 -ar 16000 /tmp/whisper.raw")
;;   (setq whisper-arecord-device "hw:2,0")
;;  (setq whisper-arecord-args '("-f" "cd" "-c" "1"))
;;   (setq whisper--ffmpeg "/opt/local/bin/ffmpeg")



(defun rk/get-ffmpeg-device ()
  "Gets the list of devices available to ffmpeg.
The output of the ffmpeg command is pretty messy, e.g.
  [AVFoundation indev @ 0x7f867f004580] AVFoundation video devices:
  [AVFoundation indev @ 0x7f867f004580] [0] FaceTime HD Camera (Built-in)
  [AVFoundation indev @ 0x7f867f004580] AVFoundation audio devices:
  [AVFoundation indev @ 0x7f867f004580] [0] Cam Link 4K
  [AVFoundation indev @ 0x7f867f004580] [1] MacBook Pro Microphone
so we need to parse it to get the list of devices.
The return value contains two lists, one for video devices and one for audio devices.
Each list contains a list of cons cells, where the car is the device number and the cdr is the device name."
  (unless (string-equal system-type "darwin")
    (error "This function is currently only supported on macOS"))

  (let ((lines (string-split (shell-command-to-string "ffmpeg -list_devices true -f avfoundation -i dummy || true") "\n")))
    (cl-loop with at-video-devices = nil
             with at-audio-devices = nil
             with video-devices = nil
             with audio-devices = nil
             for line in lines
             when (string-match "AVFoundation video devices:" line)
             do (setq at-video-devices t
                      at-audio-devices nil)
             when (string-match "AVFoundation audio devices:" line)
             do (setq at-audio-devices t
                      at-video-devices nil)
             when (and at-video-devices
                       (string-match "\\[\\([0-9]+\\)\\] \\(.+\\)" line))
             do (push (cons (string-to-number (match-string 1 line)) (match-string 2 line)) video-devices)
             when (and at-audio-devices
                       (string-match "\\[\\([0-9]+\\)\\] \\(.+\\)" line))
             do (push (cons (string-to-number (match-string 1 line)) (match-string 2 line)) audio-devices)
             finally return (list (nreverse video-devices) (nreverse audio-devices)))))

(defun rk/find-device-matching (string type)
  "Get the devices from `rk/get-ffmpeg-device' and look for a device
matching `STRING'. `TYPE' can be :video or :audio."
  (let* ((devices (rk/get-ffmpeg-device))
         (device-list (if (eq type :video)
                          (car devices)
                        (cadr devices))))
    (cl-loop for device in device-list
             when (string-match-p string (cdr device))
             return (car device))))

(defcustom rk/default-audio-device nil
  "The default audio device to use for whisper.el and outher audio processes."
  :type 'string)

(defun rk/select-default-audio-device (&optional device-name)
  "Interactively select an audio device to use for whisper.el and other audio processes.
If `DEVICE-NAME' is provided, it will be used instead of prompting the user."
  (interactive)
  (let* ((audio-devices (cadr (rk/get-ffmpeg-device)))
         (indexes (mapcar #'car audio-devices))
         (names (mapcar #'cdr audio-devices))
         (name (or device-name (completing-read "Select audio device: " names nil t))))
    (setq rk/default-audio-device (rk/find-device-matching name :audio))
    (when (boundp 'whisper--ffmpeg-input-device)
      (setq whisper--ffmpeg-input-device (format ":%s" rk/default-audio-device)))))




;; *** wttrn
(use-package wttrin
  :init
  (setq wttrin-default-cities '("Oklahoma City" "Chapel Hill")
        wttrin-default-accept-language '("Accept-Language" . "en-US")))

;; (use-package wttrin-weather-modeline
;;    :load-path "/Users/blaine/emacs30/manual-packages/wttrin-weather-modeline/")


;; ** Y
;; *** yasnippet related
(use-package yasnippet
  :config
  (yas-global-mode 1))
(global-set-key "\C-o" 'yas-expand)
(global-set-key "\C-c y i" 'yas-insert-snippet)
(global-set-key "\C-c y n" 'yas-new-snippet)



;; load hydras
(use-package my-hydras
  :load-path "~/emacs30/my-hydras/")


;; A cool hydra for finding snippets at point. Invoke with C-c y.
(use-package hydra
  :defer 2
  :bind ("C-c y" . hydra-yasnippet/body))

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

(use-package license-snippets
    :load-path "/Users/blaine/emacs30/manual-packages/license-snippets")
(license-snippets-init)


;; *** Z


;; ƒ(use-package zetteldesk)
;; ƒ(zetteldesk-mode 1)
;; ƒ(setq zetteldesk-kb-hydra-prefix (kbd "C-c z"))
;; ƒ(use-package zetteldesk-kb)



(setq orb-preformat-keywords '("citekey" "author" "date" "entry-type" "keywords" "url" "file" "journaltitle" "note" "annote"))

(setq bibtex-export-capture-template
'(("b" "bibliographic entry" plain "%?" :if-new
   (file+head "ref/${citekey}.org" "#+title: ${title}\n
- keywords :: ${keywords}
- tags :: ${note}

* ${entry-type} by ${author} in ${journaltitle}, ${date}\n
${annote}")
   :unnarowed t
   :jump-to-captured t
   :immediate-finish t)))

(defun bibtex-export-org-roam (citekey)
  "Export a bibtex entry to an org-roam file.

If called interactively, select a citekey using
`citar-select-ref'.  Otherwise, give a citekey and with that, set
`org-roam-capture-templates' to `bibtex-export-capture-template',
a template specifically for this purpose and run `orb--new-note'
on that citekey using that template."
  (interactive (list (citar-select-ref)))
  (let ((org-roam-capture-templates bibtex-export-capture-template))
    (orb--new-note citekey)))




;; A new snippet can be created in a new buffer with the command C-c & C-n
;; The key binding is a little awkward but this is a very fast way to generate new snippets.
;; Enter C-c C-c when finished with the snippet.
;; I modified the default template for a new template by adding the group field.
;; This code resides in custom.el.
;; I include it here for future reference if I delete the custom.el file.
;; '(yas-new-snippet-default
;;   "# -*- mode: snippet -*-\12# name: ${1:name} \12# group: ${2:group}\12# key: ${3:${1:$(yas--key-from-desc yas-text)}}\12# --\12$0`(yas-escape-text yas-selected-text)`"))

;; Better yet. Redefine the snippet.
;; However, you cannot use defcustom inside the init.el file.
;; (defcustom yas-new-snippet-default "\
;; # -*- mode: snippet -*-
;; # name: $1
;; # key: $2
;; # group: $3
;; # contributor: Blaine Mooers bmooers1@gamil.com
;; # --
;; $0`(yas-escape-text yas-selected-text)`"
;;   "Default snippet to use when creating a new snippet.
;; If nil, don't use any snippet."
;;   :type 'string)


;; This hack works well enough.
(customize-set-variable 'yas-new-snippet-default "\
# -*- mode: snippet -*-
# name: $1
# key: $2
# group: $3
# contributor: Blaine Mooers bmooers1@gamil.com
# --
$0`(yas-escape-text yas-selected-text)`"
                        "Default snippet to use when creating a new snippet.
If nil, don't use any snippet.")


;;(let ((yas-new-snippet-default my-yas-new-snippet-default)))


;; Set the web browser to the system default browser
(setq browse-url-browser-function 'browse-url-default-macosx-browser)

;; (setq browse-url-browser-function 'browse-url-generic
;;       browse-url-generic-program "Google\ Chrome")

(message "config • Finished package configuration. You now may enjoy Emacs.")

;; Start server.
;; Enter `M-x server-force-delete’ to disconnect the server.
;; (require 'server)
;; (unless (server-running-p)
;;   (server-start))
;; (message "Using emacs server.")


(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

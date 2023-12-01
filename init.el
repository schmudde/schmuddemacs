;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file (concat user-emacs-directory "config.org"))

;; settings for .txt files
(add-to-list 'auto-mode-alist '("\\.txt$" . text-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'visual-line-mode)

(let ((default-directory "~/.emacs.d/elpa"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(global-prettify-symbols-mode 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                                  "%b"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(cider-boot-command "boot" nil nil "tried `boot dev`. no luck")
 '(deft-auto-save-interval 0.0)
 '(deft-case-fold-search t)
 '(deft-directory "/home/schmudde/Dropbox/notes")
 '(deft-recursive t)
 '(deft-use-filename-as-title t)
 '(denote-backlinks-show-context t)
 '(denote-directory "/home/schmudde/Dropbox/notes/zettelkasten")
 '(denote-infer-keywords nil)
 '(denote-known-keywords
   '("sts" "doing" "personal" "informatics" "suchness" "tools" "emacs" "clojure"))
 '(desktop-restore-in-current-display t)
 '(desktop-save-mode t)
 '(doc-view-dvipdf-program "nil")
 '(doc-view-dvipdfm-program "nil")
 '(erc-autojoin-channels-alist '(("freenode.net" "#clojure" "##Atari")))
 '(erc-autojoin-delay 30)
 '(erc-autojoin-mode t)
 '(erc-autojoin-timing 'ident)
 '(erc-button-mode t)
 '(erc-fill-mode t)
 '(erc-irccontrols-mode t)
 '(erc-list-mode t)
 '(erc-match-mode t)
 '(erc-menu-mode t)
 '(erc-move-to-prompt-mode t)
 '(erc-netsplit-mode t)
 '(erc-networks-mode t)
 '(erc-nick "")
 '(erc-noncommands-mode t)
 '(erc-notifications-icon nil)
 '(erc-notifications-mode t)
 '(erc-pcomplete-mode t)
 '(erc-prompt-for-password t)
 '(erc-readonly-mode t)
 '(erc-ring-mode t)
 '(erc-sound-mode t)
 '(erc-stamp-mode t)
 '(erc-track-minor-mode t)
 '(erc-track-mode t)
 '(eww-search-prefix "https://html.duckduckgo.com/html?q=")
 '(gptel-use-curl nil)
 '(ispell-dictionary nil)
 '(ledger-reports
   '(("test" "ledger ")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(lsp-clojure-custom-server-command "/usr/local/bin/clojure-lsp")
 '(org-agenda-files '("~/Dropbox/org/inbox.org" "~/Dropbox/org/yorba.org"))
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-file-apps
   '((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default)))
 '(org-todo-keywords
   '((sequence "TODO(t)" "DOING(p)" "|" "ABANDONED(a)" "DONE(d)")))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")))
 '(package-selected-packages
   '(ob-http org-transclusion denote jinx consult corfu marginalia orderless vertico elfeed org-pomodoro magit exec-path-from-shell clj-refactor clojure-snippets yasnippet paredit flycheck flycheck-clj-kondo flycheck-clojure flymake lsp-ui deft lsp-mode cider multiple-cursors typescript-mode projectile malyon which-key pinboard pocket-reader ob-restclient go-translate elpher pass use-package adaptive-wrap ledger-mode restclient htmlize cljsbuild-mode clojure-cheatsheet websocket spinner queue oauth2 markdown-preview-eww emojify circe alert))
 '(safe-local-variable-values
   '((eval progn
           (defun dev
               (function-name)
             "call dev(s) functions specifying function name"
             (interactive "sdev/function: ")
             (with-current-buffer
                 (current-buffer)
               (cider-interactive-eval
                (format "(dev/%s)" function-name))))
           (defun portal nil "call dev/portal"
                  (interactive)
                  (with-current-buffer
                      (current-buffer)
                    (cider-interactive-eval "(dev/portal)")))
           (defun portal-clear nil "call dev/portal-clear"
                  (interactive)
                  (with-current-buffer
                      (current-buffer)
                    (cider-interactive-eval "(dev/portal-clear)")))
           (defun portal-close nil "call dev/portal-close"
                  (interactive)
                  (with-current-buffer
                      (current-buffer)
                    (cider-interactive-eval "(dev/portal-close)"))))
     (cider-refresh-after-fn . "server.repl/post-refresh")
     (cider-refresh-before-fn . "server.repl/pre-refresh")))
 '(send-mail-function 'smtpmail-send-it)
 '(setq erc-autojoin-channels-alist)
 '(simplenote2-markdown-notes-mode 'markdown-mode)
 '(smtp-default-server "mail.runbox.com" nil nil "Runbox Secure/Encrypted SMTP")
 '(smtp-server nil)
 '(smtp-service "465")
 '(smtpmail-smtp-server "smtp.googlemail.com")
 '(smtpmail-smtp-service 25)
 '(tls-checktrust nil)
 '(windmove-wrap-around t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-blue ((t (:background "#2fafff" :foreground "#2fafcf"))))
 '(lsp-ui-peek-line-number ((t (:inherit shadow))))
 '(tty-menu-disabled-face ((t (:background "#2277bb" :foreground "gray70"))))
 '(tty-menu-enabled-face ((t (:background "#2277bb" :foreground "gray85" :weight bold))))
 '(tty-menu-selected-face ((t (:background "#449bce")))))

(define-key input-decode-map "\e[1;2A" [S-up])
(windmove-default-keybindings)

(setq browse-url-browser-function 'eww-browse-url)
(put 'upcase-region 'disabled nil)

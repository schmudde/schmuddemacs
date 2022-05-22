;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; settings for .txt files
(add-to-list 'auto-mode-alist '("\\.txt$" . text-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'visual-line-mode)

(org-babel-load-file (concat user-emacs-directory "config.org"))

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

;; figwheel for cider
;; (require 'cider)
;; (setq cider-cljs-lein-repl
;;       "(do (require 'figwheel-sidecar.repl-api)
;;            (figwheel-sidecar.repl-api/start-figwheel!)
;;           (figwheel-sidecar.repl-api/cljs-repl))")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(desktop-restore-in-current-display t)
 '(desktop-save-mode t)
 '(doc-view-dvipdf-program "nil")
 '(doc-view-dvipdfm-program "nil")
 '(elfeed-feeds
   '("https://tirkarthi.github.io/" "http://rss.slashdot.org/Slashdot/slashdot"))
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
 '(ledger-reports
   '(("test" "ledger ")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(org-agenda-files '("~/Dropbox/org/inbox.org" "~/Dropbox/org/yorba.org"))
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-file-apps
   '((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default)))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(pinboard pocket-reader ob-restclient go-translate elpher pass calfw-ical calfw use-package adaptive-wrap ledger-mode magit clj-refactor restclient go htmlize multiple-cursors 4clojure cider clojure-essential-ref-nov clojure-mode markdown-mode cljsbuild-mode clojure-cheatsheet websocket spinner queue oauth2 markdown-preview-eww emojify circe alert))
 '(safe-local-variable-values
   '((eval setenv "GOOGLE_APPLICATION_CREDENTIALS" "/home/schmudde/work/yorba/yorba-pubsub-resources.json")
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
 '(menu ((t (:background "brightwhite" :foreground "blue" :inverse-video t))))
 '(tty-menu-enabled-face ((t (:background "blue" :foreground "brightblack" :weight bold)))))

(define-key input-decode-map "\e[1;2A" [S-up])
(windmove-default-keybindings)

(setq browse-url-browser-function 'eww-browse-url)
(put 'upcase-region 'disabled nil)

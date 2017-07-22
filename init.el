
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; settings for .txt files
(add-to-list 'auto-mode-alist '("\\.txt$" . text-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'visual-line-mode)

(let ((default-directory "~/.emacs.d/elpa"))
  (normal-top-level-add-subdirs-to-load-path))

;; keep my code tidy
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
;; ?? (setq-default tab-width 8) ;; but maintain correct appearance
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph
;; Unfill Paragraph: https://www.emacswiki.org/emacs/UnfillParagraph
;; Alternative - Unfill Region (not implemented): https://www.emacswiki.org/emacs/UnfillRegion
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
        ;; This would override `fill-column' if it's an integer.
        (emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))
;; Handy key definition
(define-key global-map "\M-Q" 'unfill-paragraph)


(transient-mark-mode 1)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; delete the selection with a keypress
(delete-selection-mode t)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

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


;; set up ido mode
(require `ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; figwheel for cider
;; (require 'cider)
;; (setq cider-cljs-lein-repl
;;       "(do (require 'figwheel-sidecar.repl-api)
;;            (figwheel-sidecar.repl-api/start-figwheel!)
;;           (figwheel-sidecar.repl-api/cljs-repl))")

;; simplenote
(require 'simplenote2)
;; login/password
(simplenote2-setup)

;; mu4e
;; make sure mu4e is in your load-path
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
(require 'mu4e)

;; mu4e-maildir

;; these must start with a "/", and must exist
;; (i.e.. /home/user/Maildir/sent must exist)
;; you use e.g. 'mu mkdir' to make the Maildirs if they don't already exist
;; below are the defaults; if they do not exist yet, mu4e offers to
;; create them. they can also functions; see their docstrings.
(setq mu4e-sent-folder   "/Sent-1")
(setq mu4e-drafts-folder "/Drafts-1")
(setq mu4e-trash-folder  "/Trash")

;; smtp mail setting; these are the same that `gnus' uses.
;; Port 465?
;; (setq
;;    message-send-mail-function   'smtpmail-send-it
;;    smtpmail-default-smtp-server "mail.runbox.com"
;;    smtpmail-smtp-server         "mail.runbox.com"
;;   smtpmail-local-domain        "example.com")

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
 '(erc-autojoin-channels-alist (quote (("freenode.net" "#clojure" "##Atari"))))
 '(erc-autojoin-delay 30)
 '(erc-autojoin-mode t)
 '(erc-autojoin-timing (quote ident))
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
 '(eww-search-prefix "https://www.google.com/search?q=")
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (multiple-cursors cider cljsbuild-mode clojure-cheatsheet clojure-mode websocket use-package spinner simplenote2 queue pkg-info oauth2 markdown-preview-eww markdown-mode emojify circe alert)))
 '(send-mail-function (quote smtpmail-send-it))
 '(setq erc-autojoin-channels-alist)
 '(simplenote2-markdown-notes-mode (quote markdown-mode))
 '(smtp-default-server "mail.runbox.com" nil nil "Runbox Secure/Encrypted SMTP")
 '(smtp-server nil)
 '(smtp-service "465")
 '(smtpmail-smtp-server "smtp.googlemail.com")
 '(smtpmail-smtp-service 25)
 '(windmove-wrap-around t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(define-key input-decode-map "\e[1;2A" [S-up])
(windmove-default-keybindings)

(setq browse-url-browser-function 'eww-browse-url)

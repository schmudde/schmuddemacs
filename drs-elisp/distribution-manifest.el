;;;  -*- lexical-binding: t; -*-

(require 'url-util)
(require 'cl-lib)
(require 'org)

(defvar drs/tag-subreddits
  '(("sts"         . (("r/Archiveteam"          . "Archiveteam")
                       ("r/CriticalMediaTheory"  . "CriticalMediaTheory")
                       ("r/DeadInternetTheory"   . "DeadInternetTheory")
                       ("r/GoodInternet"         . "GoodInternet")
                       ("r/hicetnunc"            . "hicetnunc")
                       ("r/internetgovernance"   . "internetgovernance")
                       ("r/InternetIsBeautiful"  . "InternetIsBeautiful")
                       ("r/ObscureMedia"         . "ObscureMedia")
                       ("r/oldinternet"          . "oldinternet")
                       ("r/Open_Science"         . "Open_Science")
                       ("r/permaweb"             . "permaweb")
                       ("r/privacy"              . "privacy")
                       ("r/PrivacyGuides"        . "PrivacyGuides")
                       ("r/privateinternet"      . "privateinternet")
                       ("r/Rad_Decentralization" . "Rad_Decentralization")
                       ("r/SpartanWeb"           . "SpartanWeb")
                       ("r/StallmanWasRight"     . "StallmanWasRight")
                       ("r/yesyesyesno"          . "yesyesyesno")))
    ("art"         . (("r/ContemporaryArt"      . "ContemporaryArt")
                      ("r/creativecoding"       . "creativecoding")
                      ("r/NewMediaArts"         . "NewMediaArts")
                      ("r/classicalmusic" . "classicalmusic")
                      ("r/industrialmusic" . "industrialmusic")))
    ("personal"    . (("r/centralillinois" . "centralillinois")
                       ("r/Coil"           . "Coil")
                       ("r/italianlearning" . "italianlearning")
                       ("r/ItalyExpat"     . "ItalyExpat")
                       ("r/tarkovsky"      . "tarkovsky")
                       ("r/torino"         . "torino")
                       ("r/yorba"          . "yorba")))
    ("informatics" . (("r/Clojure"              . "Clojure")
                       ("r/cellular_automata"    . "cellular_automata")
                       ("r/compsci"              . "compsci")
                       ("r/datascience"          . "datascience")
                       ("r/datasets"             . "datasets")
                       ("r/proceduralgeneration" . "proceduralgeneration")
                       ("r/programming"          . "programming")
                       ("r/programmingcirclejerk" . "programmingcirclejerk")
                       ("r/technology"           . "technology")
                       ("r/Wikidata"             . "Wikidata")))
    ("suchness"    . (("r/HistoryofIdeas" . "HistoryofIdeas")
                       ("r/mathpics"       . "mathpics")))
    ("tools"       . (("r/beeper"            . "beeper")
                       ("r/DataHoarder"       . "DataHoarder")
                       ("r/EBook_Resources"   . "EBook_Resources")
                       ("r/ebooks"            . "ebooks")
                       ("r/emacs"             . "emacs")
                       ("r/explorables"       . "explorables")
                       ("r/PKMS"              . "PKMS")
                       ("r/vintagecomputing"  . "vintagecomputing")
                       ("r/Weechat"           . "Weechat")
                       ("r/Zettelkasten"      . "Zettelkasten"))))
  "Tag -> ((label . subreddit) ...) for the tag-specific submit links.")

(defun drs/enc (s)
  (url-hexify-string (or s "")))

(defun drs/reddit-url (sub title url)
  (format "https://www.reddit.com/r/%s/submit?title=%s&url=%s&type=link"
          sub (drs/enc title) (drs/enc url)))

(defun drs/links (title url tags)
  "Return an alist of (LABEL . URL) for TITLE/URL, filtered by TAGS."
  (append
   (list (cons "Twitter / X"
               (format "https://twitter.com/intent/tweet?text=%s&url=%s"
                       (drs/enc title) (drs/enc url)))
         (cons "LinkedIn"
               (format "https://www.linkedin.com/sharing/share-offsite/?url=%s"
                       (drs/enc url)))
         (cons "Hacker News"
               (format "https://news.ycombinator.com/submitlink?u=%s&t=%s"
                       (drs/enc url) (drs/enc title)))
         (cons "Bluesky"
               (format "https://bsky.app/intent/compose?text=%s"
                       (drs/enc (concat title " " url)))))
   (cl-loop for tag in tags
            append (cl-loop for (label . sub) in (cdr (assoc tag drs/tag-subreddits))
                            collect (cons label (drs/reddit-url sub title url))))))

(defun drs/insert-checklist (title url tags)
  "Insert an Org checklist for TITLE/URL at point, filtered by TAGS. Must be called with point in an Org-mode buffer"
  (interactive
   (list (read-string "Title: ")
         (read-string "URL: ")
         (completing-read-multiple "Tags (comma-separated, RET for none): "
                                    (mapcar #'car drs/tag-subreddits))))
  (unless (derived-mode-p 'org-mode)
    (user-error "drs/insert-checklist must be run with point in an Org-mode buffer, not %s"
                major-mode))
  (insert (format "* TODO %s [/]\n:PROPERTIES:\n:URL: %s\n:END:\n" title url))
  (dolist (link (drs/links title url tags))
    (insert (format "- [ ] [[%s][%s]]\n" (cdr link) (car link))))
  (org-update-checkbox-count))


;;;;;;;;;;;;;;;;

(setq drs/reddit-feeds-new
  (append
   (mapcar (lambda (sub) (list (format "https://www.reddit.com/r/%s/new/.rss" sub) 'reddit 'sts 'bbs))
           '("Archiveteam" "CriticalMediaTheory" "DeadInternetTheory" "GoodInternet"
             "hicetnunc" "internetgovernance" "InternetIsBeautiful" "ObscureMedia"
             "oldinternet" "Open_Science" "permaweb" "privacy" "PrivacyGuides"
             "privateinternet" "Rad_Decentralization" "SpartanWeb" "StallmanWasRight"))
   (mapcar (lambda (sub) (list (format "https://www.reddit.com/r/%s/new/.rss" sub) 'reddit 'art 'bbs))
           '("ContemporaryArt" "creativecoding" "NewMediaArts" "classicalmusic" "industrialmusic"))
   (mapcar (lambda (sub) (list (format "https://www.reddit.com/r/%s/new/.rss" sub) 'reddit 'tools 'bbs))
           '("explorables" "PKMS" "Weechat" "Zettelkasten"))))

(setq elfeed-feeds (append elfeed-feeds drs/reddit-feeds-new))

(defun drs/reddit-refresh-list (feed-entries &optional gap)
  "Fetch each (URL TAG...) entry in FEED-ENTRIES one at a time,
GAP seconds apart. Entries must already be in `elfeed-feeds' —
that's where their tags come from."
  (let ((gap (or gap 90)) (i 0))
    (dolist (entry feed-entries)
      (run-at-time (* i gap) nil #'elfeed-update-feed (car entry))
      (setq i (1+ i)))
    (run-at-time (* i gap) nil
                 (lambda () (message "Reddit refresh done (%d feeds)." (length feed-entries))))))

(defun drs/reddit-refresh-new ()
  "Refresh the full new-Reddit set, tags intact, ~90s apart."
  (interactive)
  (message "Refreshing %d Reddit feeds, 90s apart — done in ~%d minutes..."
           (length drs/reddit-feeds-new)
           (round (/ (* (length drs/reddit-feeds-new) 90) 60.0)))
  (drs/reddit-refresh-list drs/reddit-feeds-new 90))

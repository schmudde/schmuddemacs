(defvar drs/dict-lookup-history nil
  "Minibuffer history for drs/lookup-prompt")

(defun drs/lookup-prompt ()
  (let ((default (thing-at-point 'word)))
    (read-string (format-prompt "Gimme a damn word" default)
                 nil 'drs/dict-lookup-history default) ))

(defun drs/lookup (word)
  (interactive (list (drs/lookup-prompt)))
  (eww (format "https://it.wiktionary.org/wiki/%s" word)))

(defun drs/ita-eng (word)
  (interactive (list (drs/lookup-prompt)))
  (dictionary-search word "fd-ita-eng"))

(defun drs/eng-ita (word)
  (interactive (list (drs/lookup-prompt)))
  (dictionary-search word "fd-eng-ita"))

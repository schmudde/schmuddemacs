(defun my-journal-show--get-today-regexp (&optional day month)
  (let* ((date (format-time-string "%d,%B,%Y"))
         (date-list (split-string date ","))
         (day (or day (nth 0 date-list)))
         (month (or month (nth 1 date-list))))
    (format "^#+ %s-%s-.*? \\(.*\\)" day month)))

(defvar my-journal-show-directory "/home/schmudde/Dropbox/notes/journal/")

(defvar my-journal-show--months
  '(("01" . "January")
    ("02" . "February")
    ("03" . "March")
    ("04" . "April")
    ("05" . "May")
    ("06" . "June")
    ("07" . "July")
    ("08" . "August")
    ("09" . "September")
    ("10" . "October")
    ("11" . "November")
    ("12" . "December")))

(defun my-journal-show--get-files (&optional month)
  (let ((month (or month (format-time-string "%m"))))
    (directory-files-recursively
     my-journal-show-directory
     (format "journal-.*?-%s\\.md" month))))

(defun my-journal-show--get-md-entry ()
  (buffer-substring-no-properties
   (line-beginning-position)
   (markdown-end-of-subtree t)))

(defvar my-journal-show-day-history nil)
(defvar my-journal-show-month-history nil)

(defun my-journal-show--prompt (prompt-text history-symbol &optional default)
  (let ((default (or default (car (symbol-value history-symbol)))))
    (read-string
     (format-prompt prompt-text default)
     nil
     history-symbol
     default)))

(defun my-journal-show-day-prompt ()
  (my-journal-show--prompt "Number of day (e.g. 07) " 'my-journal-show-day-history (format-time-string "%d")))

(defun my-journal-show-month-prompt ()
  (my-journal-show--prompt "Number of month (e.g. 07) " 'my-journal-show-month-history (format-time-string "%m")))

(defun my-journal-show--get-month-name (numeric-month)
  (alist-get numeric-month my-journal-show--months nil nil #'equal))

(defun drs-journal-show (day month)
  (interactive
   (list
    (my-journal-show-day-prompt)
    (my-journal-show-month-prompt)))
  (when-let ((files (my-journal-show--get-files month))
             (month-name (my-journal-show--get-month-name month))
             (date-regexp (my-journal-show--get-today-regexp day month-name)))
    (let ((contents nil))
      (dolist (file files)
        (with-temp-buffer
          (insert-file-contents file)
          (markdown-mode)
          (goto-char (point-min))
          (when (re-search-forward date-regexp nil :no-error)
            (push (my-journal-show--get-md-entry) contents))))
      (if contents
          (with-current-buffer (pop-to-buffer "*my-journal-show*")
            (erase-buffer)
            (insert (mapconcat #'identity contents "\n\n* * *\n\n")))
        (message "Nothing found for day %s and month %s" day month)))))

(provide 'journal-sort)

(defun org-conf--find-commit-ticket (text)
  "Find the ticket number from the input TEXT."
  (when (string-match "\\[\\(.*\\)]" text)
    (match-string 1 text)))

(defun org-conf--find-commit-msg (text)
  "Find the actual commit message from the input TEXT."
  (when (string-match "\\[.*\\]\\s-+\\(\\(.\\|\n\\)*\\)" text)
    (match-string 1 text)))

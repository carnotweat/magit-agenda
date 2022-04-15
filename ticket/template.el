(setq org-capture-templates
      `(("w" "Work Templates")

        ("wc" "Commit Ticket"
         entry
         (file+olp+datetree ,(concat org-directory "/agenda/tickets.org.gpg"))
         ,(string-join
           (list "* %(org-conf--find-commit-ticket (org-conf--retrieve-commit-text)) :dev:"
                 ":LOGBOOK:"
                 ":added: %T"
                 ":END:"
                 "%(org-conf--find-commit-msg (org-conf--retrieve-commit-text))%?")
           "\n")
         :clock-resume t
         :tree-type week)))

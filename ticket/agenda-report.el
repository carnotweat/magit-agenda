(setq org-agenda-custom-commands
      `(("c" "Weekly Commit Tickets"
         ((agenda "" ((org-agenda-files (list ,(concat org-directory "/agenda/tickets.org.gpg")))
                      (org-agenda-span 'week)
                      (org-agenda-start-on-weekday 1)
                      (org-agenda-overriding-header "Worked on tickets: ")
                      (org-agenda-time-grid nil)))))))

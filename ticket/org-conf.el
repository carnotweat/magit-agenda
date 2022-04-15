(defun org-conf--retrieve-commit-text ()
  "Return INITIAL or try to call git-commit-buffer-message."
  (cond
   ((let ((captured (org-capture-get :initial)))
      (when captured captured)))

   ((fboundp 'git-commit-buffer-message)
    (with-current-buffer (org-capture-get :original-buffer)
      (git-commit-buffer-message)))

   ((t nil))))

(setq backup-directory-alist `(("." . "~/.saves")))

(require 'org-install)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-clock-x11idle-program-name "xprintidle")
(setq org-hierarchical-todo-statistics nil)
(setq org-log-done t)
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE")
        (sequence "CL" "PENDING" "MAILED" "|" "SUBMITTED" "ABANDONED")))

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   ))
(setq org-confirm-babel-evaluate nil)

(add-to-list 'org-structure-template-alist
             '("sh" "#+BEGIN_SRC sh\n?\n#+END_SRC" ""))
(add-to-list 'org-structure-template-alist
             '("r" "#+RESULTS:\n" ""))

(color-theme-initialize)
(color-theme-ld-dark)

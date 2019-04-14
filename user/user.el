

(require 'ox-ipynb)
(require 'ox-rst) ; rst export backend
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "ipython")
;; (defun python-shell-completion-native-try()
;;   "Return non-nil if can trigger native completion."
;;   (with-eval-after-load 'python
;;     '(let ((python-shell-completion-native-enable t)
;; 	   (python-shell-completion-native-output-timeout))
;;        (python-shell-completion-native-get-completions
;; 	(get-buffer-process (current-buffer))
;; 	nill "_")))
;;   )
;; if want a different python attached to each buffer
;; (add-hook 'elpy-mode-hook (lambda () (elpy-shell-toggle-dedicated-shell 1)))



;; elpy-shell-codecell-beginning-regexp
;; "^\\(?:##.*\\|#\\s-*<codecell>\\|#\\s-*In\\[.*\\]:\\)\\s-*$"

;; (defcustom elpy-shell-cell-boundary-regexp
;;   (concat "^\\(?:"
;;           "##.*" "\\|"
;;           "#\\s-*<.+>" "\\|"
;;           "#\\s-*\\(?:In\\|Out\\)\\[.*\\]:"
;;           "\\)\\s-*$")
;;   "Regular expression for matching a line indicating the boundary
;; of a cell (beginning or ending). By default, lines starting with
;; ``##`` are treated as a cell boundaries, as are the boundaries in
;; Python files exported from IPython or Jupyter notebooks (e.g.,
;; ``# <markdowncell>``, ``# In[1]:'', or ``# Out[1]:``)."
;;   :type 'string
;;   :group 'elpy)

;; (defcustom elpy-shell-codecell-beginning-regexp
;;   (concat "^\\(?:"
;;           "##.*" "\\|"
;;           "#\\s-*<codecell>" "\\|"
;;           "#\\s-*In\\[.*\\]:"
;;           "\\)\\s-*$")
;;   "Regular expression for matching a line indicating the
;; beginning of a code cell. By default, lines starting with ``##``
;; are treated as beginnings of a code cell, as are the code cell
;; beginnings (and only the code cell beginnings) in Python files
;; exported from IPython or Jupyter notebooks (e.g., ``#
;; <codecell>`` or ``# In[1]:``).

;; Note that `elpy-shell-cell-boundary-regexp' must also match
;; the code cell beginnings defined here."
;;   :type 'string
;;   :group 'elpy)

;; user fix for jupyter/ipython warning messages problem in ob-ipython--collect-json
;; (advice-add 'ob-ipython--collect-json :before
;; 	    (lambda (&rest args)
;;               (when (re-search-forward "{" nil t)
;; 		(backward-char))))


;(python-flymake-command (quote ("flake8"))) ; try this

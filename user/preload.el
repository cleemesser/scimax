(setenv "ANACONDA_HOME" "/usr/local/anaconda3")
(setenv "WORKON_HOME" "/usr/local/anaconda/envs")
(add-to-list 'exec-path "/usr/local/anaconda/bin")

;;;;;
(setq newshell-num 1)
(defun newshell ()
  (interactive)
  (shell)
  (rename-buffer (concat "sh" (int-to-string newshell-num)))
  (setq newshell-num (+ newshell-num 1))
  )
(setq shell 'newshell)

(define-key global-map "\M-l" 'goto-line)
(put 'narrow-to-region 'disabled nil)
;;;;;
(add-to-list 'load-path "~/.emacs.d/local") ; add my local libraries

;; fix
;; (setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt")
;; (setq python-shell-interpreter "jupyter"
;;       python-shell-interpreter-args "console --simple-prompt")

;(setq python-shell-interpreter "jupyter"
;      python-shell-interpreter-args "console --simple-prompt"
;      python-shell-prompt-detect-failure-warning nil)

(setq python-shell-interpreter "ipython" python-shell-interpreter-args
      "-i --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)

;; don't think I need this any more
;; (defun python-shell-completion-native-try()
;;   "Return non-nil if can trigger native completion."
;;   (with-eval-after-load 'python
;;     '(let ((python-shell-completion-native-enable t)
;;            (python-shell-completion-native-output-timeout))
;;        (python-shell-completion-native-get-completions
;;         (get-buffer-process (current-buffer))
;;         nill "_")))
;;   )

					;(custom-set-faces
					; '(font-lock-comment-face ((t (:foreground "#8D8D84") (:slant "normal"))))
					; )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; '(font-lock-comment-face ((t (:foreground "SpringGreen3" :slant normal))))
 '(font-lock-comment-face ((t (:foreground "#8D8D84" :slant normal))))
 )

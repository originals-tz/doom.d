(defun cpp-run ()
  (interactive)
  ;; get the result of compilation
  (setq-local result (shell-command
                      (concat "g++ -std=c++11 -g "
                              (file-name-nondirectory buffer-file-name)
                              " -o /tmp/"
                              (file-name-base buffer-file-name))))
  ;; if compile successfully, run the program
  (if (eq result 0)
      (shell-command (concat "/tmp/" (file-name-base buffer-file-name)))
    )
  )

(setq leetcode-prefer-language "cpp")
(setq leetcode-prefer-sql "mysql")
(setq leetcode-save-solutions t)
(setq leetcode-directory "~/leetcode")

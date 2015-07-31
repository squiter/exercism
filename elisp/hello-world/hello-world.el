;;; hello-world.el --- Hello World Exercise (exercism)

;;; Commentary:

;;; Code:
(defun hello (&optional name)
  (if name
      (message "Hello, %s!" name)
    (message "Hello, World!"))
  )

(provide 'hello-world)
;;; hello-world.el ends here

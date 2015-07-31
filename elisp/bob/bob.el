;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:
(defun response-for (sentence)
  "Function to respond to every question as SENTENCE."
  (cond ((string-blank-p sentence) "Fine. Be that way!")
        ((yells sentence) "Whoa, chill out!")
        ((is_a_question sentence) "Sure.")
        (t "Whatever.")))

(defun yells (sentence)
  "Function to check a possible yells as SENTENCE."
  (or (equal (substring sentence -1 nil) "!")
      (let ((case-fold-search nil))
        (string-match "^[[:upper:][:space:]]*$" (substring sentence 0 -1)))))

(defun is_a_question (sentence)
  "Function to check if a frase as SENTENCE is a question."
  (equal (substring sentence -1 nil) "?"))

(provide 'bob)
;;; bob.el ends here

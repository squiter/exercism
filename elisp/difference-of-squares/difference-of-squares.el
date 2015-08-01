;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:
(defun sums-of (number)
  "Sum of all natural numbers in number as NUMBER."
  (let ((i 1)
        (total 0))
    (while (<= i number)
      (setq total (+ total i))
      (setq i (1+ i)))
    total))

(defun sum-of-squares (number)
  "Sum the square all natural numbers in number as NUMBER."
  (let ((i 1)
        (total 0))
    (while (<= i number)
      (setq total (+ total (square-of i)))
      (setq i (1+ i)))
    total))

(defun square-of (num)
  "Get the square of num as NUM."
  (expt num 2))

(defun square-of-sums (num)
  "Get the square of sum of nums as NUM."
  (square-of (sums-of num)))

(defun difference (num)
  "Difference of square-of-sums and sum-of-squares using num as NUM."
  (- (square-of-sums num) (sum-of-squares num)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here

(define-module my-basic (export-all))
(select-module my-basic)

;; (while pred b1 ...)
(define-syntax while
  (syntax-rules ()
    ((_ pred b1 ...)
     (let loop () (when pred b1 ... (loop))))))

;; (for (i from to) b1 ...)
(define-syntax for
  (syntax-rules ()
    ((_ (i from to) b1 ...)
     (let loop ((i from))
       (when (< i to) b1 ... (loop (+ i 1)))))))

(provide "my-basic")

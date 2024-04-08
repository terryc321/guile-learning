
;; run M-x connect-to-guile
;; from geiser
;; default localhost port 37146

;; cannot loop in client else server will not get updated
;; (define (endless)
;;   (set! *value* (+ *value* 1))
;;   (endless))

(define (endless)
  (set! *value* (+ *value* 1)))



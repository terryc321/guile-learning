
#|

need to get a coop repl server started for guile to communicate to geiser
then can use emacs to send commands over socket to running guile program
+ live coding

|#

(use-modules (system repl coop-server))

(define *value* 0)
(define *server* #f)

;; call this first to spawn coop server
(define (init)
  (set! *server* (spawn-coop-repl-server))
  (format #t "server started ~a ~%" *server*))

	

;; simulate an infinite loop program
(define (event-loop)
  (format #t "value = ~a~%" *value*)
  (poll-coop-repl-server *server*)
  (event-loop)
  )

(init)
(event-loop)


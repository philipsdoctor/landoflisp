(defun next-guess (high low)
  (ash (+ high low) -1))

(defun running (high low)
  (let ((guess (next-guess high low)))
    (print "I guess ")
    (print guess)
    (let ((command (read-line)))
      (cond
       ((string= "bigger" command) (running high (1+ guess)))
       ((string= "smaller" command) (running (1- guess) low))
       ((string= "right" command) (EXT:EXIT))))))

(defun start-game ()
  (running 100 0))

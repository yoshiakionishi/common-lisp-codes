; INTERVAL GROUPER
; Yoshiaki Onishi, October 21, 2020
; First inlet takes list of midicents out of chord-seq object.
; Second inlet takes a list of intervals (in midicents) to be grouped.
; First the function flattens the list to process.
; It's a looping function, where if the interval between two notes match with one
; of the intervals designated in the second inlet, the two notes are grouped to form an interval.
;
; Created at the request of Santiago Beis. My first attempt in making a lisp function.


(defun interval-grouper (chord-seq-lmidic list-of-intervals)

;define function to be executed *within* the interval-grouper function
;############################
	(defun flatten (templist)
    	(if (null templist) nil
        (if (atom (first templist))
            (cons (first templist) (flatten (rest templist)))
            (append (flatten (first templist)) (flatten (rest templist))))))
;############################

(setq newlmidic (flatten chord-seq-lmidic)) ; that is, newlmidic is flattened version of the list
(print newlmidic)

(setq lenlist (length newlmidic))
(loop for n from 0 to (- lenlist 1)
		if 	(and (<= n (- lenlist 2) )
			(loop for interval in list-of-intervals thereis
				(= (abs (- (nth n newlmidic) (nth (+ n 1) newlmidic))) interval)))
			collect (list (nth n newlmidic)(nth (+ n 1) newlmidic))
			and do (setq n (+ n 1))
		else
			collect (nth n newlmidic)
)
)

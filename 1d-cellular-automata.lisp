; 1D-CELLULAR-AUTOMATA
; Yoshiaki Onishi, October 27, 2020
; This function simulates 1d cellular automaton with a set of production rules.
; First inlet takes the axiom (initial list). It must be a list of 0 and 1.
; Second inlet takes an atomic number of how many times it will be repeated.


(defun 1d-cellular-automata (orig-list iteration)

(setq
  iii (list 1 1 1)
  iio (list 1 1 0)
  ioi (list 1 0 1)
  ioo (list 1 0 0)
  oii (list 0 1 1)
  oio (list 0 1 0)
  ooi (list 0 0 1)
  ooo (list 0 0 0)
  evallist orig-list
  newlist evallist
  )

  (defun circular-nth-flat (number0 list0)
    (setq list1 (append list0 list0) reverse-list0 (reverse list1))

       (if (< number0 0) ;if the nth value is a negative value
         (nth (- (abs number0) 1) reverse-list0)
         ;nth value turns into abs. value - 1 and applied to reversed list
         (nth number0 list1)
         ;else returns the nth value
       )
  )

  (defun evaluation-process (list3)
    (loop for y from 0 to (- (length list3) 1)
    do (setq evaluating-list
      (list (circular-nth-flat (- y 1) list3)
      (circular-nth-flat y list3)
        (circular-nth-flat (+ y 1) list3)))
        if (or  (equal evaluating-list iii)
                (equal evaluating-list ioi)
                (equal evaluating-list oio)
                (equal evaluating-list ooo))
       collect 0
        else if (or  (equal evaluating-list iio)
                (equal evaluating-list ioo)
                (equal evaluating-list oii)
                (equal evaluating-list ooi))
        collect 1
    )
  )


(print newlist)
(cons newlist
	(loop for x from 0 to (- iteration 1)
	do (setq evallist (evaluation-process evallist))
	do (print evallist)
	collect evallist)
)

)

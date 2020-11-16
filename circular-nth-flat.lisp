; CIRCULAR-NTH-FLAT
; Yoshiaki Onishi, October 26, 2020
; nth function, except it can handle a negative integer for "nth" value of
; the list.
; NB: "xth" inlet accepts number of ±(length list-to-be-processed)

(defun circular-nth-flat (xth list-to-be-processed)

(setq double-list (list list-to-be-processed list-to-be-processed) reverse-list-to-be-processed (reverse double-list))

  	 (if (< xth 0) ;if the nth value is a negative value
			 (nth (- (abs xth) 1) reverse-list-to-be-processed)
       ;nth value turns into abs. value - 1 and applied to reversed list
	     (nth xth double-list)
       ;else returns the nth value
     )
)

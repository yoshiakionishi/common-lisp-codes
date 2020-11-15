(defun circular-list (items)
  (setf (cdr (last items)) items))

(defun circular-nth (xth list-to-be-processed)
(setq reverse-list-to-be-processed (reverse list-to-be-processed))
  	 (if (< xth 0) ;if the nth value is a negative value
			 (nth (- (abs xth) 1) (circular-list reverse-list-to-be-processed))
       ;nth value turns into abs. value - 1 and applied to reversed list
	     (nth xth (circular-list list-to-be-processed))
       ;else returns the nth value
     )
)

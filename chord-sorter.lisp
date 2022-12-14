; Chord Sorter - Yoshiaki Onishi, Dec. 13, 2022
; Prompt from OpenMusic Facebook Group:  If a chord appears multiple times in different transpositions, 
; only the lowest chord should be retained. Example: ((6000 6700) (6700 7400) (7200 7900)) --> ((6000 6700))

(defun chord-sorter (list-of-chords)

(setq dict-chord (loop for sublist in list-of-chords
	do (sort sublist #'<)
	collect (loop for x in sublist for y in (rest sublist) collect (- y x))
	))

(setq dict-chord-without-duplicates (remove-duplicates dict-chord :test #'equal))

(setq chord-category 
	(loop for interval-pattern in dict-chord-without-duplicates
	collect (cons interval-pattern (loop for chord in list-of-chords 
			if (equal interval-pattern (loop for x in chord for y in (rest chord) collect (- y x)))
			collect chord))
	)
)

(setq collect-chords-only
	(loop for chord-set in chord-category
		collect (rest chord-set)
	)
)	

(setq sort-chords
	(loop for chords in collect-chords-only
	do (setq chords-to-be-sorted chords)
	collect (first (sort chords-to-be-sorted #'< :key #'car))
	)
)
)		
		
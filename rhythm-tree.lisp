(?                        ; how many measures there are (if left ?, OM will
                          ;   compute voice's rhythm information per measure
  (                       ;
    (                     ; measure 1
      (4 8)               ; time signature also 4//8 without enclosing
                          ;   parentheses will work.
        (                 ; info about proportion of the rhythm within a bar
          (4 (1 1 1 1))   ; proportion 1 (divide the measure into four (4) equal
                          ;   (1 1 1 1) proportion)
        )
    )

    (                     ; measure 2
      (4 8)
        (
          (1 (1))         ; proportions 1 and 2 (first divide the measure into
                          ;   the proportion of 1 then 3 (one eighth note + one
                          ;   dotted quarter)
          (3 (1))         ; where the first proportion is divided into three
                          ;   equidistant divisions (8th note -> 16th triplet)
        )                 ; then the second proportion is divided into six
                          ;   (one dotted quarter / 6 = 6 eighth notes), and
                          ;   built with four note events:
    )                     ;     2 = quarter note; 1 = eighth note.

  )
)


(?
  (
    (
      (4 4)
        (
          (2 (1 1 1 1))
          (2 (2 1 1))
        )
    )
    (
      (4 4)
        (
          (1 (1.0))
        )
    )
  )
)


(?
  (
    (
      (3 4)
        (
          (1 (1))
          (1 (1 1 1))
          (1 (1))
          (1 (1 1 1))
          (2 (1 1)))
        )
    (
      (3 4)
        (
          (1 (1))
          (1 (1 1 1))
          (1 (1))
          (1 (1 1 1))
          (2 (1 1 1 1 1 1))
        )
    )
  )
)




(?
  (
    (
      (3 4)
      (
        (2 (-1))
        (1 (3 1))
      )
    )
    (
      (3 4)
      (
        1 1 1
      )
    )
    (
      (3 4)
      (
        (2 (1))
        (1 (3 1))
      )
    )
    (
      (3 4)
      (
        1 1 1
      )
    )
    (
      (3 4)
      (
        (2 (1))
        (1 (3 1))
      )
    )
    (
      (3 4)
      (
        (2 (1 1))
        (1 (3 1))
      )
    )
    (
      (3 4)
    (
      (2 (1 1))
      (1 (3 1))
    )
    )
    (
      (3 4)
    (
      1 1 1
    )
  )
  (
  (3 4)
  (
    (2 (1))
    (1 (-1))
  )
    )
  )
)





(? (((4 8) ((1 (1)) (3 (1))))))

(? (((4 8) ((1 (1 1 1)) (3 (2 2 1 1))))))

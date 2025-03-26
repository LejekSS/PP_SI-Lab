(define (domain hanoi) 
  (:requirements :adl)
  (:types disk rod)
  (:constants x y z - rod)
  (:predicates
    (on-rod ?x ?y)
    (on-top ?x ?y)
    (on-bottom ?x)
    (clear ?x)
    (bigger ?x ?y)
    (empty ?y)
  )
  (:action przesun-na-pusty
    :parameters (?x - disk ?y - rod ?z - rod)
    :precondition 
    (and
        (on-rod ?x ?y)
        (clear ?x)
        (empty ?z)
    )
    :effect (and
        (not (on-rod ?x ?y))
        (on-rod ?x ?z)
        (not(empty ?z))
        (clear ?x)

        
    )
  )
)

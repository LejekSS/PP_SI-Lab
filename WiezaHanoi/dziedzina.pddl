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



(define (domain hanoi) 
    (:requirements :adl)
    (:types disk rod)
    (:constants x y z - rod)
    (:predicates
        (on-rod ?x - disk ?y - rod)
        (on-top ?top - disk ?bottom - disk)
        (clear ?x - disk)
        (bigger ?bigger - disk ?smaller - disk)
        (empty ?y - disk)
    )
    (:action przesun-na-pusty
        :parameters (?source - rod ?target - rod ?disk - disk)
        :precondition 
        (and
            (on-rod ?disk ?source)
            (clear ?disk)
            (empty ?target)
        )
        :effect (and
            (not (on-rod ?disk ?source))
            (on-rod ?disk ?target)
            (not(empty ?target))
            (clear ?disk)
            (forall (?underdisk - disk)
                (when (on-top ?disk ?underdisk)
                    (and
                        (not (on-top ?disk ?underdisk))
                        (clear ?underdisk)
                    )
                )
            )
        )
    )
)


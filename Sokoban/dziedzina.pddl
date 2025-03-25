(define
    (domain sokoban)
    (:requirements :adl)
    (:predicates
        (paczka ?x)
        (cel ?x)
        (robot ?x)
        (poziomo ?x ?y)
        (pionowo ?x ?y)
    )

    (:action idz
        :parameters (?x ?y)
        :precondition 
        (and  
            (not(paczka ?y))
            (not(robot ?y))
            (robot ?x)
            (not(cel ?y))
            (or
                (poziomo ?x ?y)
                (pionowo ?x ?y)
            )
        )
        :effect 
        (and
            (not(robot ?x))
            (robot ?y)
        )
    )
    (:action pchaj
        :parameters (?x ?y ?z)
        :precondition
        (and
            (robot ?x)
            (paczka ?y)
            (not(paczka ?z))
            (not(robot ?z))
            (or
                (and 
                    (poziomo ?x ?y) 
                    (poziomo ?y ?z)
                )
                (and 
                    (pionowo ?x ?y)
                    (pionowo ?y ?z)
                )
            )
        )
        :effect 
        (and
            (not(paczka ?y))
            (robot ?y)
            (paczka ?z)
            (not(robot ?x))
        )
    )
)

(define
    (domain hanoi)
    (:requirements :adl)
    (:types disk rod)
    (:predicates
        (clear ?x)    
        (on-top ?x ?y)
        (on-floor ?k)
        (on-rod ?x ?k)
        (empty ?x)
        (bigger ?x ?y)
    )

    (:action przesun-na-pusty
        :parameters (?from ?to ?disc) 
        :precondition
        (and
            (not (= ?from ?to))
            (empty ?to)
            (on-rod ?from ?disc)
            (clear ?disc)
        )
        :effect
        (and
            (when (on-floor ?disc)
                (empty ?from)
            )
            (not (empty ?to))
            (not (on-rod ?from ?disc))
            (on-rod ?to ?disc)
            (on-floor ?disc)
            (forall (?otherdisc - disk)
            (when (and (on-top ?disc ?otherdisc) (on-rod ?from ?otherdisc))
            (and
                (clear ?otherdisc)
                (not (on-top ?disc ?otherdisc))
                )
            ))
        )
    )
    
    (:action przesun
        :parameters (?from ?to ?topdisc ?bottomdisc) 
        :precondition
        (and
            (not (= ?from ?to))
            (not (= ?topdisc ?bottomdisc))
            (clear ?topdisc)
            (clear ?bottomdisc)
            (on-rod ?from ?topdisc)
            (on-rod ?to ?bottomdisc)
            (not (bigger ?topdisc ?bottomdisc))
        )
        :effect
        (and
            (when (on-floor ?topdisc)
                (empty ?from)
            )
            (on-rod ?to ?topdisc)
            (not (on-rod ?from ?topdisc))
            (not (on-floor ?topdisc))
            (forall (?otherdisc - disk)
            (when (and (on-top ?topdisc ?otherdisc) (on-rod ?from ?otherdisc))
            (and
                (clear ?otherdisc)
                (not (on-top ?topdisc ?otherdisc))
                )
            ))
             (on-top ?topdisc ?bottomdisc)
             (not (clear ?bottomdisc))
        )
    )
)


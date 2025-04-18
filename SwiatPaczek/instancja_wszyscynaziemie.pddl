(define (problem p1)
    (:domain world-of-blocks)
    (:objects a b c d e)
    
    (:init
        (on-floor a)
        (on-top b a)
        (on-top c b)
        (clear c)
        
        (on-floor d)
        (on-top e d)
        (clear e)
    )
    
    (:goal
        (and
            (forall (?y) (on-floor ?y))
            (forall (?y) (clear ?y))
        )
    )
)

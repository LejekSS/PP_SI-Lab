(define (rozsypanka)
    (:domain world-of-blocks)
    (:objects a b c d e f)
    
    (:init
        (on-floor a) (clear a)
        (on-floor b) (clear b)
        (on-floor c) (clear c)
        (on-floor d) (clear d)
        (on-floor e) (clear e)
        (on-floor f) (clear f)
    )
    
    (:goal
        (and
            (forall (?y) (not (in-air ?y)))
            (on-floor a) (not(clear a))
            (not(on-floor b)) (not(clear b))
            (not(on-floor c)) (not(clear c))
            (not(on-floor d)) (not(clear d))
            (not(on-floor e)) (not(clear d))
            (not(on-floor f))
        )
    )
)

; instacnja rzuca bład w editor.planning.domains
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
            (on-top d b)
            (exists (?x)
                (and    
                    (on-top b ?x)
                    (not (= ?x b))
                )
            )
        )
    )
)

; poprawiona instancja, zamiast exist deklaruje wszystkie możliwości
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
            (on-top d b)
            (or 
                (on-top b a)
                (on-top b c)
                (on-top b d)
                (on-top b e)
            )
        )
    )
)

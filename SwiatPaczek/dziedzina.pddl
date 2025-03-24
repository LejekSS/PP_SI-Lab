(define
	(domain world-of-blocks)
	(:requirements :adl)
	(:predicates
		(on-top ?x ?y)
		(on-floor ?x)
		(clear ?x)
		(in-air ?x)
	)
	(:action podnies-z-podlogi
	    :parameters(?x)
	    :precondition
	    (and
	        (clear ?x)
	        (on-floor ?x)
	        (not(in-air ?x))
	        (forall (?y) (not (in-air ?y)))
	    )
	    :effect
	    (and
	       (not(on-floor ?X))
	       (not(clear ?x))
	       (in-air ?x)
	    )
	)
	(:action podnies-z-paczki
	    :parameters(?x ?z)
	    :precondition
	    (and
	        (clear ?x)
	        (on-top ?x ?z)
	        (not(in-air ?x))
	        (forall (?y) (not (in-air ?y)))
	    )
	    :effect
	    (and
	       (not(clear ?x))
	       (clear ?z)
	       (in-air ?x)
	       (not(on-top ?x ?z))
	    )
	)
	(:action opusc-na-podloge
	    :parameters (?x)
	    :precondition
	    (and
	        (in-air ?x)
	    )
	    :effect
	    (and
	        (not(in-air ?x))
	        (clear ?x)
	        (on-floor ?x)
	    )
	)
	(:action opusc-na-paczke
	    :parameters (?z ?x)
        :precondition
        (and
            (in-air ?x)
            (clear ?z)
        )
        :effect
        (and
            (not(in-air ?x))
            (not(clear ?z))
            (clear ?x)
            (on-top ?x ?z)
            (not(on-floor ?x))
        )
	)
)

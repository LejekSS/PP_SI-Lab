(define
	(domain bagend)
	(:requirements :adl)
	(:types color room ball block field)
	(:constants null - block)
	(:predicates
		(passage ?r1 ?r2 - room ?c - color)
		(merry-w ?r - room)
		(ball-w ?b - ball ?r - room)
		(merry-ma ?b - ball)
		(ball-color ?b - ball ?c - color)
		(blockade-in ?r - room)
		(next-to ?f1 ?f2 - field)
		(number-on ?k - block ?f - field)
	)
	(:action wez 
		:parameters (?c - color ?b - ball ?r - room)
		:precondition
		(and
			(ball-color ?b ?c)
			(ball-w ?b ?r)
			(merry-w ?r)
		)
		:effect
		(and
			(merry-ma ?b)
			(not (ball-w ?b ?r))
		)
	)
	(:action idz
		:parameters (?rTo ?rFrom - room ?c - color ?b - ball)
		:precondition
		(and
			(merry-w ?rFrom)
			(passage ?rFrom ?rTo ?c)
			(merry-ma ?b)
			(ball-color ?b ?c) 
		)
		:effect
		(and
			(not (merry-ma ?b))
			(not (merry-w ?rFrom))
			(merry-w ?rTo)
		)
	)
	(:action przesun
		:parameters (?k - block ?f1 ?f2 - field ?r - room)
		:precondition
		(and
			(not (= ?k null))
			(blockade-in ?r)
			(merry-w ?r)
			(or (next-to ?f1 ?f2)(next-to ?f2 ?f1))
			(number-on ?k ?f1)
			(number-on null ?f2)
		)
		:effect
		(and
			(number-on null ?f1)
			(number-on ?k ?f2)
			(not (number-on ?k ?f1))
			(not (number-on null ?f2))
		)
	)
	
)

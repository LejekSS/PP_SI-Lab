(define
	(domain bagend)
	(:requirements :adl)
	(:types color room ball block field)
	(:constants null - block)
	(:predicates
		(passage ?r1 ?r2 - room ?c - color)
		(merry-in ?r - room)
		(ball-in) ?b - ball ?r - room)
		(merry-have ?b - ball)
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
			(ball-in) ?b ?r)
			(merry-in ?r)
		)
		:effect
		(and
			(merry-have ?b)
			(not (ball-in) ?b ?r))
		)
	)
	(:action idz
		:parameters (?rTo ?rFrom - room ?c - color ?b - ball)
		:precondition
		(and
			(merry-in ?rFrom)
			(passage ?rFrom ?rTo ?c)
			(merry-have ?b)
			(ball-color ?b ?c) 
		)
		:effect
		(and
			(not (merry-have ?b))
			(not (merry-in ?rFrom))
			(merry-in ?rTo)
		)
	)
	(:action przesun
		:parameters (?k - block ?f1 ?f2 - field ?r - room)
		:precondition
		(and
			(not (= ?k null))
			(blockade-in ?r)
			(merry-in ?r)
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

(define (domain corridor)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		loc boolean - int
		room 
	)





	(:predicates
		(false)
		(secret)
		(enable_nega)

		(secret_at ?r - room)
		(at ?r - room)
		(succ ?nr ?r - room)


	)

	(:functions
		(a_loc) - loc
		(fact ?p - query) - boolean
		;(@check1 ?x - x ?y - y ?dir - r ?query - q) - boolean
		(check ?r - loc ?q - query) - boolean

	)


	;this is where to put all negative stuff
	(:derived (enable_nega)
        ; The pacman is alive if no ghost is on the same location than him
        ;(forall (?g - ghost) (not (= (at ?g) (at ?p))))
        ;(@check1 )
        ;(forall (?n - neg_query_id) (= (@check ) 0))
        ;(forall (?r - room) (not (= (test ?r) 1)))
        (forall (?n - neg) (not (= (fact ?n) 1)))
    )

	(:action shout
		:parameters(?r - room)
		:precondition
		(and
			(secret)
			(at ?r)
		)
		:effect
		;need to check all query here
		(and
			(enable_nega)
			(forall (?q - query) (when (= (check (a_loc) ?q) 1) (assign (fact ?q) 1)))
		)
	)

	(:action sense
		:parameters(?r - room)
		:precondition
		(and
			(at ?r)
			(secret_at ?r)
		)
		:effect
		(and
			(secret)
		)
	)

	(:action move_right
		:parameters(?r ?nr - room)
		:precondition
		(and
			(at ?r)
			(succ ?r ?nr)
		)
		:effect
		(and
			(not (at ?r))
			(at ?nr)
			(assign (a_loc) (+ (a_loc) 1))
		)
	)

	(:action move_left
		:parameters(?r ?nr - room)
		:precondition
		(and
			(at ?r)
			(succ ?nr ?r)
		)
		:effect
		(and
			(not (at ?r))
			(at ?nr)
			(assign (a_loc) (- (a_loc) 1))
		)
	)

	(:action dummy_action
			:parameters()
			:precondition
			(and 
				(false)
				)
			:effect
			(and
				(not (enable_nega))
			)
	)

)
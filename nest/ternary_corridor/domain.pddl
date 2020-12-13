(define (domain corridor)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		loc ternary agent - int
		room 
	)

	(:predicates
		(secret)
		(secret_at ?r - room)
		(at ?r - room)
		(succ ?nr ?r - room)
	)

	(:functions
		(a_loc) - loc
		(fact ?p - query) - ternary
		
		;(check ?r - loc ?q - query) - ternary
		(@check ?r - loc ?q - query) - ternary
	)

	;this is where to put all negative stuff
	; (:derived (enable_nega)
 ;        (forall (?n - neg) (not (= (fact ?n) 1)))
 ;    )

	(:action shout
		:parameters(?r - room)
		:precondition
		(and
			(secret)
			(at ?r)

		)
		:effect
		(and
			;(forall (?q - query) (when (= (check (a_loc) ?q) 1) (assign (fact ?q) 1)))
			(forall (?q - query) (when (= (@check (a_loc) ?q) 0) (assign (fact ?q) 0)))


			(forall (?q1 - query) (when (and (= (@check (a_loc) ?q1) 2) (= (fact ?q1) 1)) (assign (fact ?q1) 2)))
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

	; (:action dummy_action
	; 		:parameters()
	; 		:precondition
	; 		(and 
	; 			(false)
	; 			)
	; 		:effect
	; 		(and
	; 			(not (enable_nega))
	; 		)
	; )

)
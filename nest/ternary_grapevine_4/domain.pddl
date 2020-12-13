(define (domain grapevine)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		loc ternary encode agent encode2 - int
		
	)

	(:predicates
		(slient)
		(sharing ?a - agent ?s - agent)
		;; this is not working, so you need to write them separately
	)

	(:functions
		(location ?a - agent) - loc
		(posted_encoding ?a1 - agent ?a2 - agent ?a3 - agent ?a4 - agent) - encode
		(posted_encoding2 ?e1 - encode ?e2 - encode) - encode2
		(fact ?q - query) - ternary
		(k ?a - agent ?s - agent) - ternary
		(layout) - encode2
		(num_agent) - agent
		;(@check ?l - encode ?l - loc ?s - agent ?q - query) - boolean
		;(check ?l - encode ?s - agent ?q - query) - boolean
		(@check ?l - encode2 ?l - loc ?s - agent ?q - query) - ternary
	)

	(:action prepare
		:parameters(?a - agent ?s - agent)
		:precondition
		(and
			(slient)
			(= (k ?a ?s) 0)
		)
		:effect
		(and
			(not (slient))
			(assign (layout) (posted_encoding2 0 (posted_encoding (location 1) (location 2) (location 3) (location 4))))
			(sharing ?a ?s)
		)

	)

	(:action share
		:parameters(?a - agent ?s - agent)
		:precondition
		(and
			; agent a can share agent s's secret iff a knows s's secret
			(= (k ?a ?s) 0)
			; the layout (positions) has been updated to pass into the external function
			(sharing ?a ?s)

		)
		:effect
		(and
			(slient)
			(not (sharing ?a ?s))
			; update the secret sharing ability for each agent ta
			(forall (?ta - agent) (when (= (location ?a) (location ?ta)) (assign (k ?ta ?s) 0)))

			(forall (?q - query) (when (= (@check (layout) (location ?a) ?s ?q) 0) (assign (fact ?q) 0)))
			(forall (?q1 - query) (when (and (= (@check (layout) (location ?a) ?s ?q1) 2) (= (fact ?q1) 1))(assign (fact ?q1) 2)))
		)
	)

	(:action move_right
		:parameters(?a - agent)
		:precondition
		(and
			(slient)
			(= (location ?a) 0)
			)
		:effect
		(and
			(assign (location ?a) 1)

		)
	)

	(:action move_left
		:parameters(?a - agent)
		:precondition
		(and
			(slient)
			(= (location ?a) 1)
			)
		:effect
		(and
			(assign (location ?a) 0)
		)
	)

)
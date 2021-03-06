(define (domain grapevine)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		loc boolean encode agent encode2 encode3 - int
		
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
		(fact ?q - query) - boolean
		(k ?a - agent ?s - agent) - boolean
		(layout) - encode2
		(num_agent) - agent
		;(@check ?l - encode ?l - loc ?s - agent ?q - query) - boolean
		;(check ?l - encode ?s - agent ?q - query) - boolean
		(secret_value ?a - agent ?value - agent) - encode3
		(@check ?l - encode2 ?l - loc ?s - encode3 ?q - query) - boolean
	)

	(:action prepare
		:parameters(?a - agent ?s - agent)
		:precondition
		(and
			(slient)
			(= (k ?a ?s) 1)
		)
		:effect
		(and
			(not (slient))
			(assign (layout) (posted_encoding2 0 (posted_encoding (location 1) (location 2) (location 3) (location 4))))
			(sharing ?a ?s)
		)
	)


	(:action share
		:parameters(?a - agent ?s - agent ?v - agent)
		:precondition
		(and
			(= (k ?a ?s) 1)
			(sharing ?a ?s)

		)
		:effect
		(and
			(slient)
			(not (sharing ?a ?s))
			(forall (?ta - agent) (when (= (location ?a) (location ?ta)) (assign (k ?ta ?s) 1)))
			(forall (?q - query) (when (= (@check (layout) (location ?a) (secret_value ?s ?v) ?q) 1) (assign (fact ?q) 1)))
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
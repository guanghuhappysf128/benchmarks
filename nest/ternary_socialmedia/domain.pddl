(define (domain s_media)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		part ternary encoding agent - int
		
		
	)

	(:predicates
		;(post_at ?p - part ?a - agent)
		;(goal)
		(facts ?q - query)
		;(start)
		;; this is not working, so you need to write them separately

		;; post as action, and using external function to represent following relations
	)

	(:functions
		
		(posted ?p - part) - agent
		(posted_encoding ?p1 - agent ?p2 - agent ?p3 - agent) - encoding
		(fact ?q - query) - ternary
		(@check ?l - encoding ?q - query) - ternary
	)

	(:action post
		:parameters(?p - part ?a - agent)
		:precondition
		(and
			;(start)
			)
		:effect
		(and
			;(post_at ?p ?a)
			(assign (posted ?p) ?a)
			(forall (?q - query) (when (= (@check (posted_encoding (posted 1) (posted 2) (posted 3)) ?q) 0) (assign (fact ?q) 0)))
			(forall (?q1 - query) (when (and (= (@check (posted_encoding (posted 1) (posted 2) (posted 3)) ?q1) 2) (= (fact ?q1) 1)) (assign (fact ?q1) 2)))
		)

	)

	; (:action goal_check
	; 	:parameters()
	; 	:precondition
	; 	(and
	; 		(forall (?q pos) (= (fact ?q) 1))
	; 	)
	; 	:effect
	; 	(and
	; 		(goal)
	; 	)
	; )

	; (:action post
	; 	:parameters(?a - agent)
	; 	:precondition()
	; 	:effect
	; 	(and
	; 		(forall 
	; 			(?q - query) 
	; 			(when 
	; 				(= 
	; 					(@check (posted_encoding ?) ?q) 1) 
	; 				(assign (fact ?q) 1)
	; 			)
	; 		)
	; 	)

	; )

	; (:action follows
	; 	:parameters(?a - agent ?b - agent)
	; 	:precondition
	; 	(and 
	; 		(= (following ?a ?b) 0)
	; 	)
	; 	:effect
	; 	(and
	; 		(= (following ?a ?b) 1)
	; 	)

	; )






)
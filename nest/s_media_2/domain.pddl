(define (domain s_media)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		part boolean encoding agent - int
		
		
	)

	(:predicates
		;(start)
		;; this is not working, so you need to write them separately

		;; post as action, and using external function to represent following relations
	)

	(:functions
		
		(posted ?p - part) - agent
		(posted_encoding ?p1 - agent ?p2 - agent ?p3 - agent) - encoding
		;(fact ?q - query) - boolean
		(check ?l - encoding ?q - query) - boolean
		;(check ?l - encode ?s - agent ?q - query) - boolean
	)

	(:action post
		:parameters(?p - part ?a - agent)
		:precondition
		(and 
			;(start)
			)
		:effect
		(and
			(assign (posted ?p) ?a)
		)

	)

	; (:action post
	; 	:parameters(?a - agent)
	; 	:precondition()
	; 	:effect
	; 	(and
	; 		(forall 
	; 			(?q - query) 
	; 			(when 
	; 				(= 
	; 					(check (posted_encoding ?) ?q) 1) 
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
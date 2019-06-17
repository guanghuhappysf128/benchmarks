(define (domain s_media)
	(:requirements :strips :typing :equality :adl)

	(:types 
		agent state boolean - int
		query
		
	)

	(:predicates
		(start)
		; (knows ?a1 - agent ?a2 - agent)
		; (knows2 ?a1 - agent ?a2 - agent ?a3 - agent)
		; (calling2 ?a1 - agent ?a2 - agent)
		; (calling_allow)
		;(start)
		;; this is not working, so you need to write them separately

		;; post as action, and using external function to represent following relations
	)

	(:functions
		;;(joint_knows ?a - agent ?a - agent ?a - agent)
		;(knows ?a - agent ?a - agent)
		;(posted ?p - part) - agent
		;(posted_encoding ?p1 - agent ?p2 - agent ?p3 - agent) - encoding
		(fact ?q - query) - boolean
		;(check ?l - encoding ?q - query) - boolean
		;(check ?l - encode ?s - agent ?q - query) - boolean
		(@update ?a1 - agent ?a2 - agent ?c - state) - state
		(current_state) - state
		(a_state) - state
		(b_state) - state
		(c_state) - state
		(@check ?a - state ?b - state ?c - state ?q - query) - boolean
	)



	(:action calling_a_b
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (a_state) (@update 1 (a_state) (b_state) (c_state)))
			(assign (b_state) (@update 2 (a_state) (b_state) (c_state)))
			(assign (c_state) (@update 3 (a_state) (b_state) (c_state)))
		)
	)

	(:action calling_a_c
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (a_state) (@update 4 (a_state) (b_state) (c_state)))
			(assign (b_state) (@update 5 (a_state) (b_state) (c_state)))
			(assign (c_state) (@update 6 (a_state) (b_state) (c_state)))
		)
	)

	(:action calling_b_c
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (a_state) (@update 7 (a_state) (b_state) (c_state)))
			(assign (b_state) (@update 8 (a_state) (b_state) (c_state)))
			(assign (c_state) (@update 9 (a_state) (b_state) (c_state)))
		)
	)


	; (:action calling
	; 	:parameters(?a1 - agent ?a2 - agent)
	; 	:precondition
	; 	(and
			
	; 	)
	; 	:effect
	; 	(and
	; 		(assign (current_state) (@update ?a1 ?a2 (current_state)))
	; 	)
	; )

	; (:action calling
	; 	:parameters(?a1 - agent ?a2 - agent)
	; 	:precondition
	; 	(and 
	; 		(calling_allow)
	; 		(not (calling2 ?a1 ?a2))
	; 		)
	; 	:effect
	; 	(and
	; 		(forall (?s - agent) (when (knows ?a1 ?s) (knows ?a2 ?s)))
	; 		(forall (?s - agent) (when (knows ?a2 ?s) (knows ?a1 ?s)))
	; 		(forall (?s - agent) (when (knows ?a1 ?s) (knows2 ?a2 ?a2 ?s)))
	; 		(forall (?s - agent) (when (knows ?a2 ?s) (knows2 ?a1 ?a1 ?s)))
	; 		(calling2 ?a1 ?a2)
	; 		(not (calling_allow))
	; 	)

	; )

	; (:action calling_2
	; 	:parameters(?a1 - agent ?a2 - agent)
	; 	:precondition
	; 	(and 
	; 		(calling2 ?a1 ?a2)
	; 		(not (calling_allow))
	; 		)
	; 	:effect
	; 	(and
	; 		(forall (?s - agent) (when (knows ?a1 ?s) (knows2 ?a2 ?a1 ?s)))
	; 		(forall (?s - agent) (when (knows ?a2 ?s) (knows2 ?a1 ?a2 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a2 1 ?s) (knows2 ?a1 1 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a2 2 ?s) (knows2 ?a1 2 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a2 3 ?s) (knows2 ?a1 3 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a2 4 ?s) (knows2 ?a1 4 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a1 1 ?s) (knows2 ?a2 1 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a1 2 ?s) (knows2 ?a2 2 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a1 3 ?s) (knows2 ?a2 3 ?s)))
	; 		(forall (?s - agent) (when (knows2 ?a1 4 ?s) (knows2 ?a2 4 ?s)))
	; 		(not (calling2 ?a1 ?a2))
	; 		(calling_allow)
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
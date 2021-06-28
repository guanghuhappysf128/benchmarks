(define (domain gossip)
	(:requirements :strips :typing :equality :adl)
	(:types
		boolean action_sequence - int
		query
	)

	(:predicates
	)

	(:functions
		(calling_a_b) - action_sequence
		(calling_a_c) - action_sequence
		(calling_a_d) - action_sequence
		(calling_b_c) - action_sequence
		(calling_b_d) - action_sequence
		(calling_c_d) - action_sequence

		(@update ?b - boolean ?as - action_sequence) - action_sequence
		(@check ?ab - action_sequence ?ac - action_sequence ?ad - action_sequence ?bc - action_sequence ?bd - action_sequence ?cd - action_sequence ?q - query) - boolean
	)

	(:action calls_a_b
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 1 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
		)
	)

	(:action calls_a_c
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 1 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
		)
	)

	(:action calls_a_d
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 1 (calling_a_d)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
		)
	)

	(:action calls_b_c
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_b_c) (@update 1 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
		)
	)

	(:action calls_b_d
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 1 (calling_b_d)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
		)
	)

	(:action calls_c_d
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_c_d) (@update 1 (calling_c_d)))
		)
	)

)





(define (domain gossip)
	(:requirements :strips :typing :equality :adl)
	(:types
		boolean action_sequence query - int
	)

	(:predicates
	)

	(:functions
		(calling_a_b) - action_sequence
		(calling_a_c) - action_sequence
		(calling_a_d) - action_sequence
		(calling_a_e) - action_sequence
		(calling_b_c) - action_sequence
		(calling_b_d) - action_sequence
		(calling_b_e) - action_sequence
		(calling_c_d) - action_sequence
		(calling_c_e) - action_sequence
		(calling_d_e) - action_sequence

		(@update ?b - boolean ?as - action_sequence) - action_sequence
		(@check ?ab - action_sequence ?ac - action_sequence ?ad - action_sequence ?ae - action_sequence ?bc - action_sequence ?bd - action_sequence ?be - action_sequence ?cd - action_sequence ?ce - action_sequence ?de - action_sequence ?q - query) - boolean
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
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
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
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
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
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
		)
	)

	(:action calls_a_e
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_a_e) (@update 1 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
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
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 1 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
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
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 1 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
		)
	)

	(:action calls_b_e
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 1 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
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
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 1 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
		)
	)

	(:action calls_c_e
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 1 (calling_c_e)))
			(assign (calling_d_e) (@update 0 (calling_d_e)))
		)
	)

	(:action calls_d_e
		:parameters()
		:precondition
		(and
			
		)
		:effect
		(and
			(assign (calling_a_b) (@update 0 (calling_a_b)))
			(assign (calling_a_c) (@update 0 (calling_a_c)))
			(assign (calling_a_d) (@update 0 (calling_a_d)))
			(assign (calling_a_e) (@update 0 (calling_a_e)))
			(assign (calling_b_c) (@update 0 (calling_b_c)))
			(assign (calling_b_d) (@update 0 (calling_b_d)))
			(assign (calling_b_e) (@update 0 (calling_b_e)))
			(assign (calling_c_d) (@update 0 (calling_c_d)))
			(assign (calling_c_e) (@update 0 (calling_c_e)))
			(assign (calling_d_e) (@update 1 (calling_d_e)))
		)
	)

)





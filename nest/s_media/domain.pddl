(define (domain s_media)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		boolean encoding agent - int
		
	)

	(:predicates
		;; this is not working, so you need to write them separately

		;; post as action, and using external function to represent following relations
	)

	(:functions
		(following ?a - agent ?b - agent) - boolean
		(map ?b1 - boolean ?b2 - boolean ?b3 - boolean ?b4 - boolean ?b5 - boolean ?b6 - boolean ?b7 - boolean ?b8 - boolean ?b9 - boolean) - encoding

		(fact ?q - query) - boolean

		(check ?l - encode ?l - loc ?s - agent ?q - query) - boolean
		;(check ?l - encode ?s - agent ?q - query) - boolean
	)

	(:action post
		:parameters(?a - agent)
		:precondition()
		:effect
		(and
			(forall 
				(?q - query) 
				(when 
					(= 
						(check 
							(map (following 1 1) (following 1 2) (following 1 3) (following 2 1) (following 2 2) (following 2 3) (following 3 1) (following 3 2) (following 3 3))
							?a
							?q) 1) 
					(assign (fact ?q) 1)
				)
			)
		)

	)

	(:action follows
		:parameters(?a - agent ?b - agent)
		:precondition
		(and 
			(= (following ?a ?b) 0)
		)
		:effect
		(and
			(= (following ?a ?b) 1)
		)

	)




 	(:action a_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			(= (ak ?s) 1)
 		)
 		:effect
 		(and
 			(when (= (location 1) (location 1)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 1)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 1)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 1)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) 1 ?q) 1) (assign (fact ?q) 1)))
 			;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 1) ?s ?q) 1) (assign (fact ?q) 1)))
 			;(forall (?q - query) (when (= (@check 0 (location 1) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

 	 (:action b_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			(= (bk ?s) 1)
 		)
 		:effect
 		(and
 			(when (= (location 1) (location 2)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 2)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 2)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 2)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (@check 0 (location 2) ?s ?q) 1) (assign (fact ?q) 1)))
 			;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 2) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

 	(:action c_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			(= (ck ?s) 1)
 		)
 		:effect
 		(and
 			(when (= (location 1) (location 3)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 3)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 3)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 3)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (@check 0 (location 3) ?s ?q) 1) (assign (fact ?q) 1)))
 			;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 3) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

 	(:action d_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			(= (dk ?s) 1)
 		)
 		:effect
 		(and
 			(when (= (location 1) (location 4)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 4)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 4)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 4)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (@check 0 (location 4) ?s ?q) 1) (assign (fact ?q) 1)))
 			;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 4) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

)
(define (domain grapevine)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		loc boolean encode agent - int
		
	)

	(:predicates
		(notshared ?a - agent);;
		;; this is not working, so you need to write them separately
	)

	(:functions
		(location ?a - agent) - loc
		(loc_encode ?a1 - agent ?a2 - agent ?a3 - agent ?a4 - agent) - encode
		(fact ?q - query) - boolean
		(ak ?a - agent) - boolean
		(bk ?a - agent) - boolean
		(ck ?a - agent) - boolean
		(dk ?a - agent) - boolean
		(@check ?l - encode ?l - loc ?s - agent ?q - query) - boolean
		;(check ?l - encode ?s - agent ?q - query) - boolean
	)

 	(:action a_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			;;(notshared ?s)
 			(= (ak ?s) 1)
 		)
 		:effect
 		(and
 			;;(not (notshared ?s))
 			(when (= (location 1) (location 1)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 1)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 1)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 1)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) 1 ?q) 1) (assign (fact ?q) 1)))
 			(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 1) ?s ?q) 1) (assign (fact ?q) 1)))
 			;(forall (?q - query) (when (= (@check 0 (location 1) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

 	 (:action b_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			;;(notshared ?s)
 			(= (bk ?s) 1)
 		)
 		:effect
 		(and
 			;;(not (notshared ?s))
 			(when (= (location 1) (location 2)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 2)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 2)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 2)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (@check 0 (location 2) ?s ?q) 1) (assign (fact ?q) 1)))
 			(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 2) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

 	(:action c_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			;;(notshared ?s)
 			(= (ck ?s) 1)
 		)
 		:effect
 		(and
 			;;(not (notshared ?s))
 			(when (= (location 1) (location 3)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 3)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 3)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 3)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (@check 0 (location 3) ?s ?q) 1) (assign (fact ?q) 1)))
 			(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 3) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

 	(:action d_share
 		:parameters(?s - agent)
 		:precondition
 		(and
 			;;(notshared ?s)
 			(= (dk ?s) 1)
 		)
 		:effect
 		(and
 			;;(not (notshared ?s))
 			(when (= (location 1) (location 4)) (assign (ak ?s) 1))
 			(when (= (location 2) (location 4)) (assign (bk ?s) 1))
 			(when (= (location 3) (location 4)) (assign (ck ?s) 1))
 			(when (= (location 4) (location 4)) (assign (dk ?s) 1))
 			;(forall (?q - query) (when (= (@check 0 (location 4) ?s ?q) 1) (assign (fact ?q) 1)))
 			(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 4) ?s ?q) 1) (assign (fact ?q) 1)))
 		)
 	)

	(:action move_right
		:parameters(?a - agent)
		:precondition
		(and
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
			(= (location ?a) 1)
			)
		:effect
		(and
			(assign (location ?a) 0)
		)
	)




	; (:action shout
	; 	:parameters(?r - room)
	; 	:precondition
	; 	(and
	; 		(secret)
	; 		(at ?r)

	; 	)
	; 	:effect
	; 	(and
	; 		;(forall (?q - query) (when (= (check (a_loc) ?q) 1) (assign (fact ?q) 1)))
	; 		(forall (?q - query) (when (= (@check (a_loc) ?q) 1) (assign (fact ?q) 1)))
	; 	)
	; )

	; (:action sense
	; 	:parameters(?r - room)
	; 	:precondition
	; 	(and
	; 		(at ?r)
	; 		(secret_at ?r)
	; 	)
	; 	:effect
	; 	(and
	; 		(secret)
	; 	)
	; )

	; (:action move_right
	; 	:parameters(?r ?nr - room)
	; 	:precondition
	; 	(and
	; 		(at ?r)
	; 		(succ ?r ?nr)
	; 	)
	; 	:effect
	; 	(and
	; 		(not (at ?r))
	; 		(at ?nr)
	; 		(assign (a_loc) (+ (a_loc) 1))
	; 	)
	; )

	; (:action move_left
	; 	:parameters(?r ?nr - room)
	; 	:precondition
	; 	(and
	; 		(at ?r)
	; 		(succ ?nr ?r)
	; 	)
	; 	:effect
	; 	(and
	; 		(not (at ?r))
	; 		(at ?nr)
	; 		(assign (a_loc) (- (a_loc) 1))
	; 	)
	; )

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
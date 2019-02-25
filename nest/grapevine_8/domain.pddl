(define (domain grapevine)
	(:requirements :strips :typing :equality :adl)

	(:types 
		pos neg - query
		loc boolean encode agent encode2 - int
		
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
		(@check ?l - encode2 ?l - loc ?s - agent ?q - query) - boolean
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
			(assign (layout) (posted_encoding2 (posted_encoding (location 1) (location 2) (location 3) (location 4)) (posted_encoding (location 5) (location 6) (location 7) (location 8))))
			(sharing ?a ?s)
		)

	)

	(:action share
		:parameters(?a - agent ?s - agent)
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
			(forall (?q - query) (when (= (@check (layout) (location ?a) ?s ?q) 1) (assign (fact ?q) 1)))
		)


	)

 	; (:action a_share
 	; 	:parameters(?s - agent)
 	; 	:precondition
 	; 	(and
 	; 		;;(notshared ?s)
 	; 		(= (ak ?s) 1)
 	; 	)
 	; 	:effect
 	; 	(and
 	; 		;;(not (notshared ?s))
 	; 		(when (= (location 1) (location 1)) (assign (ak ?s) 1))
 	; 		(when (= (location 2) (location 1)) (assign (bk ?s) 1))
 	; 		(when (= (location 3) (location 1)) (assign (ck ?s) 1))
 	; 		(when (= (location 4) (location 1)) (assign (dk ?s) 1))
 	; 		;(forall (?q - query) (when (= (check (loc_encode (location 1) (location 2) (location 3) (location 4)) 1 ?q) 1) (assign (fact ?q) 1)))
 	; 		(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 1) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 		;(forall (?q - query) (when (= (@check 0 (location 1) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 	)
 	; )

 	;  (:action b_share
 	; 	:parameters(?s - agent)
 	; 	:precondition
 	; 	(and
 	; 		;;(notshared ?s)
 	; 		(= (bk ?s) 1)
 	; 	)
 	; 	:effect
 	; 	(and
 	; 		;;(not (notshared ?s))
 	; 		(when (= (location 1) (location 2)) (assign (ak ?s) 1))
 	; 		(when (= (location 2) (location 2)) (assign (bk ?s) 1))
 	; 		(when (= (location 3) (location 2)) (assign (ck ?s) 1))
 	; 		(when (= (location 4) (location 2)) (assign (dk ?s) 1))
 	; 		;(forall (?q - query) (when (= (@check 0 (location 2) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 		(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 2) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 	)
 	; )

 	; (:action c_share
 	; 	:parameters(?s - agent)
 	; 	:precondition
 	; 	(and
 	; 		;;(notshared ?s)
 	; 		(= (ck ?s) 1)
 	; 	)
 	; 	:effect
 	; 	(and
 	; 		;;(not (notshared ?s))
 	; 		(when (= (location 1) (location 3)) (assign (ak ?s) 1))
 	; 		(when (= (location 2) (location 3)) (assign (bk ?s) 1))
 	; 		(when (= (location 3) (location 3)) (assign (ck ?s) 1))
 	; 		(when (= (location 4) (location 3)) (assign (dk ?s) 1))
 	; 		;(forall (?q - query) (when (= (@check 0 (location 3) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 		(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 3) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 	)
 	; )

 	; (:action d_share
 	; 	:parameters(?s - agent)
 	; 	:precondition
 	; 	(and
 	; 		;;(notshared ?s)
 	; 		(= (dk ?s) 1)
 	; 	)
 	; 	:effect
 	; 	(and
 	; 		;;(not (notshared ?s))
 	; 		(when (= (location 1) (location 4)) (assign (ak ?s) 1))
 	; 		(when (= (location 2) (location 4)) (assign (bk ?s) 1))
 	; 		(when (= (location 3) (location 4)) (assign (ck ?s) 1))
 	; 		(when (= (location 4) (location 4)) (assign (dk ?s) 1))
 	; 		;(forall (?q - query) (when (= (@check 0 (location 4) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 		(forall (?q - query) (when (= (@check (loc_encode (location 1) (location 2) (location 3) (location 4)) (location 4) ?s ?q) 1) (assign (fact ?q) 1)))
 	; 	)
 	; )

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
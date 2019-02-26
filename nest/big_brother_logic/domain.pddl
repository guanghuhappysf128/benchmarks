(define (domain testing_camera)
	(:requirements :strips :typing :equality :adl)

	(:types
		pos neg - query
		x y r boolean dx dy dr - int

		
	)

	(:predicates

	)

	(:functions
		(camera1_direction) - r
		(camera1_x) - x
		(camera1_y) - y
		(fact ?p - query) - boolean
		(@check1 ?x - x ?y - y ?dir - r ?q - query) - boolean


	)

	(:action moving_camera1
		:parameters(?dx - dx ?dy - dy)
		:precondition
		(and

		)
		:effect
		(and
			(assign (camera1_x) (+ (camera1_x) ?dx))
			(assign (camera1_y) (+ (camera1_y) ?dy))
			;(forall (?q - query) (when (= (@check1 (camera1_x) (camera1_y) (camera1_direction) ?q) 1) (assign (fact ?q) 1)))
		)
	)


	(:action turn_camera1
		:parameters(?dr - dr)
		:precondition
		(and

		)
		:effect
		(and
			(assign (camera1_direction) (+ (camera1_direction) ?dr))
			;(forall (?q - query) (when (= (@check1 (camera1_x) (camera1_y) (camera1_direction) ?q) 1) (assign (fact ?q) 1)))
		)
	)

	; (:action check_goal
	; 	:parameters(?target_id - target)
	; 	:precondition
	; 	(and
	; 		(= (check_common (camera1_x) (camera1_y) (camera1_direction) ?target_id) 1)
	; 	)
	; 	:effect
	; 	(and
	; 		(commonknowledge ?target_id)
	; 	)
	; )

	; (:action check_sees_action
	; 	:parameters(?target_id - target)
	; 	:precondition
	; 	(and
	; 		(= (@check_seeing (camera1_x) (camera1_y) (camera1_direction) ?target_id) 1)
	; 	)
	; 	:effect
	; 	(and
	; 		(sees ?target_id)
	; 	)
	; )


	; (:action turning
	; 	:parameters(?o - object ?angel - r ?x - x ?y - y ?r - r)
	; 	:precondition
	; 	(and 
	; 		(object_info ?o ?x ?y ?r)
	; 	)
	; 	:effect
	; 	(and
	; 		(object_info ?o ?x ?y (turn@ ?o ?r ?angel))
	; 		(not (object_info ?o ?x ?y ?r))
	; 	)
	; )

	; (:action  moving
	; 	:parameters(?o - object ?x - x ?y - y ?dx - x ?dy - y ?r - r)
	; 	:precondition
	; 	(and
	; 		(not (object_info ?o ?x ?y ?r))
	; 	)
	; )

	; (:action putinone
	; 	:parameters(?b - box)
	; 	:precondition
	; 	(and 
	; 		;;((count ?b) ?num)
	; 	)
	; 	:effect
	; 	(and 
	; 		(assign (count ?b) (@addone_count (count ?b)))
	; 	)
	; )

	; (:action putindouble
	; 	:parameters(?b - box)
	; 	:precondition
	; 	(and 
	; 		;;((count ?b) ?num)
	; 	)
	; 	:effect
	; 	(and 
	; 		(assign (count ?b) (@double_count (count ?b)))
	; 	)
	; )

)
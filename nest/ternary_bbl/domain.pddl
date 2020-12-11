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
			; (forall (?q - query) (when (= (@check1 (camera1_x) (camera1_y) (camera1_direction) ?q) 0) (assign (fact ?q) 0)))
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
			; (forall (?q - query) (when (= (@check1 (camera1_x) (camera1_y) (camera1_direction) ?q) 0) (assign (fact ?q) 0)))
		)
	)

)
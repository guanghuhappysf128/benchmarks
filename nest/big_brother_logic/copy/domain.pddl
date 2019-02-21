(define (domain testing_camera)
	(:requirements :strips :typing :equality :adl)

	(:types 
		target x y r boolean dx dy dr group q - int
		knowledge 
		camera object camera_id object_id

		
	)

	(:predicates
		;(object_info ?o - object ?x - x ?y - y ?range - r ?dir - r)
		; (camera1_info ?x - x ?y - y ?range - r)
		; (camera2_info ?x - x ?y - y ?range - r)
		; (object_info ?x - x ?y - y)
		; (commonknowledge ?target_id - target)
		; (sees ?target_id - target)

		;(is_camera ?o - object)
		;(camera_info ?x - x ?y - y ?r - r ?d - r ?n - camera ?id - camera_id)
		;(object_info ?x - x ?y ?n - object ?id - object_id)


	)

	(:functions
		(camera1_direction) - r
		(cameraNone_direction) - r
		(camera1_x) - x
		(camera1_y) - y
		(cameraNone_x) - x
		(cameraNone_y) - y
		;(@check ?x - x ?y - y ?dir - r ?k - knowledge ?agents - group ?target_id - target) - boolean
		(@check1 ?x - x ?y - y ?dir - r ?query - q) - boolean
		;(@check_string ?x - x ?agents - group) - boolean
		;(@check_common ?x - x ?agents - group)
		;(@check ?x - x ?y - y ?dir - r ?k - knowledge ?agents - group ?target_id - target ?another - target) - boolean
		; (@check_common ?x - x ?y - y ?dir - r ?target_id - target) - boolean 
		; (@check_seeing ?x - x ?y - y ?dir - r ?target_id - target) - boolean
		; (@check_nest ?x - x ?y - y ?dir - r ?target_id - target) - boolean
		; (@check_nest_private ?x - x ?y - y ?dir - r ?target_id - target) - boolean
		; (@check_distribute ?x - x ?y - y ?dir - r ?target_id - target) - boolean
		; (@check_string ?string - string) - boolean


	)

	; (:functions
		;(turn ?o - object ?r - r ?dr - r) - r
	; 	(count ?b - box) - num
	; 	(@double_count ?num - num) - num
	; 	(@addone_count ?num - num) - num
	; )

	; (:action turning_camera1
	; 	:parameters(?dr - r)
	; 	:precondition
	; 	(and 

	; 		; (camera1_info ?x1 ?y1 ?r1)
	; 		; (camera2_info ?x2 ?y2 ?r2)

	; 	)
	; 	:effect
	; 	(and
	; 		(assign (camera1_direction) (+ (camera1_direction) ?dr))
	; 		; (when (= (check_common (camera1_direction) (camera2_direction)) 1)
	; 		; 	(commonknowledge))
	; 	)
	; )

	(:action moving_camera1
		:parameters(?dx - dx ?dy - dy)
		:precondition
		(and

		)
		:effect
		(and
			(assign (camera1_x) (+ (camera1_x) ?dx))
			(assign (camera1_y) (+ (camera1_y) ?dy))
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
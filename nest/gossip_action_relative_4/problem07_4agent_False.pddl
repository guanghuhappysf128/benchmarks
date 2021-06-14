(define (problem problem07_4agent_False)
	(:domain gossip)
; there is no comments allows in objects
	(:objects
		p1 - query
	)

	(:init
	; {"agent_info":{"id":"1","name":"alice"}}
	; {"agent_info":{"id":"2","name":"alice"}}
	; {"agent_info":{"id":"3","name":"alice"}}
	; {"agent_info":{"id":"4","name":"alice"}}
	; {"object_info":{"id":"k1s1","value":"1"}}
	; {"object_info":{"id":"k2s2","value":"1"}}
	; {"object_info":{"id":"k3s3","value":"1"}}
	; {"object_info":{"id":"k4s4","value":"1"}}

		(= (calling_a_b) 0) 
		(= (calling_a_c) 0) 
		(= (calling_a_d) 0) 
		(= (calling_b_c) 0) 
		(= (calling_b_d) 0) 
		(= (calling_c_d) 0) 
	)

	(:goal
		(and
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p1) 1)
			;{"query_info":{"id":"p1","query":"ds 2 ds 1 ds 4 ds 3 ds 2 s1:value:1"}}
		)
	)

	(:bounds
		(action_sequence - int[0..256])
		(boolean - int[0..1])
	)
)



;;does not working because fractional number does not support
(define (problem testing)
    (:domain s_media)
    ; there is no comments allows in objects
    (:objects
        p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 - query
    )
            

    (:init
        ;(calling_allow)
        ; initial states and only agent a is movable
        ;(= (current_state) 67117057)
      ; {"agent_info":{"id":"1","location":"0,0","direction":"135","range":"90","name":"alice"}}
      ; {"agent_info":{"id":"2","location":"15,15","direction":"-135","range":"90","name":"bob"}}
      ; {"agent_info":{"id":"3","location":"0,0","direction":"135","range":"90","name":"alice"}}
      ;{"object_info":{"id":"k1s1","value":"1"}}
      ;{"object_info":{"id":"k2s2","value":"1"}}
      ;{"object_info":{"id":"k3s3","value":"1"}}
      ;{"object_info":{"id":"k1k1s1","value":"1"}}
      ;{"object_info":{"id":"k2k2s2","value":"1"}}
      ;{"object_info":{"id":"k3k3s3","value":"1"}}

        (= (fact p1) 0)
        ; (= (fact n5) 0)
        ; (knows 1 1)
        ; (knows 2 2)
        ; (knows 3 3)
        ; (knows 4 4)
        ; (knows2 1 1 1)
        ; (knows2 2 2 2)
        ; (knows2 3 3 3)
        ; (knows2 4 4 4)


        ;(knows a1 a1)

    (= (calling_a_b) 0) 
		(= (calling_a_c) 0)
		(= (calling_b_c) 0)






    )

    (:goal
        (and
        ; (= (calling_a_b) 1)
        ; (= (calling_b_c) 2)
        ;(= (current_state) 52257)
        ;(= (fact p1) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p1) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p2) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p3) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p4) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p5) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p6) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p7) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p8) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p9) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p10) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p11) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p12) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p13) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p14) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p15) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p16) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p17) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p18) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p19) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p20) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p21) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p22) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p23) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p24) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p25) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p26) 1)
        (= (@check (calling_a_b) (calling_a_c) (calling_b_c) p27) 1)
        ; when agt_a shouts, whether others can know what he knows
        ;{"query_info":{"id":"p1","query":"ds 1 ds 1 ds 1 s1:value:1"}}
        ;{"query_info":{"id":"p2","query":"ds 1 ds 1 ds 2 s1:value:1"}}
        ;{"query_info":{"id":"p3","query":"ds 1 ds 1 ds 3 s1:value:1"}}
        ;{"query_info":{"id":"p4","query":"ds 1 ds 2 ds 1 s1:value:1"}}
        ;{"query_info":{"id":"p5","query":"ds 1 ds 2 ds 2 s1:value:1"}}
        ;{"query_info":{"id":"p6","query":"ds 1 ds 2 ds 3 s1:value:1"}}
        ;{"query_info":{"id":"p7","query":"ds 1 ds 3 ds 1 s1:value:1"}}
        ;{"query_info":{"id":"p8","query":"ds 1 ds 3 ds 2 s1:value:1"}}
        ;{"query_info":{"id":"p9","query":"ds 1 ds 3 ds 3 s1:value:1"}}
        ;{"query_info":{"id":"p10","query":"ds 2 ds 1 ds 1 s2:value:1"}}
        ;{"query_info":{"id":"p11","query":"ds 2 ds 1 ds 2 s2:value:1"}}
        ;{"query_info":{"id":"p12","query":"ds 2 ds 1 ds 3 s2:value:1"}}
        ;{"query_info":{"id":"p13","query":"ds 2 ds 2 ds 1 s2:value:1"}}
        ;{"query_info":{"id":"p14","query":"ds 2 ds 2 ds 2 s2:value:1"}}
        ;{"query_info":{"id":"p15","query":"ds 2 ds 2 ds 3 s2:value:1"}}
        ;{"query_info":{"id":"p16","query":"ds 2 ds 3 ds 1 s2:value:1"}}
        ;{"query_info":{"id":"p17","query":"ds 2 ds 3 ds 2 s2:value:1"}}
        ;{"query_info":{"id":"p18","query":"ds 2 ds 3 ds 3 s2:value:1"}}
        ;{"query_info":{"id":"p19","query":"ds 3 ds 1 ds 1 s3:value:1"}}
        ;{"query_info":{"id":"p20","query":"ds 3 ds 1 ds 2 s3:value:1"}}
        ;{"query_info":{"id":"p21","query":"ds 3 ds 1 ds 3 s3:value:1"}}
        ;{"query_info":{"id":"p22","query":"ds 3 ds 2 ds 1 s3:value:1"}}
        ;{"query_info":{"id":"p23","query":"ds 3 ds 2 ds 2 s3:value:1"}}
        ;{"query_info":{"id":"p24","query":"ds 3 ds 2 ds 3 s3:value:1"}}
        ;{"query_info":{"id":"p25","query":"ds 3 ds 3 ds 1 s3:value:1"}}
        ;{"query_info":{"id":"p26","query":"ds 3 ds 3 ds 2 s3:value:1"}}
        ;{"query_info":{"id":"p27","query":"ds 3 ds 3 ds 3 s3:value:1"}}


        ; {"query_info":{"id":"n1","query":"dk 3 dk 2 obj_1:value:1"}}
        ; {"query_info":{"id":"n2","query":"dk 2 obj_1:value:1"}}
        ; {"query_info":{"id":"n3","query":"dk 3 obj_1:value:2"}}
        ; {"query_info":{"id":"n4","query":"dk 4 obj_1:value:3"}}
        ; {"query_info":{"id":"n5","query":"dk 2 dk 1 obj_1:value:2"}}

      )
    )
    ; agent with value 0 is just for initial state when no secret part has been post

    (:bounds
        (agent - int[1..3])
        (action_sequence - int[0..256])
        (boolean - int[0..1])
        )
)

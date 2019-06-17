;;does not working because fractional number does not support
(define (problem testing)
    (:domain s_media)
    ; there is no comments allows in objects
    (:objects
        p1 - query
    )
            

    (:init
        ;(calling_allow)
        ; initial states and only agent a is movable
        (= (a_state) 67108864)
        (= (b_state) 8192)
        (= (c_state) 1)
      ; {"agent_info":{"id":"1","location":"0,0","direction":"135","range":"90","name":"alice"}}
      ; {"agent_info":{"id":"2","location":"15,15","direction":"-135","range":"90","name":"bob"}}
      ; {"agent_info":{"id":"3","location":"0,0","direction":"135","range":"90","name":"alice"}}
      ;{"object_info":{"id":"k1k1s1","value":"1"}}
      ;{"object_info":{"id":"k1k1s2","value":"0"}}
      ;{"object_info":{"id":"k1k1s3","value":"0"}}
      ;{"object_info":{"id":"k1k2s1","value":"0"}}
      ;{"object_info":{"id":"k1k2s2","value":"0"}}
      ;{"object_info":{"id":"k1k2s3","value":"0"}}
      ;{"object_info":{"id":"k1k3s1","value":"0"}}
      ;{"object_info":{"id":"k1k3s2","value":"0"}}
      ;{"object_info":{"id":"k1k3s3","value":"0"}}
      ;{"object_info":{"id":"k2k1s1","value":"0"}}
      ;{"object_info":{"id":"k2k1s2","value":"0"}}
      ;{"object_info":{"id":"k2k1s3","value":"0"}}
      ;{"object_info":{"id":"k2k2s1","value":"0"}}
      ;{"object_info":{"id":"k2k2s2","value":"1"}}
      ;{"object_info":{"id":"k2k2s3","value":"0"}}
      ;{"object_info":{"id":"k2k3s1","value":"0"}}
      ;{"object_info":{"id":"k2k3s2","value":"0"}}
      ;{"object_info":{"id":"k2k3s3","value":"0"}}
      ;{"object_info":{"id":"k3k1s1","value":"0"}}
      ;{"object_info":{"id":"k3k1s2","value":"0"}}
      ;{"object_info":{"id":"k3k1s3","value":"0"}}
      ;{"object_info":{"id":"k3k2s1","value":"0"}}
      ;{"object_info":{"id":"k3k2s2","value":"0"}}
      ;{"object_info":{"id":"k3k2s3","value":"0"}}
      ;{"object_info":{"id":"k3k3s1","value":"0"}}
      ;{"object_info":{"id":"k3k3s2","value":"0"}}
      ;{"object_info":{"id":"k3k3s3","value":"1"}}


        ;(= (fact p1) 0)
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






    )

    (:goal
        (and
        (= (a_state) 85197125)
        ;(= (fact p1) 1)
        ;(= (@check (a_state) p1) 1)
        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"ds 1 ds 1 s1:value:1"}}
        ; {"query_info":{"id":"p2","query":"dk 2 obj_1:value:3"}}
        ; {"query_info":{"id":"p3","query":"dk 3 obj_1:value:4"}}
        ; {"query_info":{"id":"p4","query":"dk 4 obj_1:value:1"}}

        ; {"query_info":{"id":"n1","query":"dk 2 obj_2:value:4"}}
        ; {"query_info":{"id":"n2","query":"dk 2 obj_1:value:1"}}
        ; {"query_info":{"id":"n3","query":"dk 3 obj_1:value:2"}}
        ; {"query_info":{"id":"n4","query":"dk 4 obj_1:value:3"}}
        ; {"query_info":{"id":"n5","query":"dk 2 dk 1 obj_1:value:2"}}

      )
    )
    ; agent with value 0 is just for initial state when no secret part has been post

    (:bounds
        (agent - int[1..3])
        (state - int[0..113467392])
        (boolean - int[0..1])
    )
)

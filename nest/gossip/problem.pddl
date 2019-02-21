;;does not working because fractional number does not support
(define (problem testing)
    (:domain s_media)
    ; there is no comments allows in objects
    (:objects

    )
            

    (:init
        (calling_allow)
        ; initial states and only agent a is movable

        ; {"agent_info":{"id":"1","location":"1","1":"1"}}
        ; {"agent_info":{"id":"2","location":"1","1":"1"}}
        ; {"agent_info":{"id":"3","location":"1","1":"1"}}
        ; {"agent_info":{"id":"4","location":"1","1":"1"}}
        ; {"object_info":{"id":"obj_1","location":"1","value":"obj111"}}

        ; (= (fact p1) 0)
        ; (= (fact n5) 0)
        (knows 1 1)
        (knows 2 2)
        (knows 3 3)
        (knows 4 4)
        (knows2 1 1 1)
        (knows2 2 2 2)
        (knows2 3 3 3)
        (knows2 4 4 4)


        ;(knows a1 a1)






    )

    (:goal
        (and
            (knows 1 1)
            (knows 1 2)
            (knows 1 3)
            (knows 1 4)
            (knows 2 1)
            (knows 2 2)
            (knows 2 3)
            (knows 2 4)
            (knows 3 1)
            (knows 3 2)
            (knows 3 3)
            (knows 3 4)
            (knows 4 1)
            (knows 4 2)
            (knows 4 3)
            (knows 4 4)
            (knows2 1 1 1)
            (knows2 1 1 2)
            (knows2 1 1 3)
            (knows2 1 1 4)
            (knows2 1 2 1)
            (knows2 1 2 2)
            (knows2 1 2 3)
            (knows2 1 2 4)
            (knows2 1 3 1)
            (knows2 1 3 2)
            (knows2 1 3 3)
            (knows2 1 3 4)
            (knows2 1 4 1)
            (knows2 1 4 2)
            (knows2 1 4 3)
            (knows2 1 4 4)
            (knows2 2 1 1)
            (knows2 2 1 2)
            (knows2 2 1 3)
            (knows2 2 1 4)
            (knows2 2 2 1)
            (knows2 2 2 2)
            (knows2 2 2 3)
            (knows2 2 2 4)
            (knows2 2 3 1)
            (knows2 2 3 2)
            (knows2 2 3 3)
            (knows2 2 3 4)
            (knows2 2 4 1)
            (knows2 2 4 2)
            (knows2 2 4 3)
            (knows2 2 4 4)
            (knows2 3 1 1)
            (knows2 3 1 2)
            (knows2 3 1 3)
            (knows2 3 1 4)
            (knows2 3 2 1)
            (knows2 3 2 2)
            (knows2 3 2 3)
            (knows2 3 2 4)
            (knows2 3 3 1)
            (knows2 3 3 2)
            (knows2 3 3 3)
            (knows2 3 3 4)
            (knows2 3 4 1)
            (knows2 3 4 2)
            (knows2 3 4 3)
            (knows2 3 4 4)
            (knows2 4 1 1)
            (knows2 4 1 2)
            (knows2 4 1 3)
            (knows2 4 1 4)
            (knows2 4 2 1)
            (knows2 4 2 2)
            (knows2 4 2 3)
            (knows2 4 2 4)
            (knows2 4 3 1)
            (knows2 4 3 2)
            (knows2 4 3 3)
            (knows2 4 3 4)
            (knows2 4 4 1)
            (knows2 4 4 2)
            (knows2 4 4 3)
            (knows2 4 4 4)

           



        ; (= (ak 2) 1)
        ; (= (ak 4) 0)
        ; (= (bk 3) 1)
        ; (= (bk 1) 0)
        ; (= (ck 4) 1)
        ; (= (ck 2) 0)
        ; (= (dk 1) 1)
        ; (= (dk 3) 0)

        ; (= (fact p1) 1)
        ; (= (fact p2) 1)
        ; (= (fact p3) 1)
        ; (= (fact p4) 1)

        ; (= (fact n1) 0)
        ; (= (fact n2) 0)
        ; (= (fact n3) 0)
        ; (= (fact n4) 0)
        ;(= (fact n5) 0)

        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"dk 1 obj_1:value:2"}}
        ; {"query_info":{"id":"p2","query":"dk 2 obj_1:value:3"}}
        ; {"query_info":{"id":"p3","query":"dk 3 obj_1:value:4"}}
        ; {"query_info":{"id":"p4","query":"dk 4 obj_1:value:1"}}

        ; {"query_info":{"id":"n1","query":"dk 1 obj_1:value:4"}}
        ; {"query_info":{"id":"n2","query":"dk 2 obj_1:value:1"}}
        ; {"query_info":{"id":"n3","query":"dk 3 obj_1:value:2"}}
        ; {"query_info":{"id":"n4","query":"dk 4 obj_1:value:3"}}
        ; {"query_info":{"id":"n5","query":"dk 2 dk 1 obj_1:value:2"}}

      )
    )
    ; agent with value 0 is just for initial state when no secret part has been post

    (:bounds
        (agent - int[1..4])
        )
)

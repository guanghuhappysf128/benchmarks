;;does not working because fractional number does not support
(define (problem testing)
    (:domain grapevine)
    ; there is no comments allows in objects
    (:objects

        p1 p2 p3 p4 - pos
        n1 n2 n3 n4 - neg
    )
    ;
            

    (:init

      ; initial states and only agent a is movable

      ; {"agent_info":{"id":"1","location":"1","secret":"yes"}}
      ; {"agent_info":{"id":"2","location":"1","secret":"yes"}}
      ; {"agent_info":{"id":"3","location":"1","secret":"yes"}}
      ; {"agent_info":{"id":"4","location":"1","secret":"yes"}}
      ; {"object_info":{"id":"obj_1","location":"1","value":"obj111"}}


      ;(enable_nega)

      ;(= (fact n1) 0)
      (= (fact p1) 0)
      (= (fact p2) 0)
      (= (fact p3) 0)
      (= (fact p4) 0)
      (= (fact n1) 0)
      (= (fact n2) 0)
      (= (fact n3) 0)
      (= (fact n4) 0)

      ;;(notshared 1)
      ;;(notshared 2)
      ;;(notshared 3)
      ;;(notshared 4)




      ; (= (check 0 1 p1) 1)
      ; (= (check 1 1 p1) 0)
      ; (= (check 2 1 p1) 0)
      ; (= (check 3 1 p1) 0)
      ; (= (check 4 1 p1) 0)
      ; (= (check 5 1 p1) 0)
      ; (= (check 6 1 p1) 0)
      ; (= (check 7 1 p1) 0)
      ; (= (check 8 1 p1) 0)
      ; (= (check 9 1 p1) 0)
      ; (= (check 10 1 p1) 0)
      ; (= (check 11 1 p1) 0)
      ; (= (check 12 1 p1) 0)
      ; (= (check 13 1 p1) 0)
      ; (= (check 14 1 p1) 0)
      ; (= (check 15 1 p1) 0)
      ; (= (check 0 2 p1) 0)
      ; (= (check 1 2 p1) 0)
      ; (= (check 2 2 p1) 0)
      ; (= (check 3 2 p1) 0)
      ; (= (check 4 2 p1) 0)
      ; (= (check 5 2 p1) 0)
      ; (= (check 6 2 p1) 0)
      ; (= (check 7 2 p1) 0)
      ; (= (check 8 2 p1) 0)
      ; (= (check 9 2 p1) 0)
      ; (= (check 10 2 p1) 0)
      ; (= (check 11 2 p1) 0)
      ; (= (check 12 2 p1) 0)
      ; (= (check 13 2 p1) 0)
      ; (= (check 14 2 p1) 0)
      ; (= (check 15 2 p1) 0)
      ; (= (check 0 3 p1) 0)
      ; (= (check 1 3 p1) 0)
      ; (= (check 2 3 p1) 0)
      ; (= (check 3 3 p1) 0)
      ; (= (check 4 3 p1) 0)
      ; (= (check 5 3 p1) 0)
      ; (= (check 6 3 p1) 0)
      ; (= (check 7 3 p1) 0)
      ; (= (check 8 3 p1) 0)
      ; (= (check 9 3 p1) 0)
      ; (= (check 10 3 p1) 0)
      ; (= (check 11 3 p1) 0)
      ; (= (check 12 3 p1) 0)
      ; (= (check 13 3 p1) 0)
      ; (= (check 14 3 p1) 0)
      ; (= (check 15 3 p1) 0)
      ; (= (check 0 4 p1) 0)
      ; (= (check 1 4 p1) 0)
      ; (= (check 2 4 p1) 0)
      ; (= (check 3 4 p1) 0)
      ; (= (check 4 4 p1) 0)
      ; (= (check 5 4 p1) 0)
      ; (= (check 6 4 p1) 0)
      ; (= (check 7 4 p1) 0)
      ; (= (check 8 4 p1) 0)
      ; (= (check 9 4 p1) 0)
      ; (= (check 10 4 p1) 0)
      ; (= (check 11 4 p1) 0)
      ; (= (check 12 4 p1) 0)
      ; (= (check 13 4 p1) 0)
      ; (= (check 14 4 p1) 0)
      ; (= (check 15 4 p1) 0)

      ; (= (check 0 1 n1) 1)
      ; (= (check 1 1 n1) 0)
      ; (= (check 2 1 n1) 0)
      ; (= (check 3 1 n1) 0)
      ; (= (check 4 1 n1) 0)
      ; (= (check 5 1 n1) 0)
      ; (= (check 6 1 n1) 0)
      ; (= (check 7 1 n1) 0)
      ; (= (check 8 1 n1) 0)
      ; (= (check 9 1 n1) 0)
      ; (= (check 10 1 n1) 0)
      ; (= (check 11 1 n1) 0)
      ; (= (check 12 1 n1) 0)
      ; (= (check 13 1 n1) 0)
      ; (= (check 14 1 n1) 0)
      ; (= (check 15 1 n1) 0)
      ; (= (check 0 2 n1) 0)
      ; (= (check 1 2 n1) 0)
      ; (= (check 2 2 n1) 0)
      ; (= (check 3 2 n1) 0)
      ; (= (check 4 2 n1) 0)
      ; (= (check 5 2 n1) 0)
      ; (= (check 6 2 n1) 0)
      ; (= (check 7 2 n1) 0)
      ; (= (check 8 2 n1) 0)
      ; (= (check 9 2 n1) 0)
      ; (= (check 10 2 n1) 0)
      ; (= (check 11 2 n1) 0)
      ; (= (check 12 2 n1) 0)
      ; (= (check 13 2 n1) 0)
      ; (= (check 14 2 n1) 0)
      ; (= (check 15 2 n1) 0)
      ; (= (check 0 3 n1) 0)
      ; (= (check 1 3 n1) 0)
      ; (= (check 2 3 n1) 0)
      ; (= (check 3 3 n1) 0)
      ; (= (check 4 3 n1) 0)
      ; (= (check 5 3 n1) 0)
      ; (= (check 6 3 n1) 0)
      ; (= (check 7 3 n1) 0)
      ; (= (check 8 3 n1) 0)
      ; (= (check 9 3 n1) 0)
      ; (= (check 10 3 n1) 0)
      ; (= (check 11 3 n1) 0)
      ; (= (check 12 3 n1) 0)
      ; (= (check 13 3 n1) 0)
      ; (= (check 14 3 n1) 0)
      ; (= (check 15 3 n1) 0)
      ; (= (check 0 4 n1) 0)
      ; (= (check 1 4 n1) 0)
      ; (= (check 2 4 n1) 0)
      ; (= (check 3 4 n1) 0)
      ; (= (check 4 4 n1) 0)
      ; (= (check 5 4 n1) 0)
      ; (= (check 6 4 n1) 0)
      ; (= (check 7 4 n1) 0)
      ; (= (check 8 4 n1) 0)
      ; (= (check 9 4 n1) 0)
      ; (= (check 10 4 n1) 0)
      ; (= (check 11 4 n1) 0)
      ; (= (check 12 4 n1) 0)
      ; (= (check 13 4 n1) 0)
      ; (= (check 14 4 n1) 0)
      ; (= (check 15 4 n1) 0)


      ;(= (check 0 1 n1) 1)


      (= (location 1) 0)
      (= (location 2) 0)
      (= (location 3) 0)
      (= (location 4) 0)

      (= (ak 1) 1)
      (= (ak 2) 0)
      (= (ak 3) 0)
      (= (ak 4) 0)
      (= (bk 1) 0)
      (= (bk 2) 1)
      (= (bk 3) 0)
      (= (bk 4) 0)
      (= (ck 1) 0)
      (= (ck 2) 0)
      (= (ck 3) 1)
      (= (ck 4) 0)
      (= (dk 1) 0)
      (= (dk 2) 0)
      (= (dk 3) 0)
      (= (dk 4) 1)

      ; (= (secret 1 1) 1)
      ; (= (secret 1 2) 0)
      ; (= (secret 1 3) 0)
      ; (= (secret 1 4) 0)
      ; (= (secret 2 1) 0)
      ; (= (secret 2 2) 1)
      ; (= (secret 2 3) 0)
      ; (= (secret 2 4) 0)
      ; (= (secret 3 1) 0)
      ; (= (secret 3 2) 0)
      ; (= (secret 3 3) 1)
      ; (= (secret 3 4) 0)
      ; (= (secret 4 1) 0)
      ; (= (secret 4 2) 0)
      ; (= (secret 4 3) 0)
      ; (= (secret 4 4) 1)
      (= (loc_encode 0 0 0 0) 0)
      (= (loc_encode 0 0 0 1) 1)
      (= (loc_encode 0 0 1 0) 2)
      (= (loc_encode 0 0 1 1) 3)
      (= (loc_encode 0 1 0 0) 4)
      (= (loc_encode 0 1 0 1) 5)
      (= (loc_encode 0 1 1 0) 6)
      (= (loc_encode 0 1 1 1) 7)
      (= (loc_encode 1 0 0 0) 8)
      (= (loc_encode 1 0 0 1) 9)
      (= (loc_encode 1 0 1 0) 10)
      (= (loc_encode 1 0 1 1) 11)
      (= (loc_encode 1 1 0 0) 12)
      (= (loc_encode 1 1 0 1) 13)
      (= (loc_encode 1 1 1 0) 14)
      (= (loc_encode 1 1 1 1) 15)

    )

    (:goal
      (and

        ; (= (ak 2) 1)
        ; (= (ak 4) 0)
        ; (= (bk 3) 1)
        ; (= (bk 1) 0)
        ; (= (ck 4) 1)
        ; (= (ck 2) 0)
        ; (= (dk 1) 1)
        ; (= (dk 3) 0)

        (= (fact p1) 1)
        (= (fact p2) 1)
        (= (fact p3) 1)
        (= (fact p4) 1)

        (= (fact n1) 0)
        (= (fact n2) 0)
        (= (fact n3) 0)
        (= (fact n4) 0)

        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"dk 1 obj_1:value:2"}}
        ; {"query_info":{"id":"p2","query":"dk 2 obj_1:value:3"}}
        ; {"query_info":{"id":"p3","query":"dk 3 obj_1:value:4"}}
        ; {"query_info":{"id":"p4","query":"dk 4 obj_1:value:1"}}

        ; {"query_info":{"id":"n1","query":"dk 1 obj_1:value:4"}}
        ; {"query_info":{"id":"n2","query":"dk 2 obj_1:value:1"}}
        ; {"query_info":{"id":"n3","query":"dk 3 obj_1:value:2"}}
        ; {"query_info":{"id":"n4","query":"dk 4 obj_1:value:3"}}

      )
    )

    (:bounds
        (boolean - int[0..1])
        (encode - int[0..15])
        (loc - int[0..1])
        (agent - int[1..4])
    )
)

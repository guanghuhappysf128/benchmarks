;;does not working because fractional number does not support
(define (problem testing)
    (:domain grapevine)
    (:objects
        p1 - pos
        n1 - neg
    )

    (:init

      ; initial states and only agent a is movable

      ; {"agent_info":{"id":"agt_a","location":"1","secret":"yes"}}
      ; {"agent_info":{"id":"agt_b","location":"2","secret":"yes"}}
      ; {"agent_info":{"id":"agt_c","location":"3","secret":"yes"}}
      ; {"object_info":{"id":"obj_1","location":"1","value":"obj111"}}
      ; {"object_info":{"id":"obj_2","location":"2","value":"obj111"}}
      ; {"object_info":{"id":"obj_3","location":"3","value":"obj111"}}
      ; {"object_info":{"id":"obj_4","location":"4","value":"obj111"}}

      ;(enable_nega)

      ; (= (fact n1) 0)
      ; (= (fact p1) 0)
      ; (= (check 1 n1) 1)
      ; (= (check 2 n1) 1)
      ; (= (check 3 n1) 1)
      ; (= (check 4 n1) 0)
      ; (= (check 1 p1) 0)
      ; (= (check 2 p1) 1)
      ; (= (check 3 p1) 1)
      ; (= (check 4 p1) 1)
      (= (location 1) 1)
      (= (location 2) 1)
      (= (location 3) 1)
      (= (location 4) 1)

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
      ; (= (loc_encode 0 0 0 0) 0)
      ; (= (loc_encode 0 0 0 1) 1)
      ; (= (loc_encode 0 0 1 0) 2)
      ; (= (loc_encode 0 0 1 1) 3)
      ; (= (loc_encode 0 1 0 0) 4)
      ; (= (loc_encode 0 1 0 1) 5)
      ; (= (loc_encode 0 1 1 0) 6)
      ; (= (loc_encode 0 1 1 1) 7)
      ; (= (loc_encode 1 0 0 0) 8)
      ; (= (loc_encode 1 0 0 1) 9)
      ; (= (loc_encode 1 0 1 0) 10)
      ; (= (loc_encode 1 0 1 1) 11)
      ; (= (loc_encode 1 1 0 0) 12)
      ; (= (loc_encode 1 1 0 1) 13)
      ; (= (loc_encode 1 1 1 0) 14)
      ; (= (loc_encode 1 1 1 1) 15)

    )

    (:goal
      (and
        (= (ak 2) 1)
        (= (ak 4) 0)
        (= (bk 3) 1)
        (= (bk 1) 0)
        (= (ck 4) 1)
        (= (ck 2) 0)
        (= (dk 1) 1)
        (= (dk 3) 0)

        ;(secret)
        ; (= (fact p1) 1)
        ; (= (fact p2) 1)
        ; (= (fact p3) 1)
        ; (= (fact p4) 1)
        ; (= (fact n1) 0)
        ; (= (fact n2) 0)
        ; (= (fact n3) 0)
        ; (= (fact n4) 0)

        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"ds agt_a agt_b:secret:"}}
        ; {"query_info":{"id":"p2","query":"ds agt_b agt_c:secret:"}}
        ; {"query_info":{"id":"p3","query":"ds agt_c agt_d:secret:"}}
        ; {"query_info":{"id":"p4","query":"ds agt_d agt_a:secret:"}}

        ; {"query_info":{"id":"n1","query":"ds agt_a agt_d:secret:"}}
        ; {"query_info":{"id":"n1","query":"ds agt_b agt_a:secret:"}}
        ; {"query_info":{"id":"n1","query":"ds agt_c agt_b:secret:"}}
        ; {"query_info":{"id":"n1","query":"ds agt_d agt_c:secret:"}}

      )
    )

    (:bounds
        (boolean - int[0..1])
        (encode - int[0..15])
        (loc - int[1..2])
        (agent - int[1..4])
    )
)

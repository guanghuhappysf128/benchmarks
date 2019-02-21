;;does not working because fractional number does not support
(define (problem testing001)
    (:domain corridor)
    (:objects
        r1 r2 r3 r4 - room
        p1 - pos
        n1 - neg
    )

    (:init

      ; initial states and only agent a is movable

      ; {"agent_info":{"id":"agt_a","location":"r1"}}
      ; {"agent_info":{"id":"agt_b","location":"r2"}}
      ; {"agent_info":{"id":"agt_c","location":"r3"}}
      ; {"object_info":{"id":"obj_1","location":"r1","value":"obj111"}}
      ; {"object_info":{"id":"obj_2","location":"r2","value":"obj111"}}
      ; {"object_info":{"id":"obj_3","location":"r3","value":"obj111"}}
      ; {"object_info":{"id":"obj_4","location":"r4","value":"obj111"}}

      (at r1)
      (= (a_loc) 1)
      (secret_at r2)
      (succ r1 r2)
      (succ r2 r3)
      (succ r3 r4)
      (enable_nega)

      (= (fact n1) 0)
      (= (fact p1) 0)

      (= (check 1 n1) 1)
      (= (check 2 n1) 1)
      (= (check 3 n1) 1)
      (= (check 4 n1) 0)
      (= (check 1 p1) 0)
      (= (check 2 p1) 1)
      (= (check 3 p1) 1)
      (= (check 4 p1) 1)

    )

    (:goal
      (and
        ;(secret)
        (= (fact p1) 1)
        (= (fact n1) 0)
        (enable_nega)
        ; when a shout, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"ds c agt_a:secret:"}}
        ; {"query_info":{"id":"n1","query":"ds b agt_a:secret:"}}

        ;(= (@check1 (camera1_x) (camera1_y) (camera1_direction) 1) 1)
        ;(query_info 1 ck a b1:value:box1)
        ;(query_info 2 ck b b1:value:box1)
        ;(query_info 3 ck a,b b1:value:box1)
        ;(query_info 4 ck 1 b2:value:box2)


      )
    )

    (:bounds
        (boolean - int[0..1])
        (loc - int[1..4])
    )
)

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

      ; {"agent_info":{"id":"agt_a","location":"1","secret":"yes","visible":"yes"}}
      ; {"agent_info":{"id":"agt_b","location":"1","secret":"yes","visible":"yes"}}
      ; {"agent_info":{"id":"agt_c","location":"3","secret":"yes","visible":"yes"}}
      ; {"object_info":{"id":"obj_1","location":"1","value":"obj111","visible":"yes"}}

      (at r1)
      (= (a_loc) 1)
      (secret_at r2)
      (succ r1 r2)
      (succ r2 r3)
      (succ r3 r4)
      ;(enable_nega)

      (= (fact n1) 1)
      (= (fact p1) 1)

      ; (= (check 1 n1) 1)
      ; (= (check 2 n1) 1)
      ; (= (check 3 n1) 1)
      ; (= (check 4 n1) 0)
      ; (= (check 1 p1) 0)
      ; (= (check 2 p1) 1)
      ; (= (check 3 p1) 1)
      ; (= (check 4 p1) 1)

    )

    (:goal
      (and
        ;(secret)
        (= (fact p1) 0)
        (= (fact n1) 1)

        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"dk agt_c dk agt_c dk agt_c agt_a:secret:"}}
        ; {"query_info":{"id":"n1","query":"dk agt_b dk agt_b dk agt_b agt_a:secret:"}}
      )
    )

    (:bounds
        (ternary - int[0..2])
        (loc - int[1..4])
    )
)


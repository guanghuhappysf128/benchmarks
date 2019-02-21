;;does not working because fractional number does not support
(define (problem testing)
    (:domain s_media)
    ; there is no comments allows in objects
    (:objects

        p1 - pos
        n5 - neg
    )
            

    (:init

        ; initial states and only agent a is movable

        ; {"agent_info":{"id":"1","location":"1","1":"1"}}
        ; {"agent_info":{"id":"2","location":"1","1":"1"}}
        ; {"agent_info":{"id":"3","location":"1","1":"1"}}
        ; {"agent_info":{"id":"4","location":"1","1":"1"}}
        ; {"object_info":{"id":"obj_1","location":"1","value":"obj111"}}

        ; (= (fact p1) 0)
        ; (= (fact n5) 0)
        (= (posted 1) 1)
        (= (posted 2) 1)
        (= (posted 3) 1)
        ;(start)

        (= (posted_encoding 1 1 1) 0)
        (= (posted_encoding 1 1 2) 1)
        (= (posted_encoding 1 1 3) 2)
        (= (posted_encoding 1 1 4) 3)
        (= (posted_encoding 1 2 1) 4)
        (= (posted_encoding 1 2 2) 5)
        (= (posted_encoding 1 2 3) 6)
        (= (posted_encoding 1 2 4) 7)
        (= (posted_encoding 1 3 1) 8)
        (= (posted_encoding 1 3 2) 9)
        (= (posted_encoding 1 3 3) 10)
        (= (posted_encoding 1 3 4) 11)
        (= (posted_encoding 1 4 1) 12)
        (= (posted_encoding 1 4 2) 13)
        (= (posted_encoding 1 4 3) 14)
        (= (posted_encoding 1 4 4) 15)
        (= (posted_encoding 2 1 1) 16)
        (= (posted_encoding 2 1 2) 17)
        (= (posted_encoding 2 1 3) 18)
        (= (posted_encoding 2 1 4) 19)
        (= (posted_encoding 2 2 1) 20)
        (= (posted_encoding 2 2 2) 21)
        (= (posted_encoding 2 2 3) 22)
        (= (posted_encoding 2 2 4) 23)
        (= (posted_encoding 2 3 1) 24)
        (= (posted_encoding 2 3 2) 25)
        (= (posted_encoding 2 3 3) 26)
        (= (posted_encoding 2 3 4) 27)
        (= (posted_encoding 2 4 1) 28)
        (= (posted_encoding 2 4 2) 29)
        (= (posted_encoding 2 4 3) 30)
        (= (posted_encoding 2 4 4) 31)
        (= (posted_encoding 3 1 1) 32)
        (= (posted_encoding 3 1 2) 33)
        (= (posted_encoding 3 1 3) 34)
        (= (posted_encoding 3 1 4) 35)
        (= (posted_encoding 3 2 1) 36)
        (= (posted_encoding 3 2 2) 37)
        (= (posted_encoding 3 2 3) 38)
        (= (posted_encoding 3 2 4) 39)
        (= (posted_encoding 3 3 1) 40)
        (= (posted_encoding 3 3 2) 41)
        (= (posted_encoding 3 3 3) 42)
        (= (posted_encoding 3 3 4) 43)
        (= (posted_encoding 3 4 1) 44)
        (= (posted_encoding 3 4 2) 45)
        (= (posted_encoding 3 4 3) 46)
        (= (posted_encoding 3 4 4) 47)
        (= (posted_encoding 4 1 1) 48)
        (= (posted_encoding 4 1 2) 49)
        (= (posted_encoding 4 1 3) 50)
        (= (posted_encoding 4 1 4) 51)
        (= (posted_encoding 4 2 1) 52)
        (= (posted_encoding 4 2 2) 53)
        (= (posted_encoding 4 2 3) 54)
        (= (posted_encoding 4 2 4) 55)
        (= (posted_encoding 4 3 1) 56)
        (= (posted_encoding 4 3 2) 57)
        (= (posted_encoding 4 3 3) 58)
        (= (posted_encoding 4 3 4) 59)
        (= (posted_encoding 4 4 1) 60)
        (= (posted_encoding 4 4 2) 61)
        (= (posted_encoding 4 4 3) 62)
        (= (posted_encoding 4 4 4) 63)


        (= (check 0 p1) 0)
        (= (check 1 p1) 0)
        (= (check 2 p1) 0)
        (= (check 3 p1) 0)
        (= (check 4 p1) 0)
        (= (check 5 p1) 0)
        (= (check 6 p1) 0)
        (= (check 7 p1) 0)
        (= (check 8 p1) 0)
        (= (check 9 p1) 0)
        (= (check 10 p1) 0)
        (= (check 11 p1) 0)
        (= (check 12 p1) 0)
        (= (check 13 p1) 0)
        (= (check 14 p1) 0)
        (= (check 15 p1) 0)
        (= (check 16 p1) 0)
        (= (check 17 p1) 0)
        (= (check 18 p1) 0)
        (= (check 19 p1) 0)
        (= (check 20 p1) 0)
        (= (check 21 p1) 0)
        (= (check 22 p1) 0)
        (= (check 23 p1) 0)
        (= (check 24 p1) 0)
        (= (check 25 p1) 0)
        (= (check 26 p1) 0)
        (= (check 27 p1) 0)
        (= (check 28 p1) 0)
        (= (check 29 p1) 0)
        (= (check 30 p1) 0)
        (= (check 31 p1) 0)
        (= (check 32 p1) 0)
        (= (check 33 p1) 0)
        (= (check 34 p1) 0)
        (= (check 35 p1) 0)
        (= (check 36 p1) 0)
        (= (check 37 p1) 0)
        (= (check 38 p1) 0)
        (= (check 39 p1) 0)
        (= (check 40 p1) 0)
        (= (check 41 p1) 0)
        (= (check 42 p1) 0)
        (= (check 43 p1) 0)
        (= (check 44 p1) 0)
        (= (check 45 p1) 0)
        (= (check 46 p1) 0)
        (= (check 47 p1) 0)
        (= (check 48 p1) 0)
        (= (check 49 p1) 0)
        (= (check 50 p1) 0)
        (= (check 51 p1) 0)
        (= (check 52 p1) 0)
        (= (check 53 p1) 0)
        (= (check 54 p1) 1)
        (= (check 55 p1) 0)
        (= (check 56 p1) 0)
        (= (check 57 p1) 0)
        (= (check 58 p1) 0)
        (= (check 59 p1) 0)
        (= (check 60 p1) 0)
        (= (check 61 p1) 0)
        (= (check 62 p1) 0)
        (= (check 63 p1) 0)




    )

    (:goal
      (and
        (= (check (posted_encoding (posted 1) (posted 2) (posted 3)) p1) 1)


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

    (:bounds
        (boolean - int[0..1])
        (encoding - int[0..63])
        (part - int[1..3])
        (agent - int[1..4])
    )
    ; agent with value 0 is just for initial state when no secret part has been post
)

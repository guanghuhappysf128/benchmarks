;;does not working because fractional number does not support
(define (problem testing001)
    (:domain testing_camera)
    (:objects
        p1 - pos
        n1 - neg
    )

    (:init

      ; {"agent_info":{"id":"agt_a","location":"5,5","direction":"45","range":"90","name":"alice"}}
      ; {"agent_info":{"id":"agt_b","location":"15,15","direction":"-135","range":"90","name":"bob"}}

      ; {"object_info":{"id":"obj_1","location":"1,1","name":"box1"}}
      ; {"object_info":{"id":"obj_2","location":"10,10","name":"box2"}}
      ; {"object_info":{"id":"obj_3","location":"19,19","name":"box3"}}
      
      ;(= (fact n1) 0)
      (= (fact p1) 0)      

      (= (camera1_direction) 45)
      (= (camera1_x) 5)
      (= (camera1_y) 5)
    )

    (:goal

      (and

        (= (@check1 (camera1_x) (camera1_y) (camera1_direction) p1) 1)
        (= (@check1 (camera1_x) (camera1_y) (camera1_direction) n1) 0)
        ;(= (fact p1) 1)
        ;(= (fact n1) 0)
        ; {"query_info":{"id":"p1","query":"dk agt_a obj_1:name:box1"}}
        ; {"query_info":{"id":"n1","query":"dk agt_b dk agt_a obj_1:name:box1"}}
      )
    )

    (:bounds
        (x - int[0..20]) 
        (y - int[0..20]) 
        (r - int[-179..180]) 
        ;(r - int[0..1])
        (boolean - int[0..1]) 
        (dx - int[-2..2])
        (dy - int[-2..2])
        (dr - int[-45..45])
        ;(dr - int[-1..1]);;whether we can make this enumerate?
    )
)

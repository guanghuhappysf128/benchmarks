;;does not working because fractional number does not support
(define (problem testing001)
    (:domain testing_camera)
    (:objects
        p1 - pos
    )

    (:init

      ; {"agent_info":{"id":"agt_a","location":"5,5","direction":"45","range":"90","name":"alice","visible":"yes"}}
      ; {"agent_info":{"id":"agt_b","location":"15,15","direction":"-135","range":"90","name":"bob","visible":"yes"}}

      ; {"object_info":{"id":"obj_1","location":"1,1","name":"box1","visible":"yes"}}
      ; {"object_info":{"id":"obj_2","location":"10,10","name":"box2","visible":"yes"}}
      ; {"object_info":{"id":"obj_3","location":"19,19","name":"box3","visible":"yes"}}
      
      (= (camera1_direction) 45)
      (= (camera1_x) 5)
      (= (camera1_y) 5)
    )

    (:goal

      (and

        (= (@check1 (camera1_x) (camera1_y) (camera1_direction) p1) 0)
        ; {"query_info":{"id":"p1","query":"ek agt_a,agt_b obj_1:name:box1|obj_2:name:box2"}}
      )
    )

    (:bounds
        (x - int[-20..20]) 
        (y - int[-20..20]) 
        (r - int[-179..180]) 
        ;(r - int[0..1])
        (boolean - int[0..2]) 
        (dx - int[-2..2])
        (dy - int[-2..2])
        (dr - int[-45..45])
        ;(dr - int[-1..1]);;whether we can make this enumerate?
    )
)

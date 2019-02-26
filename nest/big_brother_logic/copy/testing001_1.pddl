;;does not working because fractional number does not support
(define (problem testing001)
    (:domain testing_camera)
    (:objects

      ck dk cs ds - knowledge ; those ara knowledge operators, ck is 2
      alice bob - camera
      a b - camera_id
      box1 box2 box3 - object
      b1 b2 b3 - object_id
    )

    (:init
      ;(camera_info 5 5 45 90 alice a)
      ;(camera_info 10 10 -135 90 bob b)
      ;(object_info 0 0 box1 b1)
      ;(object_info 10 10 box2 b2)
      ;(object_info 19 19 box3 b3)

      (= (camera1_direction) 45)
      (= (camera1_x) 5)
      (= (camera1_y) 5)
      (= (cameraNone_direction) -135)
      (= (cameraNone_x) 9)
      (= (cameraNone_y) 9)
    )

    (:goal
      (and
        ;(= (@check (camera1_x) (camera1_y) (camera1_direction) ck 1 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 2 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 1 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 3 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 3 2) 1)

        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 2 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 1 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 3 1) 1)
        ; (= (@check (camera1_x) (camera1_y) (camera1_direction) ck 3 2) 1)
        (= (@check1 (camera1_x) (camera1_y) (camera1_direction) 1) 1)
        ;(= (@check1 (camera1_x) (camera1_y) (camera1_direction) 3) 1)
        (= (@check1 (camera1_x) (camera1_y) (camera1_direction) 5) 0)
        ;(query_info 1 ck a b1:value:box1)
        ;(query_info 2 ck b b1:value:box1)
        ;(query_info 3 ck a,b b1:value:box1)
        ;(query_info 4 ck 1 b2:value:box2)
        ;(query_info 5 cs b a:direction:box2)
        ;
        ;
        ;

      )
    )

    (:bounds
        (q - int[1..4])
        (x - int[0..20]) 
        (y - int[0..20]) 
        (r - int[-179..180]) 
        ;(r - int[0..1])
        (boolean - int[0..1]) 
        (camera - int[1..2]) 
        (target - int[1..3])
        (dx - int[-2..2])
        (dy - int[-2..2])
        (dr - int[-45..45])
        ;(dr - int[-1..1]);;whether we can make this enumerate?
        (group - int[1..3])
    )
)

(define (problem grid_4_4_2_2_8_4)
  (:domain helper_fn_strips)
  (:objects
    cat_0 cat_1 cat_2 cat_3 cat_4 cat_5 cat_6 cat_7 - cat
    n_0_0 n_0_1 n_0_2 n_0_3 n_1_0 n_1_1 n_1_2 n_1_3 n_2_0 n_2_1 n_2_2 n_2_3 n_3_0 n_3_1 n_3_2 n_3_3 - node
  )
  (:init
    		(exit n_0_0)
		(exit n_3_0)
    		(edge n_0_0 n_1_0)
		(edge n_0_0 n_0_1)
		(edge n_0_1 n_1_1)
		(edge n_0_1 n_0_2)
		(edge n_0_1 n_0_0)
		(edge n_0_2 n_1_2)
		(edge n_0_2 n_0_3)
		(edge n_0_2 n_0_1)
		(edge n_0_3 n_1_3)
		(edge n_0_3 n_0_2)
		(edge n_1_0 n_0_0)
		(edge n_1_0 n_2_0)
		(edge n_1_0 n_1_1)
		(edge n_1_1 n_0_1)
		(edge n_1_1 n_2_1)
		(edge n_1_1 n_1_2)
		(edge n_1_1 n_1_0)
		(edge n_1_2 n_0_2)
		(edge n_1_2 n_2_2)
		(edge n_1_2 n_1_3)
		(edge n_1_2 n_1_1)
		(edge n_1_3 n_0_3)
		(edge n_1_3 n_2_3)
		(edge n_1_3 n_1_2)
		(edge n_2_0 n_1_0)
		(edge n_2_0 n_3_0)
		(edge n_2_0 n_2_1)
		(edge n_2_1 n_1_1)
		(edge n_2_1 n_3_1)
		(edge n_2_1 n_2_2)
		(edge n_2_1 n_2_0)
		(edge n_2_2 n_1_2)
		(edge n_2_2 n_3_2)
		(edge n_2_2 n_2_3)
		(edge n_2_2 n_2_1)
		(edge n_2_3 n_1_3)
		(edge n_2_3 n_3_3)
		(edge n_2_3 n_2_2)
		(edge n_3_0 n_2_0)
		(edge n_3_0 n_3_1)
		(edge n_3_1 n_2_1)
		(edge n_3_1 n_3_2)
		(edge n_3_1 n_3_0)
		(edge n_3_2 n_2_2)
		(edge n_3_2 n_3_3)
		(edge n_3_2 n_3_1)
		(edge n_3_3 n_2_3)
		(edge n_3_3 n_3_2)
    (= (location cat_0) n_1_1)
(= (location cat_1) n_2_3)
(= (location cat_2) n_2_3)
(= (location cat_3) n_3_2)
(= (location cat_4) n_3_3)
(= (location cat_5) n_2_2)
(= (location cat_6) n_2_0)
(= (location cat_7) n_1_1)
    (= (view_range cat_0) 2)
(= (view_range cat_1) 2)
(= (view_range cat_2) 2)
(= (view_range cat_3) 2)
(= (view_range cat_4) 2)
(= (view_range cat_5) 2)
(= (view_range cat_6) 2)
(= (view_range cat_7) 2)
   )

   (:goal
    (and
        (exit (location cat_0))
(exit (location cat_1))
(exit (location cat_2))
(exit (location cat_3))
(exit (location cat_4))
(exit (location cat_5))
(exit (location cat_6))
(exit (location cat_7))
    )
   )

   (:bounds
    (distance - int[0..128])
   )

 )


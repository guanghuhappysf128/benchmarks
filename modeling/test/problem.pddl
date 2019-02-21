(define (problem BLOCKS-example)
   (:domain BLOCKS)
   (:objects
       A B C
       )    
    (:init
       (CLEAR A)
       (CLEAR B)
       (ONTABLE B)
       (ONTABLE C)
       (ON A C)
       (start)
       )    
    (:goal
       (AND
           (ON A B)
           (ON B C)
           )
       )
)
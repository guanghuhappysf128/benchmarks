;; Gossip problem - PDDL domain file
;; depth 2, e agents

(define (domain gossip)
	(:requirements
		:strips :disjunctive-preconditions :equality
	)

	(:predicates
		(ps1) (ps2) (ps3) (ps4) (ps5)
		(S-1 ?i1 ?s) (S-2 ?i1 ?i2 ?s)
	)

	(:action call
		:parameters (?i ?j)
		:effect (and
			(when (or (and (S-1 ?i s1) (ps1)) (and (S-1 ?j s1) (ps1))) (and (S-1 ?i s1) (S-1 ?j s1) (S-2 ?i ?j s1) (S-2 ?j ?i s1)))
			(when (or (and (S-1 ?i s2) (ps2)) (and (S-1 ?j s2) (ps2))) (and (S-1 ?i s2) (S-1 ?j s2) (S-2 ?i ?j s2) (S-2 ?j ?i s2)))
			(when (or (and (S-1 ?i s3) (ps3)) (and (S-1 ?j s3) (ps3))) (and (S-1 ?i s3) (S-1 ?j s3) (S-2 ?i ?j s3) (S-2 ?j ?i s3)))
			(when (or (and (ps4) (S-1 ?i s4)) (and (S-1 ?j s4) (ps4))) (and (S-1 ?i s4) (S-1 ?j s4) (S-2 ?i ?j s4) (S-2 ?j ?i s4)))
			(when (or (and (ps5) (S-1 ?i s5)) (and (S-1 ?j s5) (ps5))) (and (S-1 ?i s5) (S-1 ?j s5) (S-2 ?i ?j s5) (S-2 ?j ?i s5)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-2 ?i a s1) (S-1 ?i s1) (S-1 a s1) (ps1)) (and (S-1 ?j s1) (S-2 ?j a s1) (S-1 a s1) (ps1)))) (and (S-2 ?i a s1) (S-2 ?j a s1)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-1 ?i s2) (S-2 ?i a s2) (S-1 a s2) (ps2)) (and (S-1 ?j s2) (S-1 a s2) (S-2 ?j a s2) (ps2)))) (and (S-2 ?i a s2) (S-2 ?j a s2)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-1 a s3) (S-1 ?i s3) (S-2 ?i a s3) (ps3)) (and (S-1 a s3) (S-2 ?j a s3) (S-1 ?j s3) (ps3)))) (and (S-2 ?i a s3) (S-2 ?j a s3)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-2 ?i a s4) (S-1 a s4) (ps4) (S-1 ?i s4)) (and (S-1 ?j s4) (S-1 a s4) (S-2 ?j a s4) (ps4)))) (and (S-2 ?i a s4) (S-2 ?j a s4)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-1 ?i s5) (S-2 ?i a s5) (ps5) (S-1 a s5)) (and (S-2 ?j a s5) (S-1 ?j s5) (ps5) (S-1 a s5)))) (and (S-2 ?i a s5) (S-2 ?j a s5)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i b s1) (S-1 ?i s1) (ps1) (S-1 b s1)) (and (S-2 ?j b s1) (S-1 ?j s1) (ps1) (S-1 b s1)))) (and (S-2 ?i b s1) (S-2 ?j b s1)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i b s2) (S-1 ?i s2) (ps2) (S-1 b s2)) (and (S-1 ?j s2) (S-2 ?j b s2) (ps2) (S-1 b s2)))) (and (S-2 ?i b s2) (S-2 ?j b s2)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-1 ?i s3) (S-2 ?i b s3) (S-1 b s3) (ps3)) (and (S-2 ?j b s3) (S-1 b s3) (S-1 ?j s3) (ps3)))) (and (S-2 ?i b s3) (S-2 ?j b s3)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i b s4) (S-1 b s4) (ps4) (S-1 ?i s4)) (and (S-1 ?j s4) (S-2 ?j b s4) (S-1 b s4) (ps4)))) (and (S-2 ?i b s4) (S-2 ?j b s4)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-1 b s5) (S-2 ?i b s5) (ps5) (S-1 ?i s5)) (and (S-1 b s5) (S-2 ?j b s5) (S-1 ?j s5) (ps5)))) (and (S-2 ?i b s5) (S-2 ?j b s5)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-1 c s1) (S-1 ?i s1) (S-2 ?i c s1) (ps1)) (and (S-1 ?j s1) (S-1 c s1) (S-2 ?j c s1) (ps1)))) (and (S-2 ?i c s1) (S-2 ?j c s1)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 ?i c s2) (S-1 ?i s2) (ps2) (S-1 c s2)) (and (S-1 ?j s2) (S-2 ?j c s2) (ps2) (S-1 c s2)))) (and (S-2 ?i c s2) (S-2 ?j c s2)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-1 ?i s3) (S-2 ?i c s3) (S-1 c s3) (ps3)) (and (S-1 c s3) (S-2 ?j c s3) (S-1 ?j s3) (ps3)))) (and (S-2 ?i c s3) (S-2 ?j c s3)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 ?i c s4) (ps4) (S-1 c s4) (S-1 ?i s4)) (and (S-1 ?j s4) (ps4) (S-1 c s4) (S-2 ?j c s4)))) (and (S-2 ?i c s4) (S-2 ?j c s4)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-1 ?i s5) (S-1 c s5) (ps5) (S-2 ?i c s5)) (and (S-1 c s5) (S-1 ?j s5) (S-2 ?j c s5) (ps5)))) (and (S-2 ?i c s5) (S-2 ?j c s5)))
			(when (and (not (= ?i d)) (not (= ?j d)) (or (and (S-2 ?i d s1) (S-1 ?i s1) (ps1) (S-1 d s1)) (and (S-2 ?j d s1) (S-1 ?j s1) (ps1) (S-1 d s1)))) (and (S-2 ?i d s1) (S-2 ?j d s1)))
			(when (and (not (= ?i d)) (not (= ?j d)) (or (and (S-2 ?i d s2) (S-1 ?i s2) (S-1 d s2) (ps2)) (and (S-1 ?j s2) (S-2 ?j d s2) (S-1 d s2) (ps2)))) (and (S-2 ?i d s2) (S-2 ?j d s2)))
			(when (and (not (= ?i d)) (not (= ?j d)) (or (and (S-1 ?i s3) (S-2 ?i d s3) (S-1 d s3) (ps3)) (and (S-2 ?j d s3) (S-1 d s3) (S-1 ?j s3) (ps3)))) (and (S-2 ?i d s3) (S-2 ?j d s3)))
			(when (and (not (= ?i d)) (not (= ?j d)) (or (and (S-1 d s4) (ps4) (S-2 ?i d s4) (S-1 ?i s4)) (and (S-1 ?j s4) (S-1 d s4) (ps4) (S-2 ?j d s4)))) (and (S-2 ?i d s4) (S-2 ?j d s4)))
			(when (and (not (= ?i d)) (not (= ?j d)) (or (and (S-1 ?i s5) (ps5) (S-1 d s5) (S-2 ?i d s5)) (and (S-1 ?j s5) (ps5) (S-1 d s5) (S-2 ?j d s5)))) (and (S-2 ?i d s5) (S-2 ?j d s5)))
			(when (and (not (= ?i e)) (not (= ?j e)) (or (and (S-1 ?i s1) (S-2 ?i e s1) (ps1) (S-1 e s1)) (and (S-2 ?j e s1) (S-1 ?j s1) (ps1) (S-1 e s1)))) (and (S-2 ?i e s1) (S-2 ?j e s1)))
			(when (and (not (= ?i e)) (not (= ?j e)) (or (and (S-1 e s2) (S-1 ?i s2) (ps2) (S-2 ?i e s2)) (and (S-1 ?j s2) (S-1 e s2) (S-2 ?j e s2) (ps2)))) (and (S-2 ?i e s2) (S-2 ?j e s2)))
			(when (and (not (= ?i e)) (not (= ?j e)) (or (and (S-1 ?i s3) (S-1 e s3) (S-2 ?i e s3) (ps3)) (and (S-1 e s3) (S-2 ?j e s3) (S-1 ?j s3) (ps3)))) (and (S-2 ?i e s3) (S-2 ?j e s3)))
			(when (and (not (= ?i e)) (not (= ?j e)) (or (and (S-2 ?i e s4) (S-1 e s4) (ps4) (S-1 ?i s4)) (and (S-1 ?j s4) (S-2 ?j e s4) (S-1 e s4) (ps4)))) (and (S-2 ?i e s4) (S-2 ?j e s4)))
			(when (and (not (= ?i e)) (not (= ?j e)) (or (and (S-1 ?i s5) (S-2 ?i e s5) (ps5) (S-1 e s5)) (and (S-1 ?j s5) (S-2 ?j e s5) (ps5) (S-1 e s5)))) (and (S-2 ?i e s5) (S-2 ?j e s5)))
		)
	)

	(:action dummy
		:parameters (?i ?j)
		:effect (and
		(ps1) (ps2) (ps3) (ps4) (ps5)		)
	)
)

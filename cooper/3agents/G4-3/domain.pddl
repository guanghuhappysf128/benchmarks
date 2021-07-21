;; Gossip problem - PDDL domain file
;; depth 3, c agents

(define (domain gossip)
	(:requirements
		:strips :disjunctive-preconditions :equality
	)

	(:predicates
		(ps1) (ps2) (ps3)
		(S-1 ?i1 ?s) (S-2 ?i1 ?i2 ?s) (S-3 ?i1 ?i2 ?i3 ?s)
	)

	(:action call
		:parameters (?i ?j)
		:effect (and
			(when (or (and (ps1) (S-1 ?i s1)) (and (ps1) (S-1 ?j s1))) (and (S-1 ?i s1) (S-1 ?j s1) (S-2 ?i ?j s1) (S-2 ?j ?i s1) (S-3 ?i ?j ?i s1) (S-3 ?j ?i ?j s1)))
			(when (or (and (ps2) (S-1 ?i s2)) (and (ps2) (S-1 ?j s2))) (and (S-1 ?i s2) (S-1 ?j s2) (S-2 ?i ?j s2) (S-2 ?j ?i s2) (S-3 ?i ?j ?i s2) (S-3 ?j ?i ?j s2)))
			(when (or (and (ps3) (S-1 ?i s3)) (and (ps3) (S-1 ?j s3))) (and (S-1 ?i s3) (S-1 ?j s3) (S-2 ?i ?j s3) (S-2 ?j ?i s3) (S-3 ?i ?j ?i s3) (S-3 ?j ?i ?j s3)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-2 ?i a s1) (S-1 a s1) (ps1) (S-1 ?i s1)) (and (S-2 ?j a s1) (S-1 a s1) (ps1) (S-1 ?j s1)))) (and (S-2 ?i a s1) (S-2 ?j a s1) (S-3 ?i ?j a s1) (S-3 ?j ?i a s1)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (ps2) (S-2 ?i a s2) (S-1 a s2) (S-1 ?i s2)) (and (ps2) (S-1 a s2) (S-2 ?j a s2) (S-1 ?j s2)))) (and (S-2 ?i a s2) (S-2 ?j a s2) (S-3 ?i ?j a s2) (S-3 ?j ?i a s2)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-2 ?i a s3) (S-1 a s3) (ps3) (S-1 ?i s3)) (and (S-2 ?j a s3) (S-1 a s3) (ps3) (S-1 ?j s3)))) (and (S-2 ?i a s3) (S-2 ?j a s3) (S-3 ?i ?j a s3) (S-3 ?j ?i a s3)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i b s1) (S-1 b s1) (ps1) (S-1 ?i s1)) (and (S-2 ?j b s1) (S-1 b s1) (ps1) (S-1 ?j s1)))) (and (S-2 ?i b s1) (S-2 ?j b s1) (S-3 ?i ?j b s1) (S-3 ?j ?i b s1)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (ps2) (S-2 ?i b s2) (S-1 ?i s2) (S-1 b s2)) (and (ps2) (S-2 ?j b s2) (S-1 b s2) (S-1 ?j s2)))) (and (S-2 ?i b s2) (S-2 ?j b s2) (S-3 ?i ?j b s2) (S-3 ?j ?i b s2)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i b s3) (S-1 b s3) (ps3) (S-1 ?i s3)) (and (S-1 b s3) (S-1 ?j s3) (ps3) (S-2 ?j b s3)))) (and (S-2 ?i b s3) (S-2 ?j b s3) (S-3 ?i ?j b s3) (S-3 ?j ?i b s3)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 ?i c s1) (ps1) (S-1 c s1) (S-1 ?i s1)) (and (S-1 ?j s1) (S-2 ?j c s1) (ps1) (S-1 c s1)))) (and (S-2 ?i c s1) (S-2 ?j c s1) (S-3 ?i ?j c s1) (S-3 ?j ?i c s1)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (ps2) (S-1 c s2) (S-1 ?i s2) (S-2 ?i c s2)) (and (ps2) (S-1 c s2) (S-2 ?j c s2) (S-1 ?j s2)))) (and (S-2 ?i c s2) (S-2 ?j c s2) (S-3 ?i ?j c s2) (S-3 ?j ?i c s2)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-1 c s3) (S-2 ?i c s3) (ps3) (S-1 ?i s3)) (and (S-1 c s3) (S-2 ?j c s3) (ps3) (S-1 ?j s3)))) (and (S-2 ?i c s3) (S-2 ?j c s3) (S-3 ?i ?j c s3) (S-3 ?j ?i c s3)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-2 a b s1) (S-1 b s1) (S-1 ?i s1) (S-2 ?i b s1) (S-1 a s1) (ps1) (S-2 ?i a s1) (S-3 ?i a b s1)) (and (S-2 ?j a s1) (S-3 ?j a b s1) (S-2 a b s1) (S-2 ?j b s1) (S-1 b s1) (S-1 a s1) (ps1) (S-1 ?j s1)))) (and (S-3 ?i a b s1) (S-3 ?j a b s1)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (ps2) (S-2 ?i b s2) (S-3 ?i a b s2) (S-2 ?i a s2) (S-1 a s2) (S-1 ?i s2) (S-2 a b s2) (S-1 b s2)) (and (ps2) (S-3 ?j a b s2) (S-1 a s2) (S-2 ?j a s2) (S-1 ?j s2) (S-2 a b s2) (S-1 b s2) (S-2 ?j b s2)))) (and (S-3 ?i a b s2) (S-3 ?j a b s2)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-2 a b s3) (S-1 b s3) (ps3) (S-2 ?i b s3) (S-1 a s3) (S-2 ?i a s3) (S-1 ?i s3) (S-3 ?i a b s3)) (and (S-2 a b s3) (S-1 b s3) (ps3) (S-1 ?j s3) (S-1 a s3) (S-2 ?j a s3) (S-3 ?j a b s3) (S-2 ?j b s3)))) (and (S-3 ?i a b s3) (S-3 ?j a b s3)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-3 ?i a c s1) (S-2 ?i c s1) (S-1 ?i s1) (S-2 a c s1) (S-1 a s1) (ps1) (S-2 ?i a s1) (S-1 c s1)) (and (S-2 ?j a s1) (S-2 ?j c s1) (S-1 c s1) (S-2 a c s1) (S-1 ?j s1) (S-1 a s1) (ps1) (S-3 ?j a c s1)))) (and (S-3 ?i a c s1) (S-3 ?j a c s1)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (ps2) (S-2 ?i a s2) (S-1 a s2) (S-1 ?i s2) (S-2 a c s2) (S-2 ?i c s2) (S-1 c s2) (S-3 ?i a c s2)) (and (ps2) (S-2 ?j c s2) (S-1 a s2) (S-2 a c s2) (S-2 ?j a s2) (S-1 ?j s2) (S-3 ?j a c s2) (S-1 c s2)))) (and (S-3 ?i a c s2) (S-3 ?j a c s2)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (ps3) (S-3 ?i a c s3) (S-1 a s3) (S-2 ?i a s3) (S-1 ?i s3) (S-1 c s3) (S-2 ?i c s3) (S-2 a c s3)) (and (S-2 ?j c s3) (ps3) (S-3 ?j a c s3) (S-1 a s3) (S-2 ?j a s3) (S-1 c s3) (S-1 ?j s3) (S-2 a c s3)))) (and (S-3 ?i a c s3) (S-3 ?j a c s3)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-1 b s1) (S-3 ?i b a s1) (S-1 ?i s1) (S-2 ?i b s1) (S-1 a s1) (ps1) (S-2 b a s1) (S-2 ?i a s1)) (and (S-3 ?j b a s1) (S-2 ?j a s1) (S-2 ?j b s1) (S-1 b s1) (S-1 a s1) (ps1) (S-2 b a s1) (S-1 ?j s1)))) (and (S-3 ?i b a s1) (S-3 ?j b a s1)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (ps2) (S-3 ?i b a s2) (S-2 ?i b s2) (S-2 ?i a s2) (S-2 b a s2) (S-1 a s2) (S-1 ?i s2) (S-1 b s2)) (and (ps2) (S-2 b a s2) (S-1 a s2) (S-2 ?j a s2) (S-1 ?j s2) (S-2 ?j b s2) (S-1 b s2) (S-3 ?j b a s2)))) (and (S-3 ?i b a s2) (S-3 ?j b a s2)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 b a s3) (S-1 b s3) (ps3) (S-2 ?i b s3) (S-1 a s3) (S-2 ?i a s3) (S-3 ?i b a s3) (S-1 ?i s3)) (and (S-2 b a s3) (S-1 b s3) (ps3) (S-2 ?j b s3) (S-1 a s3) (S-3 ?j b a s3) (S-2 ?j a s3) (S-1 ?j s3)))) (and (S-3 ?i b a s3) (S-3 ?j b a s3)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i c s1) (S-1 b s1) (S-1 ?i s1) (S-2 ?i b s1) (ps1) (S-2 b c s1) (S-3 ?i b c s1) (S-1 c s1)) (and (S-2 ?j c s1) (S-2 ?j b s1) (S-1 b s1) (S-1 ?j s1) (ps1) (S-3 ?j b c s1) (S-2 b c s1) (S-1 c s1)))) (and (S-3 ?i b c s1) (S-3 ?j b c s1)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (ps2) (S-2 b c s2) (S-2 ?i b s2) (S-3 ?i b c s2) (S-1 ?i s2) (S-1 b s2) (S-2 ?i c s2) (S-1 c s2)) (and (ps2) (S-2 b c s2) (S-2 ?j c s2) (S-1 ?j s2) (S-3 ?j b c s2) (S-2 ?j b s2) (S-1 b s2) (S-1 c s2)))) (and (S-3 ?i b c s2) (S-3 ?j b c s2)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-1 b s3) (ps3) (S-3 ?i b c s3) (S-2 b c s3) (S-2 ?i b s3) (S-1 ?i s3) (S-1 c s3) (S-2 ?i c s3)) (and (S-1 b s3) (S-2 ?j c s3) (S-3 ?j b c s3) (ps3) (S-2 ?j b s3) (S-2 b c s3) (S-1 c s3) (S-1 ?j s3)))) (and (S-3 ?i b c s3) (S-3 ?j b c s3)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 ?i c s1) (S-1 ?i s1) (S-3 ?i c a s1) (S-1 a s1) (ps1) (S-2 c a s1) (S-2 ?i a s1) (S-1 c s1)) (and (S-2 ?j a s1) (S-2 ?j c s1) (S-1 ?j s1) (S-1 a s1) (ps1) (S-2 c a s1) (S-3 ?j c a s1) (S-1 c s1)))) (and (S-3 ?i c a s1) (S-3 ?j c a s1)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (ps2) (S-3 ?i c a s2) (S-2 c a s2) (S-2 ?i a s2) (S-1 a s2) (S-1 ?i s2) (S-2 ?i c s2) (S-1 c s2)) (and (ps2) (S-2 ?j c s2) (S-2 c a s2) (S-1 a s2) (S-3 ?j c a s2) (S-2 ?j a s2) (S-1 ?j s2) (S-1 c s2)))) (and (S-3 ?i c a s2) (S-3 ?j c a s2)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 c a s3) (ps3) (S-3 ?i c a s3) (S-1 a s3) (S-2 ?i a s3) (S-1 ?i s3) (S-1 c s3) (S-2 ?i c s3)) (and (S-2 ?j c s3) (S-2 c a s3) (ps3) (S-3 ?j c a s3) (S-1 a s3) (S-2 ?j a s3) (S-1 c s3) (S-1 ?j s3)))) (and (S-3 ?i c a s3) (S-3 ?j c a s3)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 ?i c s1) (S-3 ?i c b s1) (S-1 b s1) (S-1 ?i s1) (S-2 ?i b s1) (ps1) (S-2 c b s1) (S-1 c s1)) (and (S-3 ?j c b s1) (S-2 ?j c s1) (S-2 ?j b s1) (S-1 b s1) (S-1 ?j s1) (ps1) (S-2 c b s1) (S-1 c s1)))) (and (S-3 ?i c b s1) (S-3 ?j c b s1)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (ps2) (S-2 ?i b s2) (S-1 ?i s2) (S-1 b s2) (S-2 ?i c s2) (S-1 c s2) (S-3 ?i c b s2) (S-2 c b s2)) (and (ps2) (S-2 ?j c s2) (S-3 ?j c b s2) (S-1 ?j s2) (S-2 ?j b s2) (S-1 b s2) (S-1 c s2) (S-2 c b s2)))) (and (S-3 ?i c b s2) (S-3 ?j c b s2)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-1 b s3) (S-2 c b s3) (S-3 ?i c b s3) (ps3) (S-2 ?i b s3) (S-1 ?i s3) (S-1 c s3) (S-2 ?i c s3)) (and (S-1 b s3) (S-2 c b s3) (S-2 ?j c s3) (ps3) (S-1 ?j s3) (S-3 ?j c b s3) (S-1 c s3) (S-2 ?j b s3)))) (and (S-3 ?i c b s3) (S-3 ?j c b s3)))
		)
	)

	(:action dummy
		:parameters (?i ?j)
		:effect (and
		(ps1) (ps2) (ps3)		)
	)
)

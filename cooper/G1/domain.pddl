;; Gossip problem - PDDL domain file
;; depth 2, c agents

(define (domain gossip)
	(:requirements
		:strips :disjunctive-preconditions :equality
	)

	(:predicates
		(ps1) (ps2) (ps3)
		(S-1 ?i1 ?s) (S-2 ?i1 ?i2 ?s)
	)

	(:action call
		:parameters (?i ?j)
		:effect (and
			(when (or (and (S-1 ?i s1) (ps1)) (and (S-1 ?j s1) (ps1))) (and (S-1 ?i s1) (S-1 ?j s1) (S-2 ?i ?j s1) (S-2 ?j ?i s1)))
			(when (or (and (ps2) (S-1 ?i s2)) (and (ps2) (S-1 ?j s2))) (and (S-1 ?i s2) (S-1 ?j s2) (S-2 ?i ?j s2) (S-2 ?j ?i s2)))
			(when (or (and (ps3) (S-1 ?i s3)) (and (ps3) (S-1 ?j s3))) (and (S-1 ?i s3) (S-1 ?j s3) (S-2 ?i ?j s3) (S-2 ?j ?i s3)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (S-1 ?i s1) (ps1) (S-2 ?i a s1) (S-1 a s1)) (and (S-1 ?j s1) (ps1) (S-1 a s1) (S-2 ?j a s1)))) (and (S-2 ?i a s1) (S-2 ?j a s1)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (ps2) (S-2 ?i a s2) (S-1 a s2) (S-1 ?i s2)) (and (ps2) (S-1 a s2) (S-2 ?j a s2) (S-1 ?j s2)))) (and (S-2 ?i a s2) (S-2 ?j a s2)))
			(when (and (not (= ?i a)) (not (= ?j a)) (or (and (ps3) (S-1 a s3) (S-1 ?i s3) (S-2 ?i a s3)) (and (S-2 ?j a s3) (ps3) (S-1 ?j s3) (S-1 a s3)))) (and (S-2 ?i a s3) (S-2 ?j a s3)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-1 ?i s1) (ps1) (S-1 b s1) (S-2 ?i b s1)) (and (S-1 ?j s1) (ps1) (S-1 b s1) (S-2 ?j b s1)))) (and (S-2 ?i b s1) (S-2 ?j b s1)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (ps2) (S-1 b s2) (S-1 ?i s2) (S-2 ?i b s2)) (and (ps2) (S-2 ?j b s2) (S-1 b s2) (S-1 ?j s2)))) (and (S-2 ?i b s2) (S-2 ?j b s2)))
			(when (and (not (= ?i b)) (not (= ?j b)) (or (and (S-2 ?i b s3) (ps3) (S-1 ?i s3) (S-1 b s3)) (and (ps3) (S-1 ?j s3) (S-2 ?j b s3) (S-1 b s3)))) (and (S-2 ?i b s3) (S-2 ?j b s3)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-1 c s1) (S-1 ?i s1) (ps1) (S-2 ?i c s1)) (and (S-1 c s1) (S-1 ?j s1) (ps1) (S-2 ?j c s1)))) (and (S-2 ?i c s1) (S-2 ?j c s1)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (ps2) (S-1 c s2) (S-2 ?i c s2) (S-1 ?i s2)) (and (ps2) (S-1 c s2) (S-2 ?j c s2) (S-1 ?j s2)))) (and (S-2 ?i c s2) (S-2 ?j c s2)))
			(when (and (not (= ?i c)) (not (= ?j c)) (or (and (S-2 ?i c s3) (ps3) (S-1 ?i s3) (S-1 c s3)) (and (ps3) (S-1 ?j s3) (S-2 ?j c s3) (S-1 c s3)))) (and (S-2 ?i c s3) (S-2 ?j c s3)))
		)
	)

	(:action dummy
		:parameters (?i ?j)
		:effect (and
		(ps1) (ps2) (ps3)		)
	)
)

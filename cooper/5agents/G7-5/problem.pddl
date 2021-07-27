;; Gossip problem - PDDL problem file
;; depth 5, e agents

(define (problem gossip)
	(:domain gossip)

	(:objects a b c d e s1 s2 s3 s4 s5)

	(:init
		(ps1) (ps2) (ps3) (ps4) (ps5)
		(S-1 a s1) (S-1 b s2) (S-1 c s3) (S-1 d s4) (S-1 e s5)
	)

	(:goal (and
		(S-5 a b c d e s1)
	))
)
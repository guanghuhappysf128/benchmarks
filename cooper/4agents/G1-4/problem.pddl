;; Gossip problem - PDDL problem file
;; depth 2, d agents

(define (problem gossip)
	(:domain gossip)

	(:objects a b c d s1 s2 s3 s4)

	(:init
		(ps1) (ps2) (ps3) (ps4)
		(S-1 a s1) (S-1 b s2) (S-1 c s3) (S-1 d s4)
	)

	(:goal (and
		(S-2 a b s3)
	))
)

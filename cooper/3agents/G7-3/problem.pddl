;; Gossip problem - PDDL problem file
;; depth 5, c agents

(define (problem gossip)
	(:domain gossip)

	(:objects a b c s1 s2 s3)

	(:init
		(ps1) (ps2) (ps3)
		(S-1 a s1) (S-1 b s2) (S-1 c s3)
	)

	(:goal (and
		(S-5 c b a c b s1)
	))
)

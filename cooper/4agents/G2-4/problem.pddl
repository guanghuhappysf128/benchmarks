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
		(ps1) (ps2) (ps3) (ps4)
		(S-1 a s1) (S-1 a s2) (S-1 a s3) (S-1 a s4) (S-1 b s1) (S-1 b s2) (S-1 b s3) (S-1 b s4) (S-1 c s1) (S-1 c s2) (S-1 c s3) (S-1 c s4) (S-1 d s1) (S-1 d s2) (S-1 d s3) (S-1 d s4)
		(S-2 a b s1) (S-2 a b s2) (S-2 a b s3) (S-2 a b s4) (S-2 a c s1) (S-2 a c s2) (S-2 a c s3) (S-2 a c s4) (S-2 a d s1) (S-2 a d s2) (S-2 a d s3) (S-2 a d s4) (S-2 b a s1) (S-2 b a s2) (S-2 b a s3) (S-2 b a s4) (S-2 b c s1) (S-2 b c s2) (S-2 b c s3) (S-2 b c s4) (S-2 b d s1) (S-2 b d s2) (S-2 b d s3) (S-2 b d s4) (S-2 c a s1) (S-2 c a s2) (S-2 c a s3) (S-2 c a s4) (S-2 c b s1) (S-2 c b s2) (S-2 c b s3) (S-2 c b s4) (S-2 c d s1) (S-2 c d s2) (S-2 c d s3) (S-2 c d s4) (S-2 d a s1) (S-2 d a s2) (S-2 d a s3) (S-2 d a s4) (S-2 d b s1) (S-2 d b s2) (S-2 d b s3) (S-2 d b s4) (S-2 d c s1) (S-2 d c s2) (S-2 d c s3) (S-2 d c s4)
	))
)

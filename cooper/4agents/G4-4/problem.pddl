;; Gossip problem - PDDL problem file
;; depth 3, d agents

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
		(S-3 a b a s1) (S-3 a b a s2) (S-3 a b a s3) (S-3 a b a s4) (S-3 a b c s1) (S-3 a b c s2) (S-3 a b c s3) (S-3 a b c s4) (S-3 a b d s1) (S-3 a b d s2) (S-3 a b d s3) (S-3 a b d s4) (S-3 a c a s1) (S-3 a c a s2) (S-3 a c a s3) (S-3 a c a s4) (S-3 a c b s1) (S-3 a c b s2) (S-3 a c b s3) (S-3 a c b s4) (S-3 a c d s1) (S-3 a c d s2) (S-3 a c d s3) (S-3 a c d s4) (S-3 a d a s1) (S-3 a d a s2) (S-3 a d a s3) (S-3 a d a s4) (S-3 a d b s1) (S-3 a d b s2) (S-3 a d b s3) (S-3 a d b s4) (S-3 a d c s1) (S-3 a d c s2) (S-3 a d c s3) (S-3 a d c s4) (S-3 b a b s1) (S-3 b a b s2) (S-3 b a b s3) (S-3 b a b s4) (S-3 b a c s1) (S-3 b a c s2) (S-3 b a c s3) (S-3 b a c s4) (S-3 b a d s1) (S-3 b a d s2) (S-3 b a d s3) (S-3 b a d s4) (S-3 b c a s1) (S-3 b c a s2) (S-3 b c a s3) (S-3 b c a s4) (S-3 b c b s1) (S-3 b c b s2) (S-3 b c b s3) (S-3 b c b s4) (S-3 b c d s1) (S-3 b c d s2) (S-3 b c d s3) (S-3 b c d s4) (S-3 b d a s1) (S-3 b d a s2) (S-3 b d a s3) (S-3 b d a s4) (S-3 b d b s1) (S-3 b d b s2) (S-3 b d b s3) (S-3 b d b s4) (S-3 b d c s1) (S-3 b d c s2) (S-3 b d c s3) (S-3 b d c s4) (S-3 c a b s1) (S-3 c a b s2) (S-3 c a b s3) (S-3 c a b s4) (S-3 c a c s1) (S-3 c a c s2) (S-3 c a c s3) (S-3 c a c s4) (S-3 c a d s1) (S-3 c a d s2) (S-3 c a d s3) (S-3 c a d s4) (S-3 c b a s1) (S-3 c b a s2) (S-3 c b a s3) (S-3 c b a s4) (S-3 c b c s1) (S-3 c b c s2) (S-3 c b c s3) (S-3 c b c s4) (S-3 c b d s1) (S-3 c b d s2) (S-3 c b d s3) (S-3 c b d s4) (S-3 c d a s1) (S-3 c d a s2) (S-3 c d a s3) (S-3 c d a s4) (S-3 c d b s1) (S-3 c d b s2) (S-3 c d b s3) (S-3 c d b s4) (S-3 c d c s1) (S-3 c d c s2) (S-3 c d c s3) (S-3 c d c s4) (S-3 d a b s1) (S-3 d a b s2) (S-3 d a b s3) (S-3 d a b s4) (S-3 d a c s1) (S-3 d a c s2) (S-3 d a c s3) (S-3 d a c s4) (S-3 d a d s1) (S-3 d a d s2) (S-3 d a d s3) (S-3 d a d s4) (S-3 d b a s1) (S-3 d b a s2) (S-3 d b a s3) (S-3 d b a s4) (S-3 d b c s1) (S-3 d b c s2) (S-3 d b c s3) (S-3 d b c s4) (S-3 d b d s1) (S-3 d b d s2) (S-3 d b d s3) (S-3 d b d s4) (S-3 d c a s1) (S-3 d c a s2) (S-3 d c a s3) (S-3 d c a s4) (S-3 d c b s1) (S-3 d c b s2) (S-3 d c b s3) (S-3 d c b s4) (S-3 d c d s1) (S-3 d c d s2) (S-3 d c d s3) (S-3 d c d s4)
	))
)

;; Gossip problem - PDDL problem file
;; depth 2, e agents

(define (problem gossip)
	(:domain gossip)

	(:objects a b c d e s1 s2 s3 s4 s5)

	(:init
		(ps1) (ps2) (ps3) (ps4) (ps5)
		(S-1 a s1) (S-1 b s2) (S-1 c s3) (S-1 d s4) (S-1 e s5)
	)

	(:goal (and
		(ps1) (ps2) (ps3) (ps4) (ps5)
		(S-1 a s1) (S-1 a s2) (S-1 a s3) (S-1 a s4) (S-1 a s5) (S-1 b s1) (S-1 b s2) (S-1 b s3) (S-1 b s4) (S-1 b s5) (S-1 c s1) (S-1 c s2) (S-1 c s3) (S-1 c s4) (S-1 c s5) (S-1 d s1) (S-1 d s2) (S-1 d s3) (S-1 d s4) (S-1 d s5) (S-1 e s1) (S-1 e s2) (S-1 e s3) (S-1 e s4) (S-1 e s5)
		(S-2 a b s1) (S-2 a b s2) (S-2 a b s3) (S-2 a b s4) (S-2 a b s5) (S-2 a c s1) (S-2 a c s2) (S-2 a c s3) (S-2 a c s4) (S-2 a c s5) (S-2 a d s1) (S-2 a d s2) (S-2 a d s3) (S-2 a d s4) (S-2 a d s5) (S-2 a e s1) (S-2 a e s2) (S-2 a e s3) (S-2 a e s4) (S-2 a e s5) (S-2 b a s1) (S-2 b a s2) (S-2 b a s3) (S-2 b a s4) (S-2 b a s5) (S-2 b c s1) (S-2 b c s2) (S-2 b c s3) (S-2 b c s4) (S-2 b c s5) (S-2 b d s1) (S-2 b d s2) (S-2 b d s3) (S-2 b d s4) (S-2 b d s5) (S-2 b e s1) (S-2 b e s2) (S-2 b e s3) (S-2 b e s4) (S-2 b e s5) (S-2 c a s1) (S-2 c a s2) (S-2 c a s3) (S-2 c a s4) (S-2 c a s5) (S-2 c b s1) (S-2 c b s2) (S-2 c b s3) (S-2 c b s4) (S-2 c b s5) (S-2 c d s1) (S-2 c d s2) (S-2 c d s3) (S-2 c d s4) (S-2 c d s5) (S-2 c e s1) (S-2 c e s2) (S-2 c e s3) (S-2 c e s4) (S-2 c e s5) (S-2 d a s1) (S-2 d a s2) (S-2 d a s3) (S-2 d a s4) (S-2 d a s5) (S-2 d b s1) (S-2 d b s2) (S-2 d b s3) (S-2 d b s4) (S-2 d b s5) (S-2 d c s1) (S-2 d c s2) (S-2 d c s3) (S-2 d c s4) (S-2 d c s5) (S-2 d e s1) (S-2 d e s2) (S-2 d e s3) (S-2 d e s4) (S-2 d e s5) (S-2 e a s1) (S-2 e a s2) (S-2 e a s3) (S-2 e a s4) (S-2 e a s5) (S-2 e b s1) (S-2 e b s2) (S-2 e b s3) (S-2 e b s4) (S-2 e b s5) (S-2 e c s1) (S-2 e c s2) (S-2 e c s3) (S-2 e c s4) (S-2 e c s5) (S-2 e d s1) (S-2 e d s2) (S-2 e d s3) (S-2 e d s4) (S-2 e d s5)
	))
)

;; Gossip problem - PDDL problem file
;; depth 4, c agents

(define (problem gossip)
	(:domain gossip)

	(:objects a b c s1 s2 s3)

	(:init
		(ps1) (ps2) (ps3)
		(S-1 a s1) (S-1 b s2) (S-1 c s3)
	)

	(:goal (and
		(ps1) (ps2) (ps3)
		(S-1 a s1) (S-1 a s2) (S-1 a s3) (S-1 b s1) (S-1 b s2) (S-1 b s3) (S-1 c s1) (S-1 c s2) (S-1 c s3)
		(S-2 a b s1) (S-2 a b s2) (S-2 a b s3) (S-2 a c s1) (S-2 a c s2) (S-2 a c s3) (S-2 b a s1) (S-2 b a s2) (S-2 b a s3) (S-2 b c s1) (S-2 b c s2) (S-2 b c s3) (S-2 c a s1) (S-2 c a s2) (S-2 c a s3) (S-2 c b s1) (S-2 c b s2) (S-2 c b s3)
		(S-3 a b a s1) (S-3 a b a s2) (S-3 a b a s3) (S-3 a b c s1) (S-3 a b c s2) (S-3 a b c s3) (S-3 a c a s1) (S-3 a c a s2) (S-3 a c a s3) (S-3 a c b s1) (S-3 a c b s2) (S-3 a c b s3) (S-3 b a b s1) (S-3 b a b s2) (S-3 b a b s3) (S-3 b a c s1) (S-3 b a c s2) (S-3 b a c s3) (S-3 b c a s1) (S-3 b c a s2) (S-3 b c a s3) (S-3 b c b s1) (S-3 b c b s2) (S-3 b c b s3) (S-3 c a b s1) (S-3 c a b s2) (S-3 c a b s3) (S-3 c a c s1) (S-3 c a c s2) (S-3 c a c s3) (S-3 c b a s1) (S-3 c b a s2) (S-3 c b a s3) (S-3 c b c s1) (S-3 c b c s2) (S-3 c b c s3)
		(S-4 a b a b s1) (S-4 a b a b s2) (S-4 a b a b s3) (S-4 a b a c s1) (S-4 a b a c s2) (S-4 a b a c s3) (S-4 a b c a s1) (S-4 a b c a s2) (S-4 a b c a s3) (S-4 a b c b s1) (S-4 a b c b s2) (S-4 a b c b s3) (S-4 a c a b s1) (S-4 a c a b s2) (S-4 a c a b s3) (S-4 a c a c s1) (S-4 a c a c s2) (S-4 a c a c s3) (S-4 a c b a s1) (S-4 a c b a s2) (S-4 a c b a s3) (S-4 a c b c s1) (S-4 a c b c s2) (S-4 a c b c s3) (S-4 b a b a s1) (S-4 b a b a s2) (S-4 b a b a s3) (S-4 b a b c s1) (S-4 b a b c s2) (S-4 b a b c s3) (S-4 b a c a s1) (S-4 b a c a s2) (S-4 b a c a s3) (S-4 b a c b s1) (S-4 b a c b s2) (S-4 b a c b s3) (S-4 b c a b s1) (S-4 b c a b s2) (S-4 b c a b s3) (S-4 b c a c s1) (S-4 b c a c s2) (S-4 b c a c s3) (S-4 b c b a s1) (S-4 b c b a s2) (S-4 b c b a s3) (S-4 b c b c s1) (S-4 b c b c s2) (S-4 b c b c s3) (S-4 c a b a s1) (S-4 c a b a s2) (S-4 c a b a s3) (S-4 c a b c s1) (S-4 c a b c s2) (S-4 c a b c s3) (S-4 c a c a s1) (S-4 c a c a s2) (S-4 c a c a s3) (S-4 c a c b s1) (S-4 c a c b s2) (S-4 c a c b s3) (S-4 c b a b s1) (S-4 c b a b s2) (S-4 c b a b s3) (S-4 c b a c s1) (S-4 c b a c s2) (S-4 c b a c s3) (S-4 c b c a s1) (S-4 c b c a s2) (S-4 c b c a s3) (S-4 c b c b s1) (S-4 c b c b s2) (S-4 c b c b s3)
	))
)

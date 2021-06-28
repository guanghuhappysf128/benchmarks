(define (problem problem02_5agent_True)
	(:domain gossip)
; there is no comments allows in objects
	(:objects
		p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 - query
	)

	(:init
	; {"agent_info":{"id":"1","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"2","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"3","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"4","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"5","name":"alice","location":"0,0"}}
	; {"object_info":{"id":"k1s1","value":"1"}}
	; {"object_info":{"id":"k2s2","value":"1"}}
	; {"object_info":{"id":"k3s3","value":"1"}}
	; {"object_info":{"id":"k4s4","value":"1"}}
	; {"object_info":{"id":"k5s5","value":"1"}}

		(= (calling_a_b) 0) 
		(= (calling_a_c) 0) 
		(= (calling_a_d) 0) 
		(= (calling_a_e) 0) 
		(= (calling_b_c) 0) 
		(= (calling_b_d) 0) 
		(= (calling_b_e) 0) 
		(= (calling_c_d) 0) 
		(= (calling_c_e) 0) 
		(= (calling_d_e) 0) 
	)

	(:goal
		(and
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p1) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p2) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p3) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p4) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p5) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p6) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p7) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p8) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p9) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p10) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p11) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p12) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p13) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p14) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p15) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p16) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p17) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p18) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p19) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p20) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p21) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p22) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p23) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p24) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p25) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p26) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p27) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p28) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p29) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p30) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p31) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p32) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p33) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p34) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p35) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p36) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p37) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p38) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p39) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p40) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p41) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p42) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p43) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p44) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p45) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p46) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p47) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p48) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p49) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p50) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p51) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p52) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p53) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p54) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p55) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p56) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p57) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p58) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p59) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p60) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p61) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p62) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p63) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p64) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p65) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p66) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p67) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p68) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p69) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p70) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p71) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p72) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p73) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p74) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p75) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p76) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p77) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p78) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p79) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p80) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p81) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p82) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p83) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p84) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p85) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p86) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p87) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p88) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p89) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p90) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p91) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p92) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p93) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p94) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p95) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p96) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p97) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p98) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p99) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p100) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p101) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p102) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p103) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p104) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p105) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p106) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p107) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p108) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p109) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p110) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p111) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p112) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p113) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p114) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p115) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p116) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p117) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p118) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p119) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p120) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p121) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p122) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p123) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p124) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_a_e) (calling_b_c) (calling_b_d) (calling_b_e) (calling_c_d) (calling_c_e) (calling_d_e) p125) 1)
			;{"query_info":{"id":"p1","query":"ds 1 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p2","query":"ds 1 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p3","query":"ds 1 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p4","query":"ds 1 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p5","query":"ds 1 ds 1 s5:value:1"}}
			;{"query_info":{"id":"p6","query":"ds 1 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p7","query":"ds 1 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p8","query":"ds 1 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p9","query":"ds 1 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p10","query":"ds 1 ds 2 s5:value:1"}}
			;{"query_info":{"id":"p11","query":"ds 1 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p12","query":"ds 1 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p13","query":"ds 1 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p14","query":"ds 1 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p15","query":"ds 1 ds 3 s5:value:1"}}
			;{"query_info":{"id":"p16","query":"ds 1 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p17","query":"ds 1 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p18","query":"ds 1 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p19","query":"ds 1 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p20","query":"ds 1 ds 4 s5:value:1"}}
			;{"query_info":{"id":"p21","query":"ds 1 ds 5 s1:value:1"}}
			;{"query_info":{"id":"p22","query":"ds 1 ds 5 s2:value:1"}}
			;{"query_info":{"id":"p23","query":"ds 1 ds 5 s3:value:1"}}
			;{"query_info":{"id":"p24","query":"ds 1 ds 5 s4:value:1"}}
			;{"query_info":{"id":"p25","query":"ds 1 ds 5 s5:value:1"}}
			;{"query_info":{"id":"p26","query":"ds 2 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p27","query":"ds 2 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p28","query":"ds 2 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p29","query":"ds 2 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p30","query":"ds 2 ds 1 s5:value:1"}}
			;{"query_info":{"id":"p31","query":"ds 2 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p32","query":"ds 2 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p33","query":"ds 2 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p34","query":"ds 2 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p35","query":"ds 2 ds 2 s5:value:1"}}
			;{"query_info":{"id":"p36","query":"ds 2 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p37","query":"ds 2 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p38","query":"ds 2 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p39","query":"ds 2 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p40","query":"ds 2 ds 3 s5:value:1"}}
			;{"query_info":{"id":"p41","query":"ds 2 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p42","query":"ds 2 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p43","query":"ds 2 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p44","query":"ds 2 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p45","query":"ds 2 ds 4 s5:value:1"}}
			;{"query_info":{"id":"p46","query":"ds 2 ds 5 s1:value:1"}}
			;{"query_info":{"id":"p47","query":"ds 2 ds 5 s2:value:1"}}
			;{"query_info":{"id":"p48","query":"ds 2 ds 5 s3:value:1"}}
			;{"query_info":{"id":"p49","query":"ds 2 ds 5 s4:value:1"}}
			;{"query_info":{"id":"p50","query":"ds 2 ds 5 s5:value:1"}}
			;{"query_info":{"id":"p51","query":"ds 3 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p52","query":"ds 3 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p53","query":"ds 3 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p54","query":"ds 3 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p55","query":"ds 3 ds 1 s5:value:1"}}
			;{"query_info":{"id":"p56","query":"ds 3 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p57","query":"ds 3 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p58","query":"ds 3 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p59","query":"ds 3 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p60","query":"ds 3 ds 2 s5:value:1"}}
			;{"query_info":{"id":"p61","query":"ds 3 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p62","query":"ds 3 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p63","query":"ds 3 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p64","query":"ds 3 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p65","query":"ds 3 ds 3 s5:value:1"}}
			;{"query_info":{"id":"p66","query":"ds 3 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p67","query":"ds 3 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p68","query":"ds 3 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p69","query":"ds 3 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p70","query":"ds 3 ds 4 s5:value:1"}}
			;{"query_info":{"id":"p71","query":"ds 3 ds 5 s1:value:1"}}
			;{"query_info":{"id":"p72","query":"ds 3 ds 5 s2:value:1"}}
			;{"query_info":{"id":"p73","query":"ds 3 ds 5 s3:value:1"}}
			;{"query_info":{"id":"p74","query":"ds 3 ds 5 s4:value:1"}}
			;{"query_info":{"id":"p75","query":"ds 3 ds 5 s5:value:1"}}
			;{"query_info":{"id":"p76","query":"ds 4 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p77","query":"ds 4 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p78","query":"ds 4 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p79","query":"ds 4 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p80","query":"ds 4 ds 1 s5:value:1"}}
			;{"query_info":{"id":"p81","query":"ds 4 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p82","query":"ds 4 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p83","query":"ds 4 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p84","query":"ds 4 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p85","query":"ds 4 ds 2 s5:value:1"}}
			;{"query_info":{"id":"p86","query":"ds 4 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p87","query":"ds 4 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p88","query":"ds 4 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p89","query":"ds 4 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p90","query":"ds 4 ds 3 s5:value:1"}}
			;{"query_info":{"id":"p91","query":"ds 4 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p92","query":"ds 4 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p93","query":"ds 4 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p94","query":"ds 4 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p95","query":"ds 4 ds 4 s5:value:1"}}
			;{"query_info":{"id":"p96","query":"ds 4 ds 5 s1:value:1"}}
			;{"query_info":{"id":"p97","query":"ds 4 ds 5 s2:value:1"}}
			;{"query_info":{"id":"p98","query":"ds 4 ds 5 s3:value:1"}}
			;{"query_info":{"id":"p99","query":"ds 4 ds 5 s4:value:1"}}
			;{"query_info":{"id":"p100","query":"ds 4 ds 5 s5:value:1"}}
			;{"query_info":{"id":"p101","query":"ds 5 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p102","query":"ds 5 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p103","query":"ds 5 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p104","query":"ds 5 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p105","query":"ds 5 ds 1 s5:value:1"}}
			;{"query_info":{"id":"p106","query":"ds 5 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p107","query":"ds 5 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p108","query":"ds 5 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p109","query":"ds 5 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p110","query":"ds 5 ds 2 s5:value:1"}}
			;{"query_info":{"id":"p111","query":"ds 5 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p112","query":"ds 5 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p113","query":"ds 5 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p114","query":"ds 5 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p115","query":"ds 5 ds 3 s5:value:1"}}
			;{"query_info":{"id":"p116","query":"ds 5 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p117","query":"ds 5 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p118","query":"ds 5 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p119","query":"ds 5 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p120","query":"ds 5 ds 4 s5:value:1"}}
			;{"query_info":{"id":"p121","query":"ds 5 ds 5 s1:value:1"}}
			;{"query_info":{"id":"p122","query":"ds 5 ds 5 s2:value:1"}}
			;{"query_info":{"id":"p123","query":"ds 5 ds 5 s3:value:1"}}
			;{"query_info":{"id":"p124","query":"ds 5 ds 5 s4:value:1"}}
			;{"query_info":{"id":"p125","query":"ds 5 ds 5 s5:value:1"}}
		)
	)

	(:bounds
		(action_sequence - int[0..256])
		(boolean - int[0..1])
	)
)



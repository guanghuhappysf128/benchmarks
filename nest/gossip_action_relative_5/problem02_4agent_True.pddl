(define (problem problem02_4agent_True)
	(:domain gossip)
; there is no comments allows in objects
	(:objects
		p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 - query
	)

	(:init
	; {"agent_info":{"id":"1","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"2","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"3","name":"alice","location":"0,0"}}
	; {"agent_info":{"id":"4","name":"alice","location":"0,0"}}
	; {"object_info":{"id":"k1s1","value":"1"}}
	; {"object_info":{"id":"k2s2","value":"1"}}
	; {"object_info":{"id":"k3s3","value":"1"}}
	; {"object_info":{"id":"k4s4","value":"1"}}

		(= (calling_a_b) 0) 
		(= (calling_a_c) 0) 
		(= (calling_a_d) 0) 
		(= (calling_b_c) 0) 
		(= (calling_b_d) 0) 
		(= (calling_c_d) 0) 
	)

	(:goal
		(and
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p1) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p2) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p3) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p4) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p5) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p6) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p7) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p8) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p9) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p10) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p11) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p12) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p13) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p14) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p15) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p16) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p17) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p18) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p19) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p20) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p21) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p22) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p23) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p24) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p25) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p26) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p27) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p28) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p29) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p30) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p31) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p32) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p33) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p34) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p35) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p36) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p37) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p38) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p39) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p40) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p41) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p42) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p43) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p44) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p45) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p46) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p47) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p48) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p49) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p50) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p51) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p52) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p53) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p54) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p55) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p56) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p57) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p58) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p59) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p60) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p61) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p62) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p63) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p64) 1)
			;{"query_info":{"id":"p1","query":"ds 1 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p2","query":"ds 1 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p3","query":"ds 1 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p4","query":"ds 1 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p5","query":"ds 1 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p6","query":"ds 1 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p7","query":"ds 1 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p8","query":"ds 1 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p9","query":"ds 1 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p10","query":"ds 1 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p11","query":"ds 1 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p12","query":"ds 1 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p13","query":"ds 1 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p14","query":"ds 1 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p15","query":"ds 1 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p16","query":"ds 1 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p17","query":"ds 2 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p18","query":"ds 2 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p19","query":"ds 2 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p20","query":"ds 2 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p21","query":"ds 2 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p22","query":"ds 2 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p23","query":"ds 2 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p24","query":"ds 2 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p25","query":"ds 2 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p26","query":"ds 2 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p27","query":"ds 2 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p28","query":"ds 2 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p29","query":"ds 2 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p30","query":"ds 2 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p31","query":"ds 2 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p32","query":"ds 2 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p33","query":"ds 3 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p34","query":"ds 3 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p35","query":"ds 3 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p36","query":"ds 3 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p37","query":"ds 3 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p38","query":"ds 3 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p39","query":"ds 3 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p40","query":"ds 3 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p41","query":"ds 3 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p42","query":"ds 3 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p43","query":"ds 3 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p44","query":"ds 3 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p45","query":"ds 3 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p46","query":"ds 3 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p47","query":"ds 3 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p48","query":"ds 3 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p49","query":"ds 4 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p50","query":"ds 4 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p51","query":"ds 4 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p52","query":"ds 4 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p53","query":"ds 4 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p54","query":"ds 4 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p55","query":"ds 4 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p56","query":"ds 4 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p57","query":"ds 4 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p58","query":"ds 4 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p59","query":"ds 4 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p60","query":"ds 4 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p61","query":"ds 4 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p62","query":"ds 4 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p63","query":"ds 4 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p64","query":"ds 4 ds 4 s4:value:1"}}
		)
	)

	(:bounds
		(action_sequence - int[0..256])
		(boolean - int[0..1])
	)
)



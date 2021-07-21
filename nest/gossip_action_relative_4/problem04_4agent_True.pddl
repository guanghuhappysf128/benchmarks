(define (problem problem04_4agent_True)
	(:domain gossip)
; there is no comments allows in objects
	(:objects
		p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 - query
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
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p65) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p66) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p67) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p68) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p69) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p70) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p71) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p72) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p73) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p74) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p75) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p76) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p77) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p78) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p79) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p80) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p81) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p82) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p83) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p84) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p85) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p86) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p87) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p88) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p89) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p90) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p91) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p92) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p93) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p94) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p95) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p96) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p97) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p98) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p99) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p100) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p101) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p102) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p103) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p104) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p105) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p106) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p107) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p108) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p109) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p110) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p111) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p112) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p113) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p114) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p115) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p116) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p117) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p118) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p119) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p120) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p121) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p122) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p123) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p124) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p125) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p126) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p127) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p128) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p129) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p130) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p131) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p132) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p133) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p134) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p135) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p136) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p137) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p138) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p139) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p140) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p141) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p142) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p143) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p144) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p145) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p146) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p147) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p148) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p149) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p150) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p151) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p152) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p153) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p154) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p155) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p156) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p157) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p158) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p159) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p160) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p161) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p162) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p163) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p164) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p165) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p166) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p167) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p168) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p169) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p170) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p171) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p172) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p173) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p174) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p175) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p176) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p177) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p178) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p179) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p180) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p181) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p182) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p183) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p184) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p185) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p186) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p187) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p188) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p189) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p190) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p191) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p192) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p193) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p194) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p195) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p196) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p197) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p198) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p199) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p200) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p201) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p202) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p203) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p204) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p205) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p206) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p207) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p208) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p209) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p210) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p211) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p212) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p213) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p214) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p215) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p216) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p217) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p218) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p219) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p220) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p221) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p222) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p223) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p224) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p225) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p226) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p227) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p228) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p229) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p230) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p231) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p232) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p233) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p234) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p235) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p236) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p237) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p238) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p239) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p240) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p241) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p242) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p243) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p244) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p245) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p246) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p247) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p248) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p249) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p250) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p251) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p252) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p253) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p254) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p255) 1)
			(= (@check (calling_a_b) (calling_a_c) (calling_a_d) (calling_b_c) (calling_b_d) (calling_c_d) p256) 1)
			;{"query_info":{"id":"p1","query":"ds 1 ds 1 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p2","query":"ds 1 ds 1 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p3","query":"ds 1 ds 1 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p4","query":"ds 1 ds 1 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p5","query":"ds 1 ds 1 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p6","query":"ds 1 ds 1 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p7","query":"ds 1 ds 1 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p8","query":"ds 1 ds 1 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p9","query":"ds 1 ds 1 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p10","query":"ds 1 ds 1 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p11","query":"ds 1 ds 1 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p12","query":"ds 1 ds 1 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p13","query":"ds 1 ds 1 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p14","query":"ds 1 ds 1 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p15","query":"ds 1 ds 1 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p16","query":"ds 1 ds 1 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p17","query":"ds 1 ds 2 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p18","query":"ds 1 ds 2 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p19","query":"ds 1 ds 2 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p20","query":"ds 1 ds 2 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p21","query":"ds 1 ds 2 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p22","query":"ds 1 ds 2 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p23","query":"ds 1 ds 2 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p24","query":"ds 1 ds 2 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p25","query":"ds 1 ds 2 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p26","query":"ds 1 ds 2 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p27","query":"ds 1 ds 2 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p28","query":"ds 1 ds 2 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p29","query":"ds 1 ds 2 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p30","query":"ds 1 ds 2 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p31","query":"ds 1 ds 2 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p32","query":"ds 1 ds 2 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p33","query":"ds 1 ds 3 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p34","query":"ds 1 ds 3 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p35","query":"ds 1 ds 3 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p36","query":"ds 1 ds 3 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p37","query":"ds 1 ds 3 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p38","query":"ds 1 ds 3 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p39","query":"ds 1 ds 3 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p40","query":"ds 1 ds 3 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p41","query":"ds 1 ds 3 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p42","query":"ds 1 ds 3 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p43","query":"ds 1 ds 3 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p44","query":"ds 1 ds 3 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p45","query":"ds 1 ds 3 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p46","query":"ds 1 ds 3 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p47","query":"ds 1 ds 3 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p48","query":"ds 1 ds 3 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p49","query":"ds 1 ds 4 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p50","query":"ds 1 ds 4 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p51","query":"ds 1 ds 4 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p52","query":"ds 1 ds 4 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p53","query":"ds 1 ds 4 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p54","query":"ds 1 ds 4 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p55","query":"ds 1 ds 4 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p56","query":"ds 1 ds 4 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p57","query":"ds 1 ds 4 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p58","query":"ds 1 ds 4 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p59","query":"ds 1 ds 4 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p60","query":"ds 1 ds 4 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p61","query":"ds 1 ds 4 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p62","query":"ds 1 ds 4 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p63","query":"ds 1 ds 4 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p64","query":"ds 1 ds 4 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p65","query":"ds 2 ds 1 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p66","query":"ds 2 ds 1 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p67","query":"ds 2 ds 1 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p68","query":"ds 2 ds 1 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p69","query":"ds 2 ds 1 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p70","query":"ds 2 ds 1 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p71","query":"ds 2 ds 1 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p72","query":"ds 2 ds 1 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p73","query":"ds 2 ds 1 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p74","query":"ds 2 ds 1 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p75","query":"ds 2 ds 1 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p76","query":"ds 2 ds 1 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p77","query":"ds 2 ds 1 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p78","query":"ds 2 ds 1 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p79","query":"ds 2 ds 1 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p80","query":"ds 2 ds 1 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p81","query":"ds 2 ds 2 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p82","query":"ds 2 ds 2 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p83","query":"ds 2 ds 2 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p84","query":"ds 2 ds 2 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p85","query":"ds 2 ds 2 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p86","query":"ds 2 ds 2 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p87","query":"ds 2 ds 2 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p88","query":"ds 2 ds 2 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p89","query":"ds 2 ds 2 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p90","query":"ds 2 ds 2 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p91","query":"ds 2 ds 2 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p92","query":"ds 2 ds 2 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p93","query":"ds 2 ds 2 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p94","query":"ds 2 ds 2 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p95","query":"ds 2 ds 2 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p96","query":"ds 2 ds 2 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p97","query":"ds 2 ds 3 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p98","query":"ds 2 ds 3 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p99","query":"ds 2 ds 3 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p100","query":"ds 2 ds 3 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p101","query":"ds 2 ds 3 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p102","query":"ds 2 ds 3 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p103","query":"ds 2 ds 3 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p104","query":"ds 2 ds 3 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p105","query":"ds 2 ds 3 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p106","query":"ds 2 ds 3 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p107","query":"ds 2 ds 3 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p108","query":"ds 2 ds 3 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p109","query":"ds 2 ds 3 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p110","query":"ds 2 ds 3 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p111","query":"ds 2 ds 3 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p112","query":"ds 2 ds 3 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p113","query":"ds 2 ds 4 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p114","query":"ds 2 ds 4 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p115","query":"ds 2 ds 4 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p116","query":"ds 2 ds 4 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p117","query":"ds 2 ds 4 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p118","query":"ds 2 ds 4 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p119","query":"ds 2 ds 4 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p120","query":"ds 2 ds 4 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p121","query":"ds 2 ds 4 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p122","query":"ds 2 ds 4 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p123","query":"ds 2 ds 4 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p124","query":"ds 2 ds 4 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p125","query":"ds 2 ds 4 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p126","query":"ds 2 ds 4 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p127","query":"ds 2 ds 4 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p128","query":"ds 2 ds 4 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p129","query":"ds 3 ds 1 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p130","query":"ds 3 ds 1 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p131","query":"ds 3 ds 1 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p132","query":"ds 3 ds 1 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p133","query":"ds 3 ds 1 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p134","query":"ds 3 ds 1 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p135","query":"ds 3 ds 1 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p136","query":"ds 3 ds 1 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p137","query":"ds 3 ds 1 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p138","query":"ds 3 ds 1 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p139","query":"ds 3 ds 1 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p140","query":"ds 3 ds 1 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p141","query":"ds 3 ds 1 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p142","query":"ds 3 ds 1 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p143","query":"ds 3 ds 1 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p144","query":"ds 3 ds 1 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p145","query":"ds 3 ds 2 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p146","query":"ds 3 ds 2 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p147","query":"ds 3 ds 2 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p148","query":"ds 3 ds 2 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p149","query":"ds 3 ds 2 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p150","query":"ds 3 ds 2 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p151","query":"ds 3 ds 2 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p152","query":"ds 3 ds 2 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p153","query":"ds 3 ds 2 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p154","query":"ds 3 ds 2 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p155","query":"ds 3 ds 2 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p156","query":"ds 3 ds 2 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p157","query":"ds 3 ds 2 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p158","query":"ds 3 ds 2 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p159","query":"ds 3 ds 2 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p160","query":"ds 3 ds 2 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p161","query":"ds 3 ds 3 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p162","query":"ds 3 ds 3 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p163","query":"ds 3 ds 3 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p164","query":"ds 3 ds 3 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p165","query":"ds 3 ds 3 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p166","query":"ds 3 ds 3 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p167","query":"ds 3 ds 3 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p168","query":"ds 3 ds 3 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p169","query":"ds 3 ds 3 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p170","query":"ds 3 ds 3 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p171","query":"ds 3 ds 3 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p172","query":"ds 3 ds 3 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p173","query":"ds 3 ds 3 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p174","query":"ds 3 ds 3 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p175","query":"ds 3 ds 3 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p176","query":"ds 3 ds 3 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p177","query":"ds 3 ds 4 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p178","query":"ds 3 ds 4 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p179","query":"ds 3 ds 4 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p180","query":"ds 3 ds 4 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p181","query":"ds 3 ds 4 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p182","query":"ds 3 ds 4 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p183","query":"ds 3 ds 4 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p184","query":"ds 3 ds 4 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p185","query":"ds 3 ds 4 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p186","query":"ds 3 ds 4 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p187","query":"ds 3 ds 4 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p188","query":"ds 3 ds 4 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p189","query":"ds 3 ds 4 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p190","query":"ds 3 ds 4 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p191","query":"ds 3 ds 4 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p192","query":"ds 3 ds 4 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p193","query":"ds 4 ds 1 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p194","query":"ds 4 ds 1 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p195","query":"ds 4 ds 1 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p196","query":"ds 4 ds 1 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p197","query":"ds 4 ds 1 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p198","query":"ds 4 ds 1 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p199","query":"ds 4 ds 1 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p200","query":"ds 4 ds 1 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p201","query":"ds 4 ds 1 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p202","query":"ds 4 ds 1 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p203","query":"ds 4 ds 1 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p204","query":"ds 4 ds 1 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p205","query":"ds 4 ds 1 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p206","query":"ds 4 ds 1 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p207","query":"ds 4 ds 1 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p208","query":"ds 4 ds 1 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p209","query":"ds 4 ds 2 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p210","query":"ds 4 ds 2 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p211","query":"ds 4 ds 2 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p212","query":"ds 4 ds 2 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p213","query":"ds 4 ds 2 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p214","query":"ds 4 ds 2 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p215","query":"ds 4 ds 2 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p216","query":"ds 4 ds 2 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p217","query":"ds 4 ds 2 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p218","query":"ds 4 ds 2 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p219","query":"ds 4 ds 2 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p220","query":"ds 4 ds 2 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p221","query":"ds 4 ds 2 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p222","query":"ds 4 ds 2 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p223","query":"ds 4 ds 2 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p224","query":"ds 4 ds 2 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p225","query":"ds 4 ds 3 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p226","query":"ds 4 ds 3 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p227","query":"ds 4 ds 3 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p228","query":"ds 4 ds 3 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p229","query":"ds 4 ds 3 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p230","query":"ds 4 ds 3 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p231","query":"ds 4 ds 3 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p232","query":"ds 4 ds 3 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p233","query":"ds 4 ds 3 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p234","query":"ds 4 ds 3 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p235","query":"ds 4 ds 3 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p236","query":"ds 4 ds 3 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p237","query":"ds 4 ds 3 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p238","query":"ds 4 ds 3 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p239","query":"ds 4 ds 3 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p240","query":"ds 4 ds 3 ds 4 s4:value:1"}}
			;{"query_info":{"id":"p241","query":"ds 4 ds 4 ds 1 s1:value:1"}}
			;{"query_info":{"id":"p242","query":"ds 4 ds 4 ds 1 s2:value:1"}}
			;{"query_info":{"id":"p243","query":"ds 4 ds 4 ds 1 s3:value:1"}}
			;{"query_info":{"id":"p244","query":"ds 4 ds 4 ds 1 s4:value:1"}}
			;{"query_info":{"id":"p245","query":"ds 4 ds 4 ds 2 s1:value:1"}}
			;{"query_info":{"id":"p246","query":"ds 4 ds 4 ds 2 s2:value:1"}}
			;{"query_info":{"id":"p247","query":"ds 4 ds 4 ds 2 s3:value:1"}}
			;{"query_info":{"id":"p248","query":"ds 4 ds 4 ds 2 s4:value:1"}}
			;{"query_info":{"id":"p249","query":"ds 4 ds 4 ds 3 s1:value:1"}}
			;{"query_info":{"id":"p250","query":"ds 4 ds 4 ds 3 s2:value:1"}}
			;{"query_info":{"id":"p251","query":"ds 4 ds 4 ds 3 s3:value:1"}}
			;{"query_info":{"id":"p252","query":"ds 4 ds 4 ds 3 s4:value:1"}}
			;{"query_info":{"id":"p253","query":"ds 4 ds 4 ds 4 s1:value:1"}}
			;{"query_info":{"id":"p254","query":"ds 4 ds 4 ds 4 s2:value:1"}}
			;{"query_info":{"id":"p255","query":"ds 4 ds 4 ds 4 s3:value:1"}}
			;{"query_info":{"id":"p256","query":"ds 4 ds 4 ds 4 s4:value:1"}}
		)
	)

	(:bounds
		(action_sequence - int[0..1048576])
		(boolean - int[0..1])
	)
)



;;does not working because fractional number does not support
(define (problem testing)
    (:domain s_media)
    ; there is no comments allows in objects
    (:objects

        p1 - pos
        ;n1 n2 - neg
    )
            

    (:init

        ; initial states and only agent a is movable

        ; {"agent_info":{"id":"1","friendwith1":"1","friendwith2":"1","friendwith3":"1","friendwith4":"1"}}
        ; {"agent_info":{"id":"2","friendwith2":"1","friendwith1":"1","friendwith5":"1"}}
        ; {"agent_info":{"id":"3","friendwith3":"1","friendwith1":"1","friendwith4":"1"}}
        ; {"agent_info":{"id":"4","friendwith4":"1","friendwith1":"1","friendwith3":"1","friendwith5":"1"}}
        ; {"agent_info":{"id":"5","friendwith5":"1","friendwith2":"1","friendwith4":"1"}}
        ; {"object_info":{"id":"obj_1","belongsto":"0","value":"obj111"}}
        ; {"object_info":{"id":"obj_2","belongsto":"0","value":"obj222"}}
        ; {"object_info":{"id":"obj_3","belongsto":"0","value":"obj333"}}

        (= (fact p1) 0)
        ;(= (fact p2) 0)
        ;(= (fact n1) 0)
        ;(= (fact n2) 0)
        ; (= (fact n5) 0)
        (= (posted 1) 0)
        (= (posted 2) 0)
        (= (posted 3) 0)

        ;(start)

        (= (posted_encoding 0 0 0) 0)
        (= (posted_encoding 0 0 1) 1)
        (= (posted_encoding 0 0 2) 2)
        (= (posted_encoding 0 0 3) 3)
        (= (posted_encoding 0 0 4) 4)
        (= (posted_encoding 0 0 5) 5)
        (= (posted_encoding 0 1 0) 6)
        (= (posted_encoding 0 1 1) 7)
        (= (posted_encoding 0 1 2) 8)
        (= (posted_encoding 0 1 3) 9)
        (= (posted_encoding 0 1 4) 10)
        (= (posted_encoding 0 1 5) 11)
        (= (posted_encoding 0 2 0) 12)
        (= (posted_encoding 0 2 1) 13)
        (= (posted_encoding 0 2 2) 14)
        (= (posted_encoding 0 2 3) 15)
        (= (posted_encoding 0 2 4) 16)
        (= (posted_encoding 0 2 5) 17)
        (= (posted_encoding 0 3 0) 18)
        (= (posted_encoding 0 3 1) 19)
        (= (posted_encoding 0 3 2) 20)
        (= (posted_encoding 0 3 3) 21)
        (= (posted_encoding 0 3 4) 22)
        (= (posted_encoding 0 3 5) 23)
        (= (posted_encoding 0 4 0) 24)
        (= (posted_encoding 0 4 1) 25)
        (= (posted_encoding 0 4 2) 26)
        (= (posted_encoding 0 4 3) 27)
        (= (posted_encoding 0 4 4) 28)
        (= (posted_encoding 0 4 5) 29)
        (= (posted_encoding 0 5 0) 30)
        (= (posted_encoding 0 5 1) 31)
        (= (posted_encoding 0 5 2) 32)
        (= (posted_encoding 0 5 3) 33)
        (= (posted_encoding 0 5 4) 34)
        (= (posted_encoding 0 5 5) 35)
        (= (posted_encoding 1 0 0) 36)
        (= (posted_encoding 1 0 1) 37)
        (= (posted_encoding 1 0 2) 38)
        (= (posted_encoding 1 0 3) 39)
        (= (posted_encoding 1 0 4) 40)
        (= (posted_encoding 1 0 5) 41)
        (= (posted_encoding 1 1 0) 42)
        (= (posted_encoding 1 1 1) 43)
        (= (posted_encoding 1 1 2) 44)
        (= (posted_encoding 1 1 3) 45)
        (= (posted_encoding 1 1 4) 46)
        (= (posted_encoding 1 1 5) 47)
        (= (posted_encoding 1 2 0) 48)
        (= (posted_encoding 1 2 1) 49)
        (= (posted_encoding 1 2 2) 50)
        (= (posted_encoding 1 2 3) 51)
        (= (posted_encoding 1 2 4) 52)
        (= (posted_encoding 1 2 5) 53)
        (= (posted_encoding 1 3 0) 54)
        (= (posted_encoding 1 3 1) 55)
        (= (posted_encoding 1 3 2) 56)
        (= (posted_encoding 1 3 3) 57)
        (= (posted_encoding 1 3 4) 58)
        (= (posted_encoding 1 3 5) 59)
        (= (posted_encoding 1 4 0) 60)
        (= (posted_encoding 1 4 1) 61)
        (= (posted_encoding 1 4 2) 62)
        (= (posted_encoding 1 4 3) 63)
        (= (posted_encoding 1 4 4) 64)
        (= (posted_encoding 1 4 5) 65)
        (= (posted_encoding 1 5 0) 66)
        (= (posted_encoding 1 5 1) 67)
        (= (posted_encoding 1 5 2) 68)
        (= (posted_encoding 1 5 3) 69)
        (= (posted_encoding 1 5 4) 70)
        (= (posted_encoding 1 5 5) 71)
        (= (posted_encoding 2 0 0) 72)
        (= (posted_encoding 2 0 1) 73)
        (= (posted_encoding 2 0 2) 74)
        (= (posted_encoding 2 0 3) 75)
        (= (posted_encoding 2 0 4) 76)
        (= (posted_encoding 2 0 5) 77)
        (= (posted_encoding 2 1 0) 78)
        (= (posted_encoding 2 1 1) 79)
        (= (posted_encoding 2 1 2) 80)
        (= (posted_encoding 2 1 3) 81)
        (= (posted_encoding 2 1 4) 82)
        (= (posted_encoding 2 1 5) 83)
        (= (posted_encoding 2 2 0) 84)
        (= (posted_encoding 2 2 1) 85)
        (= (posted_encoding 2 2 2) 86)
        (= (posted_encoding 2 2 3) 87)
        (= (posted_encoding 2 2 4) 88)
        (= (posted_encoding 2 2 5) 89)
        (= (posted_encoding 2 3 0) 90)
        (= (posted_encoding 2 3 1) 91)
        (= (posted_encoding 2 3 2) 92)
        (= (posted_encoding 2 3 3) 93)
        (= (posted_encoding 2 3 4) 94)
        (= (posted_encoding 2 3 5) 95)
        (= (posted_encoding 2 4 0) 96)
        (= (posted_encoding 2 4 1) 97)
        (= (posted_encoding 2 4 2) 98)
        (= (posted_encoding 2 4 3) 99)
        (= (posted_encoding 2 4 4) 100)
        (= (posted_encoding 2 4 5) 101)
        (= (posted_encoding 2 5 0) 102)
        (= (posted_encoding 2 5 1) 103)
        (= (posted_encoding 2 5 2) 104)
        (= (posted_encoding 2 5 3) 105)
        (= (posted_encoding 2 5 4) 106)
        (= (posted_encoding 2 5 5) 107)
        (= (posted_encoding 3 0 0) 108)
        (= (posted_encoding 3 0 1) 109)
        (= (posted_encoding 3 0 2) 110)
        (= (posted_encoding 3 0 3) 111)
        (= (posted_encoding 3 0 4) 112)
        (= (posted_encoding 3 0 5) 113)
        (= (posted_encoding 3 1 0) 114)
        (= (posted_encoding 3 1 1) 115)
        (= (posted_encoding 3 1 2) 116)
        (= (posted_encoding 3 1 3) 117)
        (= (posted_encoding 3 1 4) 118)
        (= (posted_encoding 3 1 5) 119)
        (= (posted_encoding 3 2 0) 120)
        (= (posted_encoding 3 2 1) 121)
        (= (posted_encoding 3 2 2) 122)
        (= (posted_encoding 3 2 3) 123)
        (= (posted_encoding 3 2 4) 124)
        (= (posted_encoding 3 2 5) 125)
        (= (posted_encoding 3 3 0) 126)
        (= (posted_encoding 3 3 1) 127)
        (= (posted_encoding 3 3 2) 128)
        (= (posted_encoding 3 3 3) 129)
        (= (posted_encoding 3 3 4) 130)
        (= (posted_encoding 3 3 5) 131)
        (= (posted_encoding 3 4 0) 132)
        (= (posted_encoding 3 4 1) 133)
        (= (posted_encoding 3 4 2) 134)
        (= (posted_encoding 3 4 3) 135)
        (= (posted_encoding 3 4 4) 136)
        (= (posted_encoding 3 4 5) 137)
        (= (posted_encoding 3 5 0) 138)
        (= (posted_encoding 3 5 1) 139)
        (= (posted_encoding 3 5 2) 140)
        (= (posted_encoding 3 5 3) 141)
        (= (posted_encoding 3 5 4) 142)
        (= (posted_encoding 3 5 5) 143)
        (= (posted_encoding 4 0 0) 144)
        (= (posted_encoding 4 0 1) 145)
        (= (posted_encoding 4 0 2) 146)
        (= (posted_encoding 4 0 3) 147)
        (= (posted_encoding 4 0 4) 148)
        (= (posted_encoding 4 0 5) 149)
        (= (posted_encoding 4 1 0) 150)
        (= (posted_encoding 4 1 1) 151)
        (= (posted_encoding 4 1 2) 152)
        (= (posted_encoding 4 1 3) 153)
        (= (posted_encoding 4 1 4) 154)
        (= (posted_encoding 4 1 5) 155)
        (= (posted_encoding 4 2 0) 156)
        (= (posted_encoding 4 2 1) 157)
        (= (posted_encoding 4 2 2) 158)
        (= (posted_encoding 4 2 3) 159)
        (= (posted_encoding 4 2 4) 160)
        (= (posted_encoding 4 2 5) 161)
        (= (posted_encoding 4 3 0) 162)
        (= (posted_encoding 4 3 1) 163)
        (= (posted_encoding 4 3 2) 164)
        (= (posted_encoding 4 3 3) 165)
        (= (posted_encoding 4 3 4) 166)
        (= (posted_encoding 4 3 5) 167)
        (= (posted_encoding 4 4 0) 168)
        (= (posted_encoding 4 4 1) 169)
        (= (posted_encoding 4 4 2) 170)
        (= (posted_encoding 4 4 3) 171)
        (= (posted_encoding 4 4 4) 172)
        (= (posted_encoding 4 4 5) 173)
        (= (posted_encoding 4 5 0) 174)
        (= (posted_encoding 4 5 1) 175)
        (= (posted_encoding 4 5 2) 176)
        (= (posted_encoding 4 5 3) 177)
        (= (posted_encoding 4 5 4) 178)
        (= (posted_encoding 4 5 5) 179)
        (= (posted_encoding 5 0 0) 180)
        (= (posted_encoding 5 0 1) 181)
        (= (posted_encoding 5 0 2) 182)
        (= (posted_encoding 5 0 3) 183)
        (= (posted_encoding 5 0 4) 184)
        (= (posted_encoding 5 0 5) 185)
        (= (posted_encoding 5 1 0) 186)
        (= (posted_encoding 5 1 1) 187)
        (= (posted_encoding 5 1 2) 188)
        (= (posted_encoding 5 1 3) 189)
        (= (posted_encoding 5 1 4) 190)
        (= (posted_encoding 5 1 5) 191)
        (= (posted_encoding 5 2 0) 192)
        (= (posted_encoding 5 2 1) 193)
        (= (posted_encoding 5 2 2) 194)
        (= (posted_encoding 5 2 3) 195)
        (= (posted_encoding 5 2 4) 196)
        (= (posted_encoding 5 2 5) 197)
        (= (posted_encoding 5 3 0) 198)
        (= (posted_encoding 5 3 1) 199)
        (= (posted_encoding 5 3 2) 200)
        (= (posted_encoding 5 3 3) 201)
        (= (posted_encoding 5 3 4) 202)
        (= (posted_encoding 5 3 5) 203)
        (= (posted_encoding 5 4 0) 204)
        (= (posted_encoding 5 4 1) 205)
        (= (posted_encoding 5 4 2) 206)
        (= (posted_encoding 5 4 3) 207)
        (= (posted_encoding 5 4 4) 208)
        (= (posted_encoding 5 4 5) 209)
        (= (posted_encoding 5 5 0) 210)
        (= (posted_encoding 5 5 1) 211)
        (= (posted_encoding 5 5 2) 212)
        (= (posted_encoding 5 5 3) 213)
        (= (posted_encoding 5 5 4) 214)
        (= (posted_encoding 5 5 5) 215)





    )

    (:goal
      (and
        ;(goal)
        ; (= (ak 2) 1)
        ; (= (ak 4) 0)
        ; (= (bk 3) 1)
        ; (= (bk 1) 0)
        ; (= (ck 4) 1)
        ; (= (ck 2) 0)
        ; (= (dk 1) 1)
        ; (= (dk 3) 0)

        
        ;(= (posted_encoding (posted 1) (posted 2) (posted 3)) 36)
        ;(= (@check 36 p1) 1)
        ;(= (@check (posted_encoding (posted 1) (posted 2) (posted 3)) p1) 1)

        (= (fact p1) 1)
        ;(= (fact p2) 1)
        ; (= (fact p3) 1)
        ; (= (fact p4) 1)
        ; (= (posted 2) 0)
        ; (= (posted 3) 0)
        ;(facts p1)
        ;(= (fact n1) 0)
        ;(= (fact n2) 0)
        ; (= (fact n3) 0)
        ; (= (fact n4) 0)
        ;(= (fact n5) 0)


        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"ek 2,3 obj_1:value:obj111|ek 2,3 obj_2:value:obj222|ek 2,3 obj_3:value:obj333"}}
        ;{"id":"p1","query":"es 2,3 obj_1:value:obj111|es 2,3 obj_2:value:obj222|es 2,3 obj_3:value:obj333"}}
        ; {"query_info":{"id":"p2","query":"ds 1 obj_1:value:obj111|ds 1 obj_2:value:obj222|ds 1 obj_3:value:obj333"}}
        ; {"query_info":{"id":"p3","query":"dk 3 obj_1:value:4"}}
        ; {"query_info":{"id":"p4","query":"dk 4 obj_1:value:1"}}

        ; {"query_info":{"id":"n1","query":"ds 3 obj_1:value:obj111|ds 3 obj_2:value:obj222|ds 1 obj_3:value:obj333"}}
        ; {"query_info":{"id":"n2","query":"dk 2 obj_1:value:obj111|ds 3 obj_2:value:obj222|ds 1 obj_3:value:obj333"}}
        ; {"query_info":{"id":"n3","query":"dk 3 obj_1:value:2"}}
        ; {"query_info":{"id":"n4","query":"dk 4 obj_1:value:3"}}
        ; {"query_info":{"id":"n5","query":"dk 2 dk 1 obj_1:value:2"}}

      )
    )

    (:bounds
        (boolean - int[0..1])
        (encoding - int[0..215])
        (part - int[1..3])
        (agent - int[0..5])
    )
    ; agent with value 0 is just for initial state when no secret part has been post
)

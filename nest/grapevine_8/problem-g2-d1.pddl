;;does not working because fractional number does not support
(define (problem testing)
    (:domain grapevine)
    ; there is no comments allows in objects
    (:objects
      p1 p2 p3 p4 - pos
      n1 n2 n3 n4 - neg
    )

            

    (:init

      ; initial states and only agent a is movable

      ; {"agent_info":{"id":"1","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"2","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"3","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"4","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"5","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"6","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"7","location":"0","secret":"yes"}}
      ; {"agent_info":{"id":"8","location":"0","secret":"yes"}}
      ; {"object_info":{"id":"obj_1","location":"0","value":"obj111"}}

      ;(= (fact n1) 0)
      (= (fact p1) 0)
      (= (fact p2) 0)
      (= (fact p3) 0)
      (= (fact p4) 0)
      (= (fact n1) 0)
      (= (fact n2) 0)
      (= (fact n3) 0)
      (= (fact n4) 0)
      ;(= (fact p1) 0)
      ;(= (fact n5) 0)


      (slient)
      (= (num_agent) 8)

      (= (location 1) 0)
      (= (location 2) 0)
      (= (location 3) 0)
      (= (location 4) 0)
      (= (location 5) 0)
      (= (location 6) 0)
      (= (location 7) 0)
      (= (location 8) 0)

      (= (posted_encoding 0 0 0 0) 0)
      (= (posted_encoding 0 0 0 1) 1)
      (= (posted_encoding 0 0 1 0) 2)
      (= (posted_encoding 0 0 1 1) 3)
      (= (posted_encoding 0 1 0 0) 4)
      (= (posted_encoding 0 1 0 1) 5)
      (= (posted_encoding 0 1 1 0) 6)
      (= (posted_encoding 0 1 1 1) 7)
      (= (posted_encoding 1 0 0 0) 8)
      (= (posted_encoding 1 0 0 1) 9)
      (= (posted_encoding 1 0 1 0) 10)
      (= (posted_encoding 1 0 1 1) 11)
      (= (posted_encoding 1 1 0 0) 12)
      (= (posted_encoding 1 1 0 1) 13)
      (= (posted_encoding 1 1 1 0) 14)
      (= (posted_encoding 1 1 1 1) 15)

      (= (posted_encoding2 0 0) 0)
      (= (posted_encoding2 0 1) 1)
      (= (posted_encoding2 0 2) 2)
      (= (posted_encoding2 0 3) 3)
      (= (posted_encoding2 0 4) 4)
      (= (posted_encoding2 0 5) 5)
      (= (posted_encoding2 0 6) 6)
      (= (posted_encoding2 0 7) 7)
      (= (posted_encoding2 0 8) 8)
      (= (posted_encoding2 0 9) 9)
      (= (posted_encoding2 0 10) 10)
      (= (posted_encoding2 0 11) 11)
      (= (posted_encoding2 0 12) 12)
      (= (posted_encoding2 0 13) 13)
      (= (posted_encoding2 0 14) 14)
      (= (posted_encoding2 0 15) 15)
      (= (posted_encoding2 1 0) 16)
      (= (posted_encoding2 1 1) 17)
      (= (posted_encoding2 1 2) 18)
      (= (posted_encoding2 1 3) 19)
      (= (posted_encoding2 1 4) 20)
      (= (posted_encoding2 1 5) 21)
      (= (posted_encoding2 1 6) 22)
      (= (posted_encoding2 1 7) 23)
      (= (posted_encoding2 1 8) 24)
      (= (posted_encoding2 1 9) 25)
      (= (posted_encoding2 1 10) 26)
      (= (posted_encoding2 1 11) 27)
      (= (posted_encoding2 1 12) 28)
      (= (posted_encoding2 1 13) 29)
      (= (posted_encoding2 1 14) 30)
      (= (posted_encoding2 1 15) 31)
      (= (posted_encoding2 2 0) 32)
      (= (posted_encoding2 2 1) 33)
      (= (posted_encoding2 2 2) 34)
      (= (posted_encoding2 2 3) 35)
      (= (posted_encoding2 2 4) 36)
      (= (posted_encoding2 2 5) 37)
      (= (posted_encoding2 2 6) 38)
      (= (posted_encoding2 2 7) 39)
      (= (posted_encoding2 2 8) 40)
      (= (posted_encoding2 2 9) 41)
      (= (posted_encoding2 2 10) 42)
      (= (posted_encoding2 2 11) 43)
      (= (posted_encoding2 2 12) 44)
      (= (posted_encoding2 2 13) 45)
      (= (posted_encoding2 2 14) 46)
      (= (posted_encoding2 2 15) 47)
      (= (posted_encoding2 3 0) 48)
      (= (posted_encoding2 3 1) 49)
      (= (posted_encoding2 3 2) 50)
      (= (posted_encoding2 3 3) 51)
      (= (posted_encoding2 3 4) 52)
      (= (posted_encoding2 3 5) 53)
      (= (posted_encoding2 3 6) 54)
      (= (posted_encoding2 3 7) 55)
      (= (posted_encoding2 3 8) 56)
      (= (posted_encoding2 3 9) 57)
      (= (posted_encoding2 3 10) 58)
      (= (posted_encoding2 3 11) 59)
      (= (posted_encoding2 3 12) 60)
      (= (posted_encoding2 3 13) 61)
      (= (posted_encoding2 3 14) 62)
      (= (posted_encoding2 3 15) 63)
      (= (posted_encoding2 4 0) 64)
      (= (posted_encoding2 4 1) 65)
      (= (posted_encoding2 4 2) 66)
      (= (posted_encoding2 4 3) 67)
      (= (posted_encoding2 4 4) 68)
      (= (posted_encoding2 4 5) 69)
      (= (posted_encoding2 4 6) 70)
      (= (posted_encoding2 4 7) 71)
      (= (posted_encoding2 4 8) 72)
      (= (posted_encoding2 4 9) 73)
      (= (posted_encoding2 4 10) 74)
      (= (posted_encoding2 4 11) 75)
      (= (posted_encoding2 4 12) 76)
      (= (posted_encoding2 4 13) 77)
      (= (posted_encoding2 4 14) 78)
      (= (posted_encoding2 4 15) 79)
      (= (posted_encoding2 5 0) 80)
      (= (posted_encoding2 5 1) 81)
      (= (posted_encoding2 5 2) 82)
      (= (posted_encoding2 5 3) 83)
      (= (posted_encoding2 5 4) 84)
      (= (posted_encoding2 5 5) 85)
      (= (posted_encoding2 5 6) 86)
      (= (posted_encoding2 5 7) 87)
      (= (posted_encoding2 5 8) 88)
      (= (posted_encoding2 5 9) 89)
      (= (posted_encoding2 5 10) 90)
      (= (posted_encoding2 5 11) 91)
      (= (posted_encoding2 5 12) 92)
      (= (posted_encoding2 5 13) 93)
      (= (posted_encoding2 5 14) 94)
      (= (posted_encoding2 5 15) 95)
      (= (posted_encoding2 6 0) 96)
      (= (posted_encoding2 6 1) 97)
      (= (posted_encoding2 6 2) 98)
      (= (posted_encoding2 6 3) 99)
      (= (posted_encoding2 6 4) 100)
      (= (posted_encoding2 6 5) 101)
      (= (posted_encoding2 6 6) 102)
      (= (posted_encoding2 6 7) 103)
      (= (posted_encoding2 6 8) 104)
      (= (posted_encoding2 6 9) 105)
      (= (posted_encoding2 6 10) 106)
      (= (posted_encoding2 6 11) 107)
      (= (posted_encoding2 6 12) 108)
      (= (posted_encoding2 6 13) 109)
      (= (posted_encoding2 6 14) 110)
      (= (posted_encoding2 6 15) 111)
      (= (posted_encoding2 7 0) 112)
      (= (posted_encoding2 7 1) 113)
      (= (posted_encoding2 7 2) 114)
      (= (posted_encoding2 7 3) 115)
      (= (posted_encoding2 7 4) 116)
      (= (posted_encoding2 7 5) 117)
      (= (posted_encoding2 7 6) 118)
      (= (posted_encoding2 7 7) 119)
      (= (posted_encoding2 7 8) 120)
      (= (posted_encoding2 7 9) 121)
      (= (posted_encoding2 7 10) 122)
      (= (posted_encoding2 7 11) 123)
      (= (posted_encoding2 7 12) 124)
      (= (posted_encoding2 7 13) 125)
      (= (posted_encoding2 7 14) 126)
      (= (posted_encoding2 7 15) 127)
      (= (posted_encoding2 8 0) 128)
      (= (posted_encoding2 8 1) 129)
      (= (posted_encoding2 8 2) 130)
      (= (posted_encoding2 8 3) 131)
      (= (posted_encoding2 8 4) 132)
      (= (posted_encoding2 8 5) 133)
      (= (posted_encoding2 8 6) 134)
      (= (posted_encoding2 8 7) 135)
      (= (posted_encoding2 8 8) 136)
      (= (posted_encoding2 8 9) 137)
      (= (posted_encoding2 8 10) 138)
      (= (posted_encoding2 8 11) 139)
      (= (posted_encoding2 8 12) 140)
      (= (posted_encoding2 8 13) 141)
      (= (posted_encoding2 8 14) 142)
      (= (posted_encoding2 8 15) 143)
      (= (posted_encoding2 9 0) 144)
      (= (posted_encoding2 9 1) 145)
      (= (posted_encoding2 9 2) 146)
      (= (posted_encoding2 9 3) 147)
      (= (posted_encoding2 9 4) 148)
      (= (posted_encoding2 9 5) 149)
      (= (posted_encoding2 9 6) 150)
      (= (posted_encoding2 9 7) 151)
      (= (posted_encoding2 9 8) 152)
      (= (posted_encoding2 9 9) 153)
      (= (posted_encoding2 9 10) 154)
      (= (posted_encoding2 9 11) 155)
      (= (posted_encoding2 9 12) 156)
      (= (posted_encoding2 9 13) 157)
      (= (posted_encoding2 9 14) 158)
      (= (posted_encoding2 9 15) 159)
      (= (posted_encoding2 10 0) 160)
      (= (posted_encoding2 10 1) 161)
      (= (posted_encoding2 10 2) 162)
      (= (posted_encoding2 10 3) 163)
      (= (posted_encoding2 10 4) 164)
      (= (posted_encoding2 10 5) 165)
      (= (posted_encoding2 10 6) 166)
      (= (posted_encoding2 10 7) 167)
      (= (posted_encoding2 10 8) 168)
      (= (posted_encoding2 10 9) 169)
      (= (posted_encoding2 10 10) 170)
      (= (posted_encoding2 10 11) 171)
      (= (posted_encoding2 10 12) 172)
      (= (posted_encoding2 10 13) 173)
      (= (posted_encoding2 10 14) 174)
      (= (posted_encoding2 10 15) 175)
      (= (posted_encoding2 11 0) 176)
      (= (posted_encoding2 11 1) 177)
      (= (posted_encoding2 11 2) 178)
      (= (posted_encoding2 11 3) 179)
      (= (posted_encoding2 11 4) 180)
      (= (posted_encoding2 11 5) 181)
      (= (posted_encoding2 11 6) 182)
      (= (posted_encoding2 11 7) 183)
      (= (posted_encoding2 11 8) 184)
      (= (posted_encoding2 11 9) 185)
      (= (posted_encoding2 11 10) 186)
      (= (posted_encoding2 11 11) 187)
      (= (posted_encoding2 11 12) 188)
      (= (posted_encoding2 11 13) 189)
      (= (posted_encoding2 11 14) 190)
      (= (posted_encoding2 11 15) 191)
      (= (posted_encoding2 12 0) 192)
      (= (posted_encoding2 12 1) 193)
      (= (posted_encoding2 12 2) 194)
      (= (posted_encoding2 12 3) 195)
      (= (posted_encoding2 12 4) 196)
      (= (posted_encoding2 12 5) 197)
      (= (posted_encoding2 12 6) 198)
      (= (posted_encoding2 12 7) 199)
      (= (posted_encoding2 12 8) 200)
      (= (posted_encoding2 12 9) 201)
      (= (posted_encoding2 12 10) 202)
      (= (posted_encoding2 12 11) 203)
      (= (posted_encoding2 12 12) 204)
      (= (posted_encoding2 12 13) 205)
      (= (posted_encoding2 12 14) 206)
      (= (posted_encoding2 12 15) 207)
      (= (posted_encoding2 13 0) 208)
      (= (posted_encoding2 13 1) 209)
      (= (posted_encoding2 13 2) 210)
      (= (posted_encoding2 13 3) 211)
      (= (posted_encoding2 13 4) 212)
      (= (posted_encoding2 13 5) 213)
      (= (posted_encoding2 13 6) 214)
      (= (posted_encoding2 13 7) 215)
      (= (posted_encoding2 13 8) 216)
      (= (posted_encoding2 13 9) 217)
      (= (posted_encoding2 13 10) 218)
      (= (posted_encoding2 13 11) 219)
      (= (posted_encoding2 13 12) 220)
      (= (posted_encoding2 13 13) 221)
      (= (posted_encoding2 13 14) 222)
      (= (posted_encoding2 13 15) 223)
      (= (posted_encoding2 14 0) 224)
      (= (posted_encoding2 14 1) 225)
      (= (posted_encoding2 14 2) 226)
      (= (posted_encoding2 14 3) 227)
      (= (posted_encoding2 14 4) 228)
      (= (posted_encoding2 14 5) 229)
      (= (posted_encoding2 14 6) 230)
      (= (posted_encoding2 14 7) 231)
      (= (posted_encoding2 14 8) 232)
      (= (posted_encoding2 14 9) 233)
      (= (posted_encoding2 14 10) 234)
      (= (posted_encoding2 14 11) 235)
      (= (posted_encoding2 14 12) 236)
      (= (posted_encoding2 14 13) 237)
      (= (posted_encoding2 14 14) 238)
      (= (posted_encoding2 14 15) 239)
      (= (posted_encoding2 15 0) 240)
      (= (posted_encoding2 15 1) 241)
      (= (posted_encoding2 15 2) 242)
      (= (posted_encoding2 15 3) 243)
      (= (posted_encoding2 15 4) 244)
      (= (posted_encoding2 15 5) 245)
      (= (posted_encoding2 15 6) 246)
      (= (posted_encoding2 15 7) 247)
      (= (posted_encoding2 15 8) 248)
      (= (posted_encoding2 15 9) 249)
      (= (posted_encoding2 15 10) 250)
      (= (posted_encoding2 15 11) 251)
      (= (posted_encoding2 15 12) 252)
      (= (posted_encoding2 15 13) 253)
      (= (posted_encoding2 15 14) 254)
      (= (posted_encoding2 15 15) 255)



      (= (k 1 1) 1)
      (= (k 1 2) 0)
      (= (k 1 3) 0)
      (= (k 1 4) 0)
      (= (k 1 5) 0)
      (= (k 1 6) 0)
      (= (k 1 7) 0)
      (= (k 1 8) 0)
      (= (k 2 1) 0)
      (= (k 2 2) 1)
      (= (k 2 3) 0)
      (= (k 2 4) 0)
      (= (k 2 5) 0)
      (= (k 2 6) 0)
      (= (k 2 7) 0)
      (= (k 2 8) 0)
      (= (k 3 1) 0)
      (= (k 3 2) 0)
      (= (k 3 3) 1)
      (= (k 3 4) 0)
      (= (k 3 5) 0)
      (= (k 3 6) 0)
      (= (k 3 7) 0)
      (= (k 3 8) 0)
      (= (k 4 1) 0)
      (= (k 4 2) 0)
      (= (k 4 3) 0)
      (= (k 4 4) 1)
      (= (k 4 5) 0)
      (= (k 4 6) 0)
      (= (k 4 7) 0)
      (= (k 4 8) 0)
      (= (k 5 1) 0)
      (= (k 5 2) 0)
      (= (k 5 3) 0)
      (= (k 5 4) 0)
      (= (k 5 5) 1)
      (= (k 5 6) 0)
      (= (k 5 7) 0)
      (= (k 5 8) 0)
      (= (k 6 1) 0)
      (= (k 6 2) 0)
      (= (k 6 3) 0)
      (= (k 6 4) 0)
      (= (k 6 5) 0)
      (= (k 6 6) 1)
      (= (k 6 7) 0)
      (= (k 6 8) 0)
      (= (k 7 1) 0)
      (= (k 7 2) 0)
      (= (k 7 3) 0)
      (= (k 7 4) 0)
      (= (k 7 5) 0)
      (= (k 7 6) 0)
      (= (k 7 7) 1)
      (= (k 7 8) 0)
      (= (k 8 1) 0)
      (= (k 8 2) 0)
      (= (k 8 3) 0)
      (= (k 8 4) 0)
      (= (k 8 5) 0)
      (= (k 8 6) 0)
      (= (k 8 7) 0)
      (= (k 8 8) 1)



      ; (= (posted_encoding 0 0 0 0 0 0 0 0) 0)
      ; (= (posted_encoding 0 0 0 0 0 0 0 1) 1)
      ; (= (posted_encoding 0 0 0 0 0 0 1 0) 2)
      ; (= (posted_encoding 0 0 0 0 0 0 1 1) 3)
      ; (= (posted_encoding 0 0 0 0 0 1 0 0) 4)
      ; (= (posted_encoding 0 0 0 0 0 1 0 1) 5)
      ; (= (posted_encoding 0 0 0 0 0 1 1 0) 6)
      ; (= (posted_encoding 0 0 0 0 0 1 1 1) 7)
      ; (= (posted_encoding 0 0 0 0 1 0 0 0) 8)
      ; (= (posted_encoding 0 0 0 0 1 0 0 1) 9)
      ; (= (posted_encoding 0 0 0 0 1 0 1 0) 10)
      ; (= (posted_encoding 0 0 0 0 1 0 1 1) 11)
      ; (= (posted_encoding 0 0 0 0 1 1 0 0) 12)
      ; (= (posted_encoding 0 0 0 0 1 1 0 1) 13)
      ; (= (posted_encoding 0 0 0 0 1 1 1 0) 14)
      ; (= (posted_encoding 0 0 0 0 1 1 1 1) 15)
      ; (= (posted_encoding 0 0 0 1 0 0 0 0) 16)
      ; (= (posted_encoding 0 0 0 1 0 0 0 1) 17)
      ; (= (posted_encoding 0 0 0 1 0 0 1 0) 18)
      ; (= (posted_encoding 0 0 0 1 0 0 1 1) 19)
      ; (= (posted_encoding 0 0 0 1 0 1 0 0) 20)
      ; (= (posted_encoding 0 0 0 1 0 1 0 1) 21)
      ; (= (posted_encoding 0 0 0 1 0 1 1 0) 22)
      ; (= (posted_encoding 0 0 0 1 0 1 1 1) 23)
      ; (= (posted_encoding 0 0 0 1 1 0 0 0) 24)
      ; (= (posted_encoding 0 0 0 1 1 0 0 1) 25)
      ; (= (posted_encoding 0 0 0 1 1 0 1 0) 26)
      ; (= (posted_encoding 0 0 0 1 1 0 1 1) 27)
      ; (= (posted_encoding 0 0 0 1 1 1 0 0) 28)
      ; (= (posted_encoding 0 0 0 1 1 1 0 1) 29)
      ; (= (posted_encoding 0 0 0 1 1 1 1 0) 30)
      ; (= (posted_encoding 0 0 0 1 1 1 1 1) 31)
      ; (= (posted_encoding 0 0 1 0 0 0 0 0) 32)
      ; (= (posted_encoding 0 0 1 0 0 0 0 1) 33)
      ; (= (posted_encoding 0 0 1 0 0 0 1 0) 34)
      ; (= (posted_encoding 0 0 1 0 0 0 1 1) 35)
      ; (= (posted_encoding 0 0 1 0 0 1 0 0) 36)
      ; (= (posted_encoding 0 0 1 0 0 1 0 1) 37)
      ; (= (posted_encoding 0 0 1 0 0 1 1 0) 38)
      ; (= (posted_encoding 0 0 1 0 0 1 1 1) 39)
      ; (= (posted_encoding 0 0 1 0 1 0 0 0) 40)
      ; (= (posted_encoding 0 0 1 0 1 0 0 1) 41)
      ; (= (posted_encoding 0 0 1 0 1 0 1 0) 42)
      ; (= (posted_encoding 0 0 1 0 1 0 1 1) 43)
      ; (= (posted_encoding 0 0 1 0 1 1 0 0) 44)
      ; (= (posted_encoding 0 0 1 0 1 1 0 1) 45)
      ; (= (posted_encoding 0 0 1 0 1 1 1 0) 46)
      ; (= (posted_encoding 0 0 1 0 1 1 1 1) 47)
      ; (= (posted_encoding 0 0 1 1 0 0 0 0) 48)
      ; (= (posted_encoding 0 0 1 1 0 0 0 1) 49)
      ; (= (posted_encoding 0 0 1 1 0 0 1 0) 50)
      ; (= (posted_encoding 0 0 1 1 0 0 1 1) 51)
      ; (= (posted_encoding 0 0 1 1 0 1 0 0) 52)
      ; (= (posted_encoding 0 0 1 1 0 1 0 1) 53)
      ; (= (posted_encoding 0 0 1 1 0 1 1 0) 54)
      ; (= (posted_encoding 0 0 1 1 0 1 1 1) 55)
      ; (= (posted_encoding 0 0 1 1 1 0 0 0) 56)
      ; (= (posted_encoding 0 0 1 1 1 0 0 1) 57)
      ; (= (posted_encoding 0 0 1 1 1 0 1 0) 58)
      ; (= (posted_encoding 0 0 1 1 1 0 1 1) 59)
      ; (= (posted_encoding 0 0 1 1 1 1 0 0) 60)
      ; (= (posted_encoding 0 0 1 1 1 1 0 1) 61)
      ; (= (posted_encoding 0 0 1 1 1 1 1 0) 62)
      ; (= (posted_encoding 0 0 1 1 1 1 1 1) 63)
      ; (= (posted_encoding 0 1 0 0 0 0 0 0) 64)
      ; (= (posted_encoding 0 1 0 0 0 0 0 1) 65)
      ; (= (posted_encoding 0 1 0 0 0 0 1 0) 66)
      ; (= (posted_encoding 0 1 0 0 0 0 1 1) 67)
      ; (= (posted_encoding 0 1 0 0 0 1 0 0) 68)
      ; (= (posted_encoding 0 1 0 0 0 1 0 1) 69)
      ; (= (posted_encoding 0 1 0 0 0 1 1 0) 70)
      ; (= (posted_encoding 0 1 0 0 0 1 1 1) 71)
      ; (= (posted_encoding 0 1 0 0 1 0 0 0) 72)
      ; (= (posted_encoding 0 1 0 0 1 0 0 1) 73)
      ; (= (posted_encoding 0 1 0 0 1 0 1 0) 74)
      ; (= (posted_encoding 0 1 0 0 1 0 1 1) 75)
      ; (= (posted_encoding 0 1 0 0 1 1 0 0) 76)
      ; (= (posted_encoding 0 1 0 0 1 1 0 1) 77)
      ; (= (posted_encoding 0 1 0 0 1 1 1 0) 78)
      ; (= (posted_encoding 0 1 0 0 1 1 1 1) 79)
      ; (= (posted_encoding 0 1 0 1 0 0 0 0) 80)
      ; (= (posted_encoding 0 1 0 1 0 0 0 1) 81)
      ; (= (posted_encoding 0 1 0 1 0 0 1 0) 82)
      ; (= (posted_encoding 0 1 0 1 0 0 1 1) 83)
      ; (= (posted_encoding 0 1 0 1 0 1 0 0) 84)
      ; (= (posted_encoding 0 1 0 1 0 1 0 1) 85)
      ; (= (posted_encoding 0 1 0 1 0 1 1 0) 86)
      ; (= (posted_encoding 0 1 0 1 0 1 1 1) 87)
      ; (= (posted_encoding 0 1 0 1 1 0 0 0) 88)
      ; (= (posted_encoding 0 1 0 1 1 0 0 1) 89)
      ; (= (posted_encoding 0 1 0 1 1 0 1 0) 90)
      ; (= (posted_encoding 0 1 0 1 1 0 1 1) 91)
      ; (= (posted_encoding 0 1 0 1 1 1 0 0) 92)
      ; (= (posted_encoding 0 1 0 1 1 1 0 1) 93)
      ; (= (posted_encoding 0 1 0 1 1 1 1 0) 94)
      ; (= (posted_encoding 0 1 0 1 1 1 1 1) 95)
      ; (= (posted_encoding 0 1 1 0 0 0 0 0) 96)
      ; (= (posted_encoding 0 1 1 0 0 0 0 1) 97)
      ; (= (posted_encoding 0 1 1 0 0 0 1 0) 98)
      ; (= (posted_encoding 0 1 1 0 0 0 1 1) 99)
      ; (= (posted_encoding 0 1 1 0 0 1 0 0) 100)
      ; (= (posted_encoding 0 1 1 0 0 1 0 1) 101)
      ; (= (posted_encoding 0 1 1 0 0 1 1 0) 102)
      ; (= (posted_encoding 0 1 1 0 0 1 1 1) 103)
      ; (= (posted_encoding 0 1 1 0 1 0 0 0) 104)
      ; (= (posted_encoding 0 1 1 0 1 0 0 1) 105)
      ; (= (posted_encoding 0 1 1 0 1 0 1 0) 106)
      ; (= (posted_encoding 0 1 1 0 1 0 1 1) 107)
      ; (= (posted_encoding 0 1 1 0 1 1 0 0) 108)
      ; (= (posted_encoding 0 1 1 0 1 1 0 1) 109)
      ; (= (posted_encoding 0 1 1 0 1 1 1 0) 110)
      ; (= (posted_encoding 0 1 1 0 1 1 1 1) 111)
      ; (= (posted_encoding 0 1 1 1 0 0 0 0) 112)
      ; (= (posted_encoding 0 1 1 1 0 0 0 1) 113)
      ; (= (posted_encoding 0 1 1 1 0 0 1 0) 114)
      ; (= (posted_encoding 0 1 1 1 0 0 1 1) 115)
      ; (= (posted_encoding 0 1 1 1 0 1 0 0) 116)
      ; (= (posted_encoding 0 1 1 1 0 1 0 1) 117)
      ; (= (posted_encoding 0 1 1 1 0 1 1 0) 118)
      ; (= (posted_encoding 0 1 1 1 0 1 1 1) 119)
      ; (= (posted_encoding 0 1 1 1 1 0 0 0) 120)
      ; (= (posted_encoding 0 1 1 1 1 0 0 1) 121)
      ; (= (posted_encoding 0 1 1 1 1 0 1 0) 122)
      ; (= (posted_encoding 0 1 1 1 1 0 1 1) 123)
      ; (= (posted_encoding 0 1 1 1 1 1 0 0) 124)
      ; (= (posted_encoding 0 1 1 1 1 1 0 1) 125)
      ; (= (posted_encoding 0 1 1 1 1 1 1 0) 126)
      ; (= (posted_encoding 0 1 1 1 1 1 1 1) 127)
      ; (= (posted_encoding 1 0 0 0 0 0 0 0) 128)
      ; (= (posted_encoding 1 0 0 0 0 0 0 1) 129)
      ; (= (posted_encoding 1 0 0 0 0 0 1 0) 130)
      ; (= (posted_encoding 1 0 0 0 0 0 1 1) 131)
      ; (= (posted_encoding 1 0 0 0 0 1 0 0) 132)
      ; (= (posted_encoding 1 0 0 0 0 1 0 1) 133)
      ; (= (posted_encoding 1 0 0 0 0 1 1 0) 134)
      ; (= (posted_encoding 1 0 0 0 0 1 1 1) 135)
      ; (= (posted_encoding 1 0 0 0 1 0 0 0) 136)
      ; (= (posted_encoding 1 0 0 0 1 0 0 1) 137)
      ; (= (posted_encoding 1 0 0 0 1 0 1 0) 138)
      ; (= (posted_encoding 1 0 0 0 1 0 1 1) 139)
      ; (= (posted_encoding 1 0 0 0 1 1 0 0) 140)
      ; (= (posted_encoding 1 0 0 0 1 1 0 1) 141)
      ; (= (posted_encoding 1 0 0 0 1 1 1 0) 142)
      ; (= (posted_encoding 1 0 0 0 1 1 1 1) 143)
      ; (= (posted_encoding 1 0 0 1 0 0 0 0) 144)
      ; (= (posted_encoding 1 0 0 1 0 0 0 1) 145)
      ; (= (posted_encoding 1 0 0 1 0 0 1 0) 146)
      ; (= (posted_encoding 1 0 0 1 0 0 1 1) 147)
      ; (= (posted_encoding 1 0 0 1 0 1 0 0) 148)
      ; (= (posted_encoding 1 0 0 1 0 1 0 1) 149)
      ; (= (posted_encoding 1 0 0 1 0 1 1 0) 150)
      ; (= (posted_encoding 1 0 0 1 0 1 1 1) 151)
      ; (= (posted_encoding 1 0 0 1 1 0 0 0) 152)
      ; (= (posted_encoding 1 0 0 1 1 0 0 1) 153)
      ; (= (posted_encoding 1 0 0 1 1 0 1 0) 154)
      ; (= (posted_encoding 1 0 0 1 1 0 1 1) 155)
      ; (= (posted_encoding 1 0 0 1 1 1 0 0) 156)
      ; (= (posted_encoding 1 0 0 1 1 1 0 1) 157)
      ; (= (posted_encoding 1 0 0 1 1 1 1 0) 158)
      ; (= (posted_encoding 1 0 0 1 1 1 1 1) 159)
      ; (= (posted_encoding 1 0 1 0 0 0 0 0) 160)
      ; (= (posted_encoding 1 0 1 0 0 0 0 1) 161)
      ; (= (posted_encoding 1 0 1 0 0 0 1 0) 162)
      ; (= (posted_encoding 1 0 1 0 0 0 1 1) 163)
      ; (= (posted_encoding 1 0 1 0 0 1 0 0) 164)
      ; (= (posted_encoding 1 0 1 0 0 1 0 1) 165)
      ; (= (posted_encoding 1 0 1 0 0 1 1 0) 166)
      ; (= (posted_encoding 1 0 1 0 0 1 1 1) 167)
      ; (= (posted_encoding 1 0 1 0 1 0 0 0) 168)
      ; (= (posted_encoding 1 0 1 0 1 0 0 1) 169)
      ; (= (posted_encoding 1 0 1 0 1 0 1 0) 170)
      ; (= (posted_encoding 1 0 1 0 1 0 1 1) 171)
      ; (= (posted_encoding 1 0 1 0 1 1 0 0) 172)
      ; (= (posted_encoding 1 0 1 0 1 1 0 1) 173)
      ; (= (posted_encoding 1 0 1 0 1 1 1 0) 174)
      ; (= (posted_encoding 1 0 1 0 1 1 1 1) 175)
      ; (= (posted_encoding 1 0 1 1 0 0 0 0) 176)
      ; (= (posted_encoding 1 0 1 1 0 0 0 1) 177)
      ; (= (posted_encoding 1 0 1 1 0 0 1 0) 178)
      ; (= (posted_encoding 1 0 1 1 0 0 1 1) 179)
      ; (= (posted_encoding 1 0 1 1 0 1 0 0) 180)
      ; (= (posted_encoding 1 0 1 1 0 1 0 1) 181)
      ; (= (posted_encoding 1 0 1 1 0 1 1 0) 182)
      ; (= (posted_encoding 1 0 1 1 0 1 1 1) 183)
      ; (= (posted_encoding 1 0 1 1 1 0 0 0) 184)
      ; (= (posted_encoding 1 0 1 1 1 0 0 1) 185)
      ; (= (posted_encoding 1 0 1 1 1 0 1 0) 186)
      ; (= (posted_encoding 1 0 1 1 1 0 1 1) 187)
      ; (= (posted_encoding 1 0 1 1 1 1 0 0) 188)
      ; (= (posted_encoding 1 0 1 1 1 1 0 1) 189)
      ; (= (posted_encoding 1 0 1 1 1 1 1 0) 190)
      ; (= (posted_encoding 1 0 1 1 1 1 1 1) 191)
      ; (= (posted_encoding 1 1 0 0 0 0 0 0) 192)
      ; (= (posted_encoding 1 1 0 0 0 0 0 1) 193)
      ; (= (posted_encoding 1 1 0 0 0 0 1 0) 194)
      ; (= (posted_encoding 1 1 0 0 0 0 1 1) 195)
      ; (= (posted_encoding 1 1 0 0 0 1 0 0) 196)
      ; (= (posted_encoding 1 1 0 0 0 1 0 1) 197)
      ; (= (posted_encoding 1 1 0 0 0 1 1 0) 198)
      ; (= (posted_encoding 1 1 0 0 0 1 1 1) 199)
      ; (= (posted_encoding 1 1 0 0 1 0 0 0) 200)
      ; (= (posted_encoding 1 1 0 0 1 0 0 1) 201)
      ; (= (posted_encoding 1 1 0 0 1 0 1 0) 202)
      ; (= (posted_encoding 1 1 0 0 1 0 1 1) 203)
      ; (= (posted_encoding 1 1 0 0 1 1 0 0) 204)
      ; (= (posted_encoding 1 1 0 0 1 1 0 1) 205)
      ; (= (posted_encoding 1 1 0 0 1 1 1 0) 206)
      ; (= (posted_encoding 1 1 0 0 1 1 1 1) 207)
      ; (= (posted_encoding 1 1 0 1 0 0 0 0) 208)
      ; (= (posted_encoding 1 1 0 1 0 0 0 1) 209)
      ; (= (posted_encoding 1 1 0 1 0 0 1 0) 210)
      ; (= (posted_encoding 1 1 0 1 0 0 1 1) 211)
      ; (= (posted_encoding 1 1 0 1 0 1 0 0) 212)
      ; (= (posted_encoding 1 1 0 1 0 1 0 1) 213)
      ; (= (posted_encoding 1 1 0 1 0 1 1 0) 214)
      ; (= (posted_encoding 1 1 0 1 0 1 1 1) 215)
      ; (= (posted_encoding 1 1 0 1 1 0 0 0) 216)
      ; (= (posted_encoding 1 1 0 1 1 0 0 1) 217)
      ; (= (posted_encoding 1 1 0 1 1 0 1 0) 218)
      ; (= (posted_encoding 1 1 0 1 1 0 1 1) 219)
      ; (= (posted_encoding 1 1 0 1 1 1 0 0) 220)
      ; (= (posted_encoding 1 1 0 1 1 1 0 1) 221)
      ; (= (posted_encoding 1 1 0 1 1 1 1 0) 222)
      ; (= (posted_encoding 1 1 0 1 1 1 1 1) 223)
      ; (= (posted_encoding 1 1 1 0 0 0 0 0) 224)
      ; (= (posted_encoding 1 1 1 0 0 0 0 1) 225)
      ; (= (posted_encoding 1 1 1 0 0 0 1 0) 226)
      ; (= (posted_encoding 1 1 1 0 0 0 1 1) 227)
      ; (= (posted_encoding 1 1 1 0 0 1 0 0) 228)
      ; (= (posted_encoding 1 1 1 0 0 1 0 1) 229)
      ; (= (posted_encoding 1 1 1 0 0 1 1 0) 230)
      ; (= (posted_encoding 1 1 1 0 0 1 1 1) 231)
      ; (= (posted_encoding 1 1 1 0 1 0 0 0) 232)
      ; (= (posted_encoding 1 1 1 0 1 0 0 1) 233)
      ; (= (posted_encoding 1 1 1 0 1 0 1 0) 234)
      ; (= (posted_encoding 1 1 1 0 1 0 1 1) 235)
      ; (= (posted_encoding 1 1 1 0 1 1 0 0) 236)
      ; (= (posted_encoding 1 1 1 0 1 1 0 1) 237)
      ; (= (posted_encoding 1 1 1 0 1 1 1 0) 238)
      ; (= (posted_encoding 1 1 1 0 1 1 1 1) 239)
      ; (= (posted_encoding 1 1 1 1 0 0 0 0) 240)
      ; (= (posted_encoding 1 1 1 1 0 0 0 1) 241)
      ; (= (posted_encoding 1 1 1 1 0 0 1 0) 242)
      ; (= (posted_encoding 1 1 1 1 0 0 1 1) 243)
      ; (= (posted_encoding 1 1 1 1 0 1 0 0) 244)
      ; (= (posted_encoding 1 1 1 1 0 1 0 1) 245)
      ; (= (posted_encoding 1 1 1 1 0 1 1 0) 246)
      ; (= (posted_encoding 1 1 1 1 0 1 1 1) 247)
      ; (= (posted_encoding 1 1 1 1 1 0 0 0) 248)
      ; (= (posted_encoding 1 1 1 1 1 0 0 1) 249)
      ; (= (posted_encoding 1 1 1 1 1 0 1 0) 250)
      ; (= (posted_encoding 1 1 1 1 1 0 1 1) 251)
      ; (= (posted_encoding 1 1 1 1 1 1 0 0) 252)
      ; (= (posted_encoding 1 1 1 1 1 1 0 1) 253)
      ; (= (posted_encoding 1 1 1 1 1 1 1 0) 254)
      ; (= (posted_encoding 1 1 1 1 1 1 1 1) 255)


    )

    (:goal
      (and
        ; (= (k 1 2) 1)
        ; (= (ak 2) 1)
        ; (= (ak 4) 0)
        ; (= (bk 3) 1)
        ; (= (bk 1) 0)
        ; (= (ck 4) 1)
        ; (= (ck 2) 0)
        ; (= (dk 1) 1)
        ; (= (dk 3) 0)

        (= (fact p1) 1)
        ; (= (fact p2) 1)
        ; (= (fact p3) 1)
        ; (= (fact p4) 1)

        (= (fact n1) 0)
        ; (= (fact n2) 0)
        ; (= (fact n3) 0)
        ; (= (fact n4) 0)
        ;(= (fact n5) 0)

        ; when agt_a shouts, whether others can know what he knows
        ; {"query_info":{"id":"p1","query":"dk 1 obj_1:value:2"}}
        ; {"query_info":{"id":"p2","query":"dk 2 obj_1:value:3"}}
        ; {"query_info":{"id":"p3","query":"dk 3 obj_1:value:4"}}
        ; {"query_info":{"id":"p4","query":"dk 4 obj_1:value:1"}}

        ; {"query_info":{"id":"n1","query":"dk 1 obj_1:value:4"}}
        ; {"query_info":{"id":"n2","query":"dk 2 obj_1:value:1"}}
        ; {"query_info":{"id":"n3","query":"dk 3 obj_1:value:2"}}
        ; {"query_info":{"id":"n4","query":"dk 4 obj_1:value:3"}}
        ; {"query_info":{"id":"n5","query":"dk 2 dk 1 obj_1:value:2"}}

      )
    )

    (:bounds
        (boolean - int[0..1])
        (encode - int[0..15])
        (encode2 - int[0..255])
        (loc - int[0..1])
        (agent - int[1..8])
    )
)

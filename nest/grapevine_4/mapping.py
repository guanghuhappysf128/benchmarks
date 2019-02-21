


import sys


def getString(i,s,a):
	# print("i is "+str(i)+", s is "+str(s))
	if i > 0 and s > 0:
		# print("i/a: "+str(int(i/a))+", i\%a: "+str(int(i%a)))
		return getString(int(i/a),s-1,a) + " " + str(int(i % a))
	elif i == 0 and s > 0:
		return getString(i,s-1,a) + " 0"
	else:
		return ""



# a = int(input("Enter the number of agent "))

# print(" a: " + str(a))

# for i in range(2**a):
# 	string = "(= (posted_encoding 0 0) 0)"
# 	# print("i is "+str(i)+", s is "+str(s))
# 	print("\t\t\t(= (posted_encoding"+getString(i,a,2)+") "+str(i)+")")


# for i in range(16):
# 	for j in range(16):
# 		print("\t\t\t(= (posted_encoding2 "+str(i)+" "+str(j)+") "+str(i*16+j)+")")

a = int(input("Enter location encoding: "))
str1 = ""
str2 = ""
for i in range(1,9):
	j = 9 - i
	str1 += str(int (a % 2))
	a = int(a/2)
	str2 += str(j)
print(str1)
print(str2)

# for i in range(1,9):
# 	for j in range(1,9):
# 		#string = "(= (posted_encoding 0 0) 0)"
# 		# print("i is "+str(i)+", s is "+str(s))
# 		print("\t\t\t(= (k "+str(i)+" "+str(j)+") "+str(int(i==j))+")")



# for i in range(a**s):
# 	print("        (= (check "+str(i)+" p1) 0)")
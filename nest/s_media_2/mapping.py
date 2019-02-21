import sys


def getString(i,s,a):
	# print("i is "+str(i)+", s is "+str(s))
	if i > 0 and s > 0:
		# print("i/a: "+str(int(i/a))+", i\%a: "+str(int(i%a)))
		return getString(int(i/a),s-1,a) + " " + str(int(i % a+1))
	elif i == 0 and s > 0:
		return getString(i,s-1,a) + " 1"
	else:
		return ""




s = int(input("Enter the number of secret: "))
a = int(input("Enter the number of agent "))

print("s: " + str(s) + " a: " + str(a))

for i in range(a**s):
	string = "(= (posted_encoding 0 0) 0)"
	# print("i is "+str(i)+", s is "+str(s))
	print("        (= (posted_encoding"+getString(i,s,a)+") "+str(i)+")")

for i in range(a**s):
	print("        (= (check "+str(i)+" p1) 0)")


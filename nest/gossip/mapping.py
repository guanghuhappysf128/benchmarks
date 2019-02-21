import sys

a = int(input("Enter the number of agent "))

print("Initial:")
for i in range (a):
	print("\t\t(knows "+str(i+1)+" "+str(i+1)+")")

print("")
print("Goal")
for i in range (a):
	for j in range (a):
		print("\t\t\t(knows "+str(i+1)+" "+str(j+1)+")")


print("Initial:")
for i in range (a):
	print("\t\t(knows2 "+str(i+1)+" "+str(i+1)+" "+str(i+1)+")")

print("")
print("Goal")
for i in range (a):
	for j in range (a):
		for k in range (a):
			print("\t\t\t(knows2 "+str(i+1)+" "+str(j+1)+" "+str(k+1)+")")










# def getString(i,s,a):
# 	# print("i is "+str(i)+", s is "+str(s))
# 	if i > 0 and s > 0:
# 		# print("i/a: "+str(int(i/a))+", i\%a: "+str(int(i%a)))
# 		return getString(int(i/a),s-1,a) + " " + str(int(i % a+1))
# 	elif i == 0 and s > 0:
# 		return getString(i,s-1,a) + " 1"
# 	else:
# 		return ""




# s = int(input("Enter the number of secret: "))
# a = int(input("Enter the number of agent "))

# print("s: " + str(s) + " a: " + str(a))

# for i in range(a**s):
# 	string = "(= (posted_encoding 0 0) 0)"
# 	# print("i is "+str(i)+", s is "+str(s))
# 	print("        (= (posted_encoding"+getString(i,s,a)+") "+str(i)+")")

# for i in range(a**s):
# 	print("        (= (check "+str(i)+" p1) 0)")


import sys

# a = int(input("Enter the number of agent "))

# print("Initial:")
# for i in range (a):
# 	print("\t\t(knows "+str(i+1)+" "+str(i+1)+")")

# print("")
# print("Goal")
# for i in range (a):
# 	for j in range (a):
# 		print("\t\t\t(knows "+str(i+1)+" "+str(j+1)+")")


# print("Initial:")
# for i in range (a):
# 	print("\t\t(knows2 "+str(i+1)+" "+str(i+1)+" "+str(i+1)+")")

# print("")
# print("Goal")
# for i in range (a):
# 	for j in range (a):
# 		for k in range (a):
# 			print("\t\t\t(knows2 "+str(i+1)+" "+str(j+1)+" "+str(k+1)+")")

num = raw_input("Entering the binary number:")
print("The length is "+str(len(num)))

base = 1
number = 0

for i in range(len(num)):
	print("The i is "+str(-i-1)+"the number is "+num[i])
	if (num[-i-1]=='0'):
		print("0")
	else:
		print("1")
		number = number + base
	base = base *2

print("Result is "+ str(number))


# for k in range(len(num)):
# 	print("before"+str(j))
# 	if j==5:
# 		i1=i1+1
#         j=1
# 	print("before1"+str(j))
# 	print("\t\t\t;{\"object_info\":{\"id\":\"k"+str(i1)+"s"+str(j)+"\",\"value\":\"0\"}}")
# 	j=j+1
# 	print("after"+str(j))

for i in range(1,4):
  for j in range(1,4):
    for k in range(1,4):
      print("\t\t\t;{\"object_info\":{\"id\":\"k"+str(i)+"k"+str(j)+"s"+str(k)+"\",\"value\":\"0\"}}")


    #   ; {"object_info":{"id":"obj_1","location":"1,1","name":"box1"}}
    # for (auto i: state_array)
    # {
    #     if (agent_temp[1]==AGENT_NUMBER+1)
    #     {
    #         agent_temp[0]++;
    #         agent_temp[1]=1;
    #     }
    #     Object temp_o = Object("k"+to_string(agent_temp[0])+"s"+to_string(agent_temp[1]));
    #     temp_o.addVariable("value",to_string(i));
    #     state1->getObjects()->push_back(temp_o);
    #     agent_temp[1]++;
    # }







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


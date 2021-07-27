import os
import sys
from optparse import OptionParser

problem_file = "problem.pddl"
agent_names = "abcdefghijklmnopqrstuvwxyz"
num_of_agents = 0
depth = 0

def loadParameter():

    usageStr = """
    USAGE:      python domain_generator.py <options>
    EXAMPLES:   (1) 

    """
    parser = OptionParser(usageStr)


    parser.add_option('-n', '--num_of_agents', type='int',help='num_of_agents in the gossip problem. from 3 to ', default=3)
    parser.add_option('-p', '--problem_name',help='the name of the problem', default="00")
    parser.add_option('-a','--all', action='store_true', help='generate all epistemic relations as goals', default=False)
    parser.add_option('-d', '--depth', type='int',help='depth in the gossip problem. from 3 to ', default=2)

    options, otherjunk = parser.parse_args(sys.argv[1:] )
    assert len(otherjunk) == 0, "Unrecognized options: " + str(otherjunk)

    return options



if __name__ == '__main__':

    options = loadParameter()
    num_of_agents = options.num_of_agents
    depth = options.depth
    num_of_queries = num_of_agents ** (depth+1)
    problem_file = f"problem{options.problem_name}_{num_of_agents}agent_{options.all}.pddl"
    
    with open(problem_file,"w") as f:
        f.write(f"(define (problem problem{options.problem_name}_{num_of_agents}agent_{options.all})\n")
        f.write("\t(:domain gossip)\n")
        f.write("; there is no comments allows in objects\n")
        f.write("\t(:objects\n")
        f.write("\t\t")
        if options.all:
            for i in range(num_of_queries):
                f.write(f"p{i+1} ")
        else:
            f.write("p1 ")
        f.write("- query\n")
        f.write("\t)\n")
        f.write("\n")

        f.write("\t(:init\n")
        for i in range(num_of_agents):
            f.write('\t; {"agent_info":{"id":"'+str(i+1)+'","name":"alice","location":"0,0"}}\n')
        for i in range(num_of_agents):
            f.write('\t; {"object_info":{"id":"k'+str(i+1)+'s'+str(i+1)+'","value":"1"}}\n')
        f.write("\n")
        for i in range(num_of_agents):
            for j in range(i+1,num_of_agents):
                f.write(f"\t\t(= (calling_{agent_names[i]}_{agent_names[j]}) 0) \n")
        f.write("\t)\n")
        f.write("\n")
        f.write("\t(:goal\n")
        f.write("\t\t(and\n")
        if options.all:
            for q in range(num_of_queries):
                f.write("\t\t\t(= (@check ")
                for i in range(options.num_of_agents):
                    for j in range(i+1,options.num_of_agents):
                        f.write(f"(calling_{agent_names[i]}_{agent_names[j]}) ")
                f.write(f"p{q+1}) 1)\n")
            for q in range(num_of_queries):
                f.write('\t\t\t;{"query_info":{"id":"p'+str(q+1)+'","query":"')
                base = num_of_queries / num_of_agents
                temp = q
                while base > 1:
                    f.write(f"ds {str(int(temp//base+1))} ")
                    temp = temp % base
                    base = base // num_of_agents
                f.write(f"s{str(int(temp//base+1))}:value:1")
                f.write('"}}\n')
        else:
            f.write("\t\t\t(= (@check ")
            for i in range(options.num_of_agents):
                for j in range(i+1,options.num_of_agents):
                    f.write(f"(calling_{agent_names[i]}_{agent_names[j]}) ")
            f.write(f"p1) 1)\n")
            f.write('\t\t\t;{"query_info":{"id":"p1","query":"')
            base = num_of_agents
            temp = depth
            while temp > 0:
                f.write(f"ds {str(int(temp % base+1))} ")
                temp = temp -1
            f.write(f"s{str(int(temp+1))}:value:1")
            f.write('"}}\n')
        f.write("\t\t)\n")
        f.write("\t)\n")
        f.write("\n")
        f.write("\t(:bounds\n")
        if options.all:
            temp = str(2**((depth)*(num_of_agents-1)))
        else:
            temp = str(2** (depth+1)+1)
        f.write("\t\t(action_sequence - int[0.." + temp + "])\n")
        f.write("\t\t(boolean - int[0..1])\n")
        f.write("\t)\n")
        f.write(")\n")
        f.write("\n")
        f.write("\n")







import os
import sys
from optparse import OptionParser

domain_file = "domain.pddl"
agent_names = "abcdefghijklmnopqrstuvwxyz"


def loadParameter():

    usageStr = """
    USAGE:      python domain_generator.py <options>
    EXAMPLES:   (1) 

    """
    parser = OptionParser(usageStr)


    parser.add_option('-n', '--num_of_agents', type='int',help='num_of_agents in the gossip problem. from 3 to ', default=3)

    options, otherjunk = parser.parse_args(sys.argv[1:] )
    assert len(otherjunk) == 0, "Unrecognized options: " + str(otherjunk)

    return options



if __name__ == '__main__':

    options = loadParameter()

    with open(domain_file,"w") as f:
        f.write("(define (domain gossip)\n")
        f.write("\t(:requirements :strips :typing :equality :adl)\n")
        f.write("\t(:types\n")
        f.write("\t\tboolean action_sequence query - int\n")
        f.write("\t)\n")
        f.write("\n")
        f.write("\t(:predicates\n")
        f.write("\t)\n")
        f.write("\n")
        f.write("\t(:functions\n")
        for i in range(options.num_of_agents):
            for j in range(i+1,options.num_of_agents):
                f.write(f"\t\t(calling_{agent_names[i]}_{agent_names[j]}) - action_sequence\n")
        f.write("\n")
        f.write("\t\t(@update ?b - boolean ?as - action_sequence) - action_sequence\n")
        f.write("\t\t(@check ")
        for i in range(options.num_of_agents):
            for j in range(i+1,options.num_of_agents):
                f.write(f"?{agent_names[i]}{agent_names[j]} - action_sequence ")
        f.write("?q - query) - boolean\n")
        f.write("\t)\n")
        f.write("\n")
        for i in range(options.num_of_agents):
            for j in range(i+1,options.num_of_agents):
                f.write(f"\t(:action calls_{agent_names[i]}_{agent_names[j]}\n")
                f.write("\t\t:parameters()\n")
                f.write("\t\t:precondition\n")
                f.write("\t\t(and\n")
                f.write("\t\t\t\n")
                f.write("\t\t)\n")
                f.write("\t\t:effect\n")
                f.write("\t\t(and\n")
                for i1 in range(options.num_of_agents):
                    for j1 in range(i1+1,options.num_of_agents):                
                        f.write(f"\t\t\t(assign (calling_{agent_names[i1]}_{agent_names[j1]}) (@update {int(i1==i and j1 == j)} (calling_{agent_names[i1]}_{agent_names[j1]})))\n")
                f.write("\t\t)\n")
                f.write("\t)\n")
                f.write("\n")
        f.write(")\n")
        f.write("\n")
        f.write("\n")
        f.write("\n")
        f.write("\n")

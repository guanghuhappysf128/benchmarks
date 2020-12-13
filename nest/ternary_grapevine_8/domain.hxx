//
// Created by ghu1 on 21/08/18.
//
#include "epistemic_checker.hxx"

#ifndef SIM_GEN_DOMAIN_H
#define SIM_GEN_DOMAIN_H

using namespace std;

bool Agent::seesAgent(Agent &target)
{

    string agent_l,target_l;
    for (auto i: this->variables)
    {
        if (i.sameName("location")) agent_l = i.getValue();
    }
    for (auto i: target.variables)
    {
        if (i.sameName("location")) target_l = i.getValue();
    }
    return sees(agent_l,target_l);
}

bool Agent::seesObject(Object &target)
{

    string agent_l,target_l;
    for (auto i: this->variables)
    {
        if (i.sameName("location")) agent_l = i.getValue();
    }
    for (auto i: target.variables)
    {
        if (i.sameName("location")) target_l = i.getValue();
    }
    return sees(agent_l,target_l);
}

Agent Agent::seesAV(Agent &a)
{
    string agent_id=a.getId();
    Agent agent(agent_id);
    for (auto i: a.variables)
    {
        if (i.sameName("location")) agent.addVariable(i.getName(),i.getValue());
        else if (this->seesAgent(a)) agent.addVariable(i.getName(),i.getValue());
    }
    return agent;
}

Object Agent::seesOV(Object &o)
{
    string agent_id=o.getId();
    Object object(agent_id);
    for (auto i: o.variables)
    {
        if (i.sameName("location")) object.addVariable(i.getName(),i.getValue());
        else if (this->seesObject(o)) object.addVariable(i.getName(),i.getValue());
    }
    return object;
}

//might be need to be changed, using int for now
bool sees(string agent_l,string target_l)
{

    int agent = stoi(agent_l);
    int target = stoi(target_l);
    return agent==target;
}

#endif //SIM_GEN_DOMAIN_H

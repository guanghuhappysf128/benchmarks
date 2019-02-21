//
// Created by ghu1 on 25/11/18.
//

#ifndef GRAPEVINE_DOMAIN_HXX
#define GRAPEVINE_DOMAIN_HXX

#include "epistemic_checker.hxx"


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
};

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
};

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
};

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
};

bool State::checkS(Seeing &s)
{
    // in this domain sees means knowing whether
    // for nested seeing relationship
    // seeing means sees all direct first children agent
    // and knowing their child's location
    // since the assumption is location is aware by all agents
    // only need to check sees children
    // and the prove for sees that is the agent has non-empty
    //  range or direction

    //if the next sees is a variable, which mean we want to check whether
    if (s.seeing_ptr->ptr_type == Seeing::VARIABLE&&s.seeing_ptr->seeing_type==Seeing::SV)
    {
        for (auto i:s.agent_ids)
        {
            if (this->findAgent(i))
            {
                Agent a = this->getAgent(i);
                if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
                {
                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
                    return a.seesAgent(target);
                }
                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
                {
                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
                    return a.seesObject(target);
                } else return false;
            }
        }
    }

    for (auto i:s.seeing_ptr->agent_ids)
    {
        if (this->findAgent(i))
        {
            if (this->getAgent(i).getV("secret")=="NONE")
                return false;
        } else return false;


    }
    return true;
}


bool sees(string agent_l,string target_l)
{

    int agent = stoi(agent_l);
    int target = stoi(target_l);
    return agent==target;
};



#endif //GRAPEVINE_DOMAIN_HXX

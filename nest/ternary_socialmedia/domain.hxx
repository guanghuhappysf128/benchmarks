//
// Created by ghu1 on 4/02/19.
//

#include "epistemic_checker.hxx"
#define PI 3.1415926

#ifndef S_MEDIA_DOMAIN_HXX
#define S_MEDIA_DOMAIN_HXX


using namespace std;

bool Agent::seesAgent(Agent &target)
{
    for (auto i: this->variables)
    {
        if (i.sameName("friendwith"+target.getId())) return true;
    }
    return false;
}

bool Agent::seesObject(Object &target)
{

    string agent_l,target_poster_id;
    for (auto i: target.variables)
    {
        if (i.sameName("belongsto")) target_poster_id = i.getValue();
    }
    //std::cout << "Belongs to "<< target_poster_id << endl;
    for (auto i: this->variables)
    {
        if (i.sameName("friendwith"+target_poster_id)) return true;
    }

    return false;
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
    string obj_id=o.getId();
    Object object(obj_id);
    //std:cout << "agent " << this->getId() << " sees object "<< obj_id << " is " << this->seesObject(o) << endl;
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
    return abs(agent-target)<=1;
}



#endif //S_MEDIA_DOMAIN_HXX

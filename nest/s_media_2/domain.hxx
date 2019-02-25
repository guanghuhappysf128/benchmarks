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
};

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
    string obj_id=o.getId();
    Object object(obj_id);
    //std:cout << "agent " << this->getId() << " sees object "<< obj_id << " is " << this->seesObject(o) << endl;
    for (auto i: o.variables)
    {
        if (i.sameName("location")) object.addVariable(i.getName(),i.getValue());
        else if (this->seesObject(o)) object.addVariable(i.getName(),i.getValue());
    }
    return object;
};

bool ProblemState::checkS(Seeing &s)
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
                    //std::cout <<"------------1"<<endl;
                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
                    return a.seesAgent(target);
                }
                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
                {
                    //std::cout <<"------------2"<<endl;
                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
                    return a.seesObject(target);
                }
                else
                {
                    //std::cout <<"------------3"<<endl;
                    return false;
                }
            }
        }
    }

    //this needs to be changed

    for (auto i:s.seeing_ptr->agent_ids)
    {
        if (this->findAgent(i))
        {
            //this need to be a feature that every agent have, and it cannot be location because everyone know others location as assumption
            if (this->getAgent(i).getV("name")=="NONE")
            {
                //std::cout <<"------------4"<<endl;
                return false;
            }
        }
        else
        {
            //std::cout <<"------------5"<<endl;
            return false;
        }


    }
    return true;
}

//might be need to be changed, using int for now
bool sees(string agent_l,string target_l)
{

    int agent = stoi(agent_l);
    int target = stoi(target_l);
    return abs(agent-target)<=1;
};



#endif //S_MEDIA_DOMAIN_HXX

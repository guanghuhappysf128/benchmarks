//
// Created by guang on 6/03/19.
//

#ifndef GOSSIP_STATE_DOMAIN_HXX
#define GOSSIP_STATE_DOMAIN_HXX


#include "epistemic_checker.hxx"
#include <cmath>
#define PI 3.1415926


using namespace std;

bool Agent::seesAgent(Agent &target)
{
    //int agent_x,agent_y,target_x,target_y,agent_r,agent_d;
    string agent_l,target_l,agent_d,agent_r;
    for (auto i: this->variables)
    {
        if (i.sameName("location")) agent_l = i.getValue();
        else if (i.sameName("direction")) agent_d = i.getValue();
        else if (i.sameName("range")) agent_r = i.getValue();
    }
    for (auto i: target.variables)
    {
        if (i.sameName("location")) target_l = i.getValue();
    }
    return sees(agent_l,agent_d,agent_r,target_l);
}

bool Agent::seesObject(Object &target)
{
    //int agent_x,agent_y,target_x,target_y,agent_r,agent_d;
    string agent_l,target_l,agent_d,agent_r;
    for (auto i: this->variables)
    {
        if (i.sameName("location")) agent_l = i.getValue();
        else if (i.sameName("direction")) agent_d = i.getValue();
        else if (i.sameName("range")) agent_r = i.getValue();
    }
    for (auto i: target.variables)
    {
        if (i.sameName("location")) target_l = i.getValue();
    }
    return sees(agent_l,agent_d,agent_r,target_l);
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
    Object object(obj_id.erase(0,2));
    //cout << "before " << o.show();
    for (auto i: o.variables)
    {
        object.addVariable(i.getName(),i.getValue());
    }
    //cout << "after "<< object.show();
    return object;
};

bool Agent::canSeesOV(Object &o)
{
    //cout << o.getId().at(1) << " : " << this->getId();
    string temp(1,o.getId().at(1));
    return (temp==this->getId());
};

ProblemState ProblemState::getAgentState(Agent agt)
{
    vector<Agent> result_agents;
    vector<Object> result_objects;
    //cout << "------------this is agent " << agt.getId() << "-----------\n";
    for (auto i: this->objects)
    {
        //cout << "This is object: " << i.show();
        if (agt.canSeesOV(i))
        {
            //cout << "true" << endl;
            result_objects.push_back(agt.seesOV(i));
        }

    }
    for (auto i: this->agents)
    {
        result_agents.push_back(agt.seesAV(i));
    }
    ProblemState new_state(result_agents,result_objects);
    return new_state;
};

bool ProblemState::checkV(Variable &v)
{
    //cout << "variable v -----------"<< v.show();
    for(auto i:this->objects)
    {
        if (v.sameId(i.getId()))
        {
            for (auto j: i.variables)
            {
                if (v.sameName(j.getName()))
                {
                    if(v.getValue()!="")
                        return v.sameValue(j.getValue());
                    else return true;
                }
            }
            //find the object, but object don't have that variable
            return false;
        }
    }
    for (auto i:this->agents)
    {
        if (v.sameId(i.getId()))
        {
            for (auto j: i.variables)
            {
                if (v.sameName(j.getName()))
                {
                    if(v.getValue()!="")
                        return v.sameValue(j.getValue());
                    else return true;
                }

            }
            //find the agent, but agent don't have that variable
            return false;
        }
    }

    return false;
}


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

    //if the ext sees is a variable, which mean we want to check whether
    if (s.seeing_ptr->ptr_type == Seeing::VARIABLE&&s.seeing_ptr->seeing_type==Seeing::SV)
    {
        for (auto i:s.agent_ids)
        {
            if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::DS)
            {
                Agent a = this->getAgent(i);
                if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
                {
                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
                    if (a.seesAgent(target)) return true;
                }
                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
                {
                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
                    if (a.seesObject(target)) return true;
                }
                else return false;
            }
            else if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::CS)
            {
                Agent a = this->getAgent(i);
                if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
                {
                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
                    if (!a.seesAgent(target)) return false;
                }
                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
                {
                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
                    if (!a.seesObject(target)) return false;
                }
                else return true;
            }
            else if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::ES)
            {
                Agent a = this->getAgent(i);
                if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
                {
                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
                    if (!a.seesAgent(target)) return false;
                }
                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
                {
                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
                    if (!a.seesObject(target)) return false;
                }
                else return true;
            }
            else if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::SV)
            {
//                Agent a = this->getAgent(i);
//                if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
//                {
//                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
//                    if (!a.seesAgent(target)) return false;
//                }
//                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
//                {
//                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
//                    if (!a.seesObject(target)) return false;
//                }
//                else return true;
            }
        }
        return false;
    }

    for (auto i:s.seeing_ptr->agent_ids)
    {
        if (this->findAgent(i))
        {
            if (this->getAgent(i).getV("range")=="")
                return false;
        } else return false;


    }
    return true;
}

//might be need to be changed, using int for now
bool sees(string agent_l,string agent_d,string agent_r,string target_l)
{
    vector<string> agent_l_list = split(agent_l,',');
    int agent_x = stoi(agent_l_list.front());
    int agent_y = stoi(agent_l_list.back());
    vector<string> target_l_list = split(target_l,',');
    int target_x = stoi(target_l_list.front());
    int target_y = stoi(target_l_list.back());
    if (agent_d==""||agent_r=="") return false;
    int agent_dir = stoi(agent_d);
    int agent_range = stoi(agent_r);
    bool result = false; //default cannot sees
    int delta_x = target_x - agent_x;
    int delta_y = target_y - agent_y;
    int dir=0;

    if (delta_x == 0)
    {
        if (delta_y > 0)  dir = 90;
        else if (delta_y == 0) result = true;
        else dir =-90;
    }
    else
    {
        dir = (int) (atan2(delta_y,delta_x)*180/PI);
    }
    int delta_dir = abs(dir - agent_dir);
    if (delta_dir > 180) delta_dir = 360 - delta_dir;
    if (delta_dir <= agent_range/2) result = true;

    return result;
};

#endif //GOSSIP_STATE_DOMAIN_HXX

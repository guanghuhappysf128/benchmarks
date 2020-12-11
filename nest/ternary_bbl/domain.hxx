//
// Created by ghu1 on 21/08/18.
//
#include "epistemic_checker.hxx"
#include <cmath>
#include <algorithm>
#define PI 3.1415926
#ifndef SIM_GEN_DOMAIN_H
#define SIM_GEN_DOMAIN_H

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
    string agent_id=o.getId();
    Object object(agent_id);
    for (auto i: o.variables)
    {
        if (i.sameName("location")) object.addVariable(i.getName(),i.getValue());
        else if (this->seesObject(o)) object.addVariable(i.getName(),i.getValue());
    }
    return object;
}

Ternary ProblemState::checkS(Seeing &s,Variable &v)
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




    // if (s.seeing_ptr->ptr_type == Seeing::VARIABLE && s.seeing_ptr->seeing_type==Seeing::SV)
    // {
    //     cout << "seeing variable" << endl;
    //     cout << s.show() << endl;
    //     for (auto i:s.agent_ids)
    //     {
    //         if (this->findAgent(i))
    //         {
    //             Agent a = this->getAgent(i);
    //             if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
    //             {
    //                 Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
    //                 if (a.seesAgent(target)) return Ternary::truth; 
    //                 else return Ternary::lie;
    //             }
    //             else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
    //             {
    //                 Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
    //                 if (a.seesObject(target)) return Ternary::truth; 
    //                 else return Ternary::lie;
    //             } 
    //             else return Ternary::unknown;
    //         }
    //     }
    // }
    // cout << "get in check seeing" << endl;
    if (s.ptr_type == Seeing:: VARIABLE)
    {

        // cout << "Current State: " << this->show() << endl;
        // cout << "seeing variable" << endl;
        // cout << s.show() << endl;

        if (this->findAgent(v.getId()))
        {
            if (this->getAgent(v.getId()).getV("visible")=="NONE")
                return Ternary::lie;
            else return Ternary::truth;
        }
        else if (this->findObject(v.getId()))
        {
            if (this->getObject(v.getId()).getV("visible")=="NONE")
                return Ternary::lie;
            else return Ternary:: truth;         
        }
        else
        {
            return Ternary::lie;
        }
        
    }
    else
    {

        
        ProblemState nextState = s.getState(*this);

        // if (s.seeing_ptr->ptr_type!=Seeing::VARIABLE && s.agent_ids.front()=="agt_a")
        // {
        //     cout << "Current State: " << this->show() << endl;
        //     cout << "nested seeing: "<< endl;  
        //     cout << s.show() << endl;
        //     cout << "Next State: " << nextState.show() << endl;
        // }

        // if the variable is not visible in this perspective, it means this perpective unknown whether the objects is in the next perspective or not
        // cout << "seeing pointer seeing type" << s.seeing_ptr->ptr_type << endl;
        Seeing temp_s = s;

        vector<string> agent_id_list;
        while (temp_s.seeing_ptr->ptr_type!=Seeing::VARIABLE)
        {
            temp_s = *temp_s.seeing_ptr;
            for (auto i :temp_s.agent_ids)
            {
                if (!count(agent_id_list.begin(), agent_id_list.end(), i))
                    agent_id_list.push_back(i);
            }
        }

        // cout << "checking visible agent" << endl;
        // return unknown if any of the nest seeing contains unseen agent
        for (auto i: agent_id_list)
        {
            if (nextState.findAgent(i))
            {
                if (nextState.getAgent(i).getV("visible")=="NONE")
                {
                    // cout << "return false" << endl;
                    return Ternary::lie;
                }
                    
            }
        }

        // cout << "checking visible object" << endl;
        //return unknown if the final variable is unsee to the current agent
        if (nextState.findAgent(v.getId())&& s.seeing_ptr->ptr_type!=Seeing::VARIABLE)
        {
            if (nextState.getAgent(v.getId()).getV("visible")=="NONE")
            {
                // cout << "return unknown" << endl;
                return Ternary::unknown;
            }
                
        }
        else if (nextState.findObject(v.getId())&& s.seeing_ptr->ptr_type!=Seeing::VARIABLE)
        {
            if (nextState.getObject(v.getId()).getV("visible")=="NONE")
            {
                // cout << "return unknown" << endl;
                return Ternary::unknown;
            }         
        }
        else if (nextState.findAgent(v.getId()))
        {
            if (nextState.getAgent(v.getId()).getV("visible")=="NONE")
            {
                // cout << "return unknown" << endl;
                return Ternary::lie;
            }
            else
            {
                return Ternary::truth;
            }
            
                
        }
        else if (nextState.findObject(v.getId()))
        {
            if (nextState.getObject(v.getId()).getV("visible")=="NONE")
            {
                // cout << "return unknown" << endl;
                return Ternary::lie;
            }
            else
            {
                return Ternary::truth;
            }
                 
        }
        // else
        // {
        //     // cout << "check nesting" << endl;
        //     return nextState.checkS(*s.seeing_ptr,v);
        // }
    }



    // for (auto i:s.seeing_ptr->agent_ids)
    // {
        
    //     if (this->findAgent(i))
    //     {
    //         // cout << "agent condition" << endl;
    //         // we used a comment feature to check whether the target agent is visible to our agent,
    //         // and it cannot be location because everyone know others location as assumption
    //         if (this->getAgent(i).getV("secret")=="NONE")
    //             return Ternary::unknown;
    //     } else return Ternary::unknown;


    // }
    return Ternary::truth;
}


// Ternary ProblemState::checkS(Seeing &s)
// {
//     // in this domain sees means knowing whether
//     // for nested seeing relationship
//     // seeing means sees all direct first children agent
//     // and knowing their child's location
//     // since the assumption is location is aware by all agents
//     // only need to check sees children
//     // and the prove for sees that is the agent has non-empty
//     //  range or direction

//     //if the ext sees is a variable, which mean we want to check whether
//     if (s.seeing_ptr->ptr_type == Seeing::VARIABLE&&s.seeing_ptr->seeing_type==Seeing::SV)
//     {
//         // if (s.seeing_ptr->seeing_type == Seeing::DS)
//         // {

//         // }
//         // else if (s.seeing_ptr->seeing_type == Seeing::CS)
//         // {

//         // }
//         // else if (s.seeing_ptr->seeing_type == Seeing::ES)
//         // {

//         // }
//         // else if (s.seeing_ptr->seeing_type == Seeing::SV)













//         for (auto i:s.agent_ids)
//         {
//             if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::DS)
//             {
//                 Agent a = this->getAgent(i);
//                 if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
//                 {
//                     Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
//                     if (a.seesAgent(target)) return Ternary::truth;
//                 }
//                 else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
//                 {
//                     Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
//                     if (a.seesObject(target)) return Ternary::truth;
//                 }
//                 else return Ternary::unknown;
//             }
//             else if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::CS)
//             {
//                 Agent a = this->getAgent(i);
//                 if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
//                 {
//                     Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
//                     if (!a.seesAgent(target)) return false;
//                 }
//                 else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
//                 {
//                     Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
//                     if (!a.seesObject(target)) return false;
//                 }
//                 else return Ternary::truth;
//             }
//             else if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::ES)
//             {
//                 Agent a = this->getAgent(i);
//                 if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
//                 {
//                     Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
//                     if (!a.seesAgent(target)) return false;
//                 }
//                 else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
//                 {
//                     Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
//                     if (!a.seesObject(target)) return false;
//                 }
//                 else return true;
//             }
//             else if (this->findAgent(i) && s.seeing_ptr->seeing_type == Seeing::SV)
//             {
// //                Agent a = this->getAgent(i);
// //                if (this->findAgent(s.seeing_ptr->variable_ptr->getId()))
// //                {
// //                    Agent target = this->getAgent(s.seeing_ptr->variable_ptr->getId());
// //                    if (!a.seesAgent(target)) return false;
// //                }
// //                else if (this->findObject(s.seeing_ptr->variable_ptr->getId()))
// //                {
// //                    Object target = this->getObject(s.seeing_ptr->variable_ptr->getId());
// //                    if (!a.seesObject(target)) return false;
// //                }
// //                else return true;
//             }
//             // if agent is not in the
//             else
//             {
//                 return Ternary::unknown;
//             }
            
//         }
//         return false;
//     }

//     for (auto i:s.seeing_ptr->agent_ids)
//     {
//         if (this->findAgent(i))
//         {
//             if (this->getAgent(i).getV("range")=="")
//                 return false;
//         } else return false;


//     }
//     return Ternary::truth;
// }

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

#endif //SIM_GEN_DOMAIN_H

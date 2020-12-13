//
// Created by ghu1 on 21/08/18.
//

#include "epistemic_checker.hxx"
#include "domain.hxx"
#include <string>
#include <iostream>

using namespace std;



list<Query> q_buff;
list<Seeing> s_buff;
list<Knowledge> k_buff;
list<Variable> v_buff;



ProblemState* state_ptr;
//Query* query_ptr;

void transQs(string query_str)
{
    vector<string> query_list = split(query_str,'|');
    for (auto i: query_list)
    {
        q_buff.push_back(*transQ(i));
    }

}

int check_epistemic(string str)
{

    vector<Agent> agents;
    vector<Object> objects;

    //cout << "\n\nStep 1:\n";
    //cout << "Divided state, facts and query\n";
    vector<string> state_query = split(str,'/');
    string state_str = state_query.at(1);
    //string facts_str =  state_query.at(3);
    string query_str = state_query.at(3);

    //cout << "\n\nStep 2:\n";
    //cout << "Divided agent and variable\n";
    vector<string> state_list = split(state_str,' ');
    string agent_str = state_list.at(1);
    string target_str = state_list.at(3);

    //cout << "\n\nStep 3:\n";
    //cout << "Divided agent string and translate agents\n";
    vector<string> agent_list = split(agent_str,'|');
    //print_list(agent_list);
    for (auto i : agent_list)
    {

        agents.push_back(translate<Agent>(i));
    }


    //cout << "Step 4:\n";
    //cout << "Divided target string and translate objects\n";
    vector<string> target_list = split(target_str,'|');
    for (auto i:target_list)
    {
        objects.push_back(translate<Object>(i));
    }


    //cout << "Step 5:\n";
    //cout << "Generate ProblemState: \n";
    state_ptr = new ProblemState(agents,objects);
    //cout << state_ptr->show()<< endl;

    //cout << "Step 6:\n";
    //cout << "Generate Query: \n";
//    vector<string> agent_id;
//    agent_id.push_back("sre");
//    agent_id.push_back("sre");
//    Knowledge k1= Knowledge(true,"ek","variable",agent_id);
//    Variable v1 = Variable("1","2","3");
//    cout << "show variable: "<< v1.show()<<endl;
//    k1.variable_ptr = &v1;
//    cout << "show knowledge:" << k1.show()<<endl;

    transQs(query_str);
    // cout <<"query done"<<endl;
    // for (auto i: q_buff)
    // {
    //     cout <<"Query is: " << i.show()<< endl;
    // }



    //cout << "Step 7:\n";
    //cout << "tranform k to s list:\n";
    list<Seeing*> s_ptr_list;
    for (auto i: q_buff)
    {
        
        if (i.query_type==Query::KNOWLEDGE)
        {
            s_ptr_list = i.knowledge_ptr->KtoS();
        }
        else
        {
            s_ptr_list.push_back(i.seeing_ptr);
        }

        //for (auto i : s_ptr_list)
        //{
            //cout << i->show() <<endl;
        //}
        //cout << "Step 8:\n";
        //cout << "checking s list:\n";

        //cout << "global state" << state_ptr->show() << endl;
        //cout << "a state" << state_ptr->getAgentState(agents.front()).show() << endl;
        //cout << "b state" << state_ptr->getAgentState(agents.back()).show() << endl;
    }
    // cout << "print all seeing" << endl;
    // for (auto i: s_ptr_list)
    // {
    //     cout <<"Seeing is: " << i->show()<< endl;
    // }


    int result=0;
    for (auto i : s_ptr_list)
    {
        // int temp=0;
        // if (i->ptr_type==Seeing::VARIABLE)
        // {
        //     ProblemState temp_s=i->getState(*state_ptr);
        //     cout << "state is: "<<temp_s.show()<<endl;
        //     cout << "variable is: "<<i->variable_ptr->show()<<endl;
        //     temp=temp_s.checkV(*i->variable_ptr);
        //     cout << temp << endl;
        // }
        //     //temp=i->getState(*state_ptr).checkV(*i->variable_ptr);
        // else
        // {
        //     ProblemState temp_s=i->getState(*state_ptr);
        //     cout << "state is: "<<temp_s.show()<<endl;
        //     cout << "seeing is: "<<i->seeing_ptr->show()<<endl;
        //     temp=temp_s.checkS(*i);
        //     cout << temp << endl;
        // }

        Variable* vp = i->getTVP();
        Ternary temp=state_ptr->checkS(*i, *vp);
        // cout << "temp is " << temp << endl;

        // priority of the result unknown > lie > truth
        result = max(result,int(temp));
    }



//
//    vector<string> agent_ids;
//    for(auto i: agents)
//    {
//        agent_ids.push_back(i.getId());
//    }
//
//
//    Seeing s1(true,"es","variable",agent_ids);
//    Seeing s2(true,"ds","variable",agent_ids);
//    Seeing s3(true,"cs","variable",agent_ids);
//
//    cout << "show state"<<endl;
//
//    cout << "es state" << s1.getState(*state_ptr).show() << endl;
//    cout << "ds state" << s2.getState(*state_ptr).show() << endl;
//    cout << "cs state" << s3.getState(*state_ptr).show() << endl;


    // cout << "global state" << state_ptr->show() << endl;



    // //State<int,int>* state;
    // if(result!=1) 
    // cout << "final result is "<< result << endl;

    q_buff.clear();
    return result;
}


//-----------------------------------------------
// translate string
//
template <typename T>
T translate(string str)
{

    vector<string> details= split(str,';');
    auto item = new T(details.front());
    details.erase(details.begin());
    for (auto i : details)
    {
        vector<string> variable= split(i,':');
        item->addVariable(variable.front(),variable.at(1));
    }
    return *item;
}

//need more work on negation
Seeing* transS(vector<string> details)
{
    //print_list(details);
    bool negation = false;
    if (details.front() == "!")
    {
        negation = true;
        details.erase(details.begin());
    }
    //cout << "Check for negation"<<endl;

    string seeing_type_str = details.front();
    details.erase(details.begin());
    //cout << "This seeing_type_str" << seeing_type_str <<endl;
    vector<string> agent_ids = split(details.front(),',');
    details.erase(details.begin());

    string ptr_type_str;
    if (details.front() == "!") ptr_type_str = *next(details.begin());
    else ptr_type_str = details.front();



    Seeing* cur_ptr;

    //cout << "This is ptr_type_str" << ptr_type_str <<endl;
    if (ptr_type_str == "ck" || ptr_type_str == "ek" || ptr_type_str == "dk")
        throw runtime_error("Seeing cannot contain knowledge! Invalid query!");
        // if seeing about another seeing
    else if (ptr_type_str == "es" || ptr_type_str == "ds" || ptr_type_str == "cs")
    {
        s_buff.emplace_back(negation,seeing_type_str,"seeing",agent_ids);
        cur_ptr = &(s_buff.back());
        cur_ptr -> seeing_ptr = transS(details);
    }
    else // seeing a variable
    {

        s_buff.emplace_back(negation,seeing_type_str,"seeing",agent_ids);
        cur_ptr = &(s_buff.back());
        vector<string> agents;
        s_buff.emplace_back(negation,"sv","variable",agents);
        cur_ptr->seeing_ptr =  &(s_buff.back());

        vector<string> var_list = split(details.at(0),':');
        Variable target_var(var_list.at(1),"",var_list.at(0));
        v_buff.push_back(target_var);
        s_buff.back().variable_ptr = &(v_buff.back());
    }
    return cur_ptr;
}




Knowledge* transK(vector<string> details)
{
    //cout << "translating knowledge:\n";
    //print_list(details);
    bool negation = false;
    if (details.front() == "!")
    {
        negation = true;
        details.erase(details.begin());
    }

    string knowledge_type_str = details.front();

    details.erase(details.begin());

    vector<string> agent_ids = split(details.front(),',');
    details.erase(details.begin());

    string ptr_type_str;
    if (details.front() == "!") ptr_type_str = *next(details.begin());
    else ptr_type_str = details.front();
    //cout << ptr_type_str << endl;



    Knowledge* cur_ptr;
    if (ptr_type_str == "ck" || ptr_type_str == "ek" || ptr_type_str == "dk")
    {

        k_buff.emplace_back(negation,knowledge_type_str,"knowledge",agent_ids);
        cur_ptr = &k_buff.back();
        cur_ptr->knowledge_ptr = transK(details);
    }
    else if (ptr_type_str == "es" || ptr_type_str == "ds" || ptr_type_str == "cs")
    {
        k_buff.emplace_back(negation,knowledge_type_str,"seeing",agent_ids);
        cur_ptr = &k_buff.back();
        cur_ptr -> seeing_ptr = transS(details);
    }
    else // knowing a variable
    {
        k_buff.emplace_back(negation,knowledge_type_str,"variable",agent_ids);
        cur_ptr = &k_buff.back();
        vector<string> var_list = split(details.at(0),':');
        v_buff.emplace_back(var_list.at(1),var_list.at(2),var_list.at(0));
        cur_ptr->variable_ptr = &v_buff.back();
    }

    return cur_ptr;
}


Query* transQ(string query_str)
{
    vector<string> query_list = split(query_str,' ');
    string flag;
    if (query_list.front() == "!") flag = query_list.at(1);
    else flag = query_list.at(0);


    Query* query_ptr;
    if (flag == "ck" || flag == "ek" || flag == "dk")
    {
        query_ptr = new Query("knowledge");
        query_ptr->knowledge_ptr = transK(query_list);
    }
    else if (flag == "es" || flag == "ds" || flag =="cs")
    {
        query_ptr = new Query("seeing");
        query_ptr -> seeing_ptr = transS(query_list);
    }
    return query_ptr;
}


list<Seeing*> Knowledge::KtoS()
{
    list<Seeing*> result;
    string ptr_type_str;
    string seeing_type_str;

    switch(this->knowledge_type)
    {
        case EK:
            seeing_type_str = "es";
            break;
        case CK:
            seeing_type_str = "cs";
            break;
        case DK:
            seeing_type_str = "ds";
            break;
    }
    switch(this->ptr_type)
    {
        case SEEING:

            s_buff.emplace_back(this->negation,seeing_type_str,"seeing",this->agent_ids);
            s_buff.back().seeing_ptr = this -> seeing_ptr;
            result.push_back(&s_buff.back());
            result.push_back(this->seeing_ptr);
            break;
        case KNOWLEDGE:

            for(auto i: this->knowledge_ptr->KtoS())
            {
                s_buff.emplace_back(this->negation,seeing_type_str,"seeing",this->agent_ids);
                s_buff.back().seeing_ptr = i;
                result.push_back(&s_buff.back());
                result.push_back(i);
            }
            break;
        case VARIABLE:
            s_buff.emplace_back(false,seeing_type_str,"seeing",this->agent_ids);

            Seeing* temp = &s_buff.back();
            result.push_back(temp);
            s_buff.emplace_back(false,"sv","variable",this->agent_ids);
            s_buff.back().variable_ptr=this->variable_ptr;
            result.push_back(&s_buff.back());
            temp->seeing_ptr=&s_buff.back();
            break;

    }
    return result;


}






//--------------------------------------------------------
// handling states
//
Agent mergingAgent(bool uni,Agent &a1,Agent &a2)
{
    Agent result_agent(a1.getId());
    if (uni)
    {
        for (auto i: a1.variables)
        {
            string temp = a2.getV(i.getName());
            if(temp != "NONE")
            {
                if(temp != "") result_agent.addVariable(i.getName(),temp);
                //else result_agent.addVariable(i.getName(),i.getValue());
            }
            else result_agent.addVariable(i.getName(),i.getValue());
        }
    }else
    {
        for (auto i: a1.variables)
        {
            string temp = a2.getV(i.getName());
            if(temp != "NONE")
            {
                if(temp != "") result_agent.addVariable(i.getName(),i.getValue());
                else result_agent.addVariable(i.getName(),temp);
                //else result_agent.addVariable(i.getName(),i.getValue());
            }
        }
    }
    return result_agent;
}

Object mergingObject(bool uni,Object &o1,Object &o2)
{
    Object result_object(o1.getId());
    if (uni)
    {
        for (auto i: o1.variables)
        {
            string temp = o2.getV(i.getName());
            if(temp != "NONE")
            {
                if(temp != "") result_object.addVariable(i.getName(),temp);
                //else result_agent.addVariable(i.getName(),i.getValue());
            }
            else result_object.addVariable(i.getName(),i.getValue());
        }
    }else
    {
        for (auto i: o1.variables)
        {
            string temp = o2.getV(i.getName());
            if(temp != "NONE")
            {
                if(temp != "") result_object.addVariable(i.getName(),i.getValue());
                else result_object.addVariable(i.getName(),temp);
                //else result_agent.addVariable(i.getName(),i.getValue());
            }
        }
    }
    return result_object;
}

ProblemState mergingState(bool uni,ProblemState s1,ProblemState s2)
{
    vector<Agent> result_agents;
    vector<Object> result_objects;
    for (auto i: *s1.getAgents())
    {
        for(auto j: *s2.getAgents())
        {
            if (i.getId()==j.getId())
                result_agents.push_back(mergingAgent(uni,i,j));
        }
    }
    for (auto i: *s1.getObjects())
    {
        for(auto j: *s2.getObjects())
        {
            if (i.getId()==j.getId())
                result_objects.push_back(mergingObject(uni,i,j));
        }
    }
    ProblemState new_state(result_agents,result_objects);
    return new_state;
}

ProblemState Seeing::getState(ProblemState s)
{
    // cout<<"get in getState:" <<agent_ids.front() << endl;
    if (!s.findAgent(agent_ids.front()))
    {
        //assert("agent id error on get state");

    }
    else
    {
        // cout << "before state: "<< s.show() << endl;
        ProblemState result_state = s.getAgentState(s.getAgent(agent_ids.front()));
        // cout << "agent's state: " << result_state.show() << endl;
        //cout<<"get in agent state" << endl;
        if (agent_ids.size()==1)
        {
            //cout<<"size one" << endl;
            // cout << "result state" << result_state.show() << endl;
            return result_state;
        }
        else
        {
            //agent_ids.erase(agent_ids.begin());
            if (this->seeing_type == ES)
            {
                //cout<<"get in es" << endl;
                for (auto i:agent_ids)
                {
                    Agent t_agt = s.getAgent(i);
                    //if (t_agt!=NULL)
                    {
                        result_state = mergingState(false,result_state,s.getAgentState(t_agt));
                    }
                }
            }
            else if (this->seeing_type == DS)
            {
                //cout<<"get in ds" << endl;
                for (auto i:agent_ids)
                {
                    Agent t_agt = s.getAgent(i);
                    //if (t_agt!=NULL)
                    {
                        result_state = mergingState(true,result_state,s.getAgentState(t_agt));
                    }
                }
            }
                //changed
            else if (this->seeing_type == CS)
            {
                //cout<<"get in cs" << endl;
                ProblemState temp_state =s;
                while(!result_state.compare(temp_state))
                {
                    temp_state=result_state;
                    for (auto i:agent_ids)
                    {
                        Agent t_agt = s.getAgent(i);
                        //if (t_agt!=NULL)
                        {
                            result_state = mergingState(false,result_state,temp_state.getAgentState(t_agt));
                        }
                    }

                }
            }
        }
        // cout << "result state" << result_state.show() << endl;
        return result_state;
    }




}

bool ProblemState::compare(ProblemState &s)
{

//    if (this->getAgents()->size()!=s.getAgents()->size())
//        return false;
//    if (this->getObjects()->size()!=s.getObjects()->size())
//        return false;
//
//    for (auto i:*s.getAgents())
//    {
//        bool flag = false;
//        for (auto j:*this->getAgents())
//        {
//            if (i.compareAgent(j))
//            {
//                flag=true;
//                break;
//            }
//        }
//        if(!flag)
//            return false;
//    }
    return !this->show().compare(s.show());
}

Ternary ProblemState::checkV(Variable &v)
{

    for (auto i:this->agents)
    {
        if (v.sameId(i.getId()))
        {
            for (auto j: i.variables)
            {
                if (v.sameName(j.getName()))
                {
                    if(v.getValue()!="")
                    {
                        if (v.sameValue(j.getValue())) return Ternary::truth;
                        else return Ternary::lie;
                    }
                    else return Ternary::unknown;
                }

            }
            //find the agent, but agent don't have that variable
            return Ternary::unknown;
        }
    }
    for(auto i:this->objects)
    {
        if (v.sameId(i.getId()))
        {
            for (auto j: i.variables)
            {
                    if(v.getValue()!="")
                    {
                        if (v.sameValue(j.getValue())) return Ternary::truth;
                        else return Ternary::lie;
                    }
            }
            //find the object, but object don't have that variable
            return Ternary::unknown;
        }
    }
    return Ternary::unknown;
}

Ternary ProblemState::checkS(Seeing &s, Variable &v)
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
                // cout << "value in state: " << this->getObject(v.getId()).getV(v.getName()) << endl;
                // cout << "value in variable: " << v.getValue() << endl;
                if (this->getObject(v.getId()).getV(v.getName())!=v.getValue())
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

        return Ternary::truth;
    };

//-------------------------------------------------------
// Helper functions
//
vector<string> split(string line, char token)
{
    vector<string> result;
    string temp = "";
    for (int i=0; i< line.length();i++)
    {
        if (line.at(i)==token)
        {
            result.push_back(temp);
            //cout << temp << "\n";
            temp="";
        }
        else
        {
            temp.push_back(line.at(i));
        }
    }
    result.push_back(temp);
    return result;
}

void print_list(vector<string> list)
{
    for (auto i:list)
    {
        cout << i << endl;
    }
}


#include "external.hxx"
#include <constraints/registry.hxx>
#include <tuple>
#include <lapkt/tools/logging.hxx>
#include <boost/filesystem.hpp>
#include <fstream>
#include <sstream>
#include <iostream>
#include <map>

#include <string>
#include <list>
#include <glob.h>
#include <boost/algorithm/string.hpp>

#include "translating.hxx"
#include "epistemic_checker.hxx"
#include <lapkt/tools/resources_control.hxx>


#define PI 3.1415926
#define AGENT_NUMBER 3
#define POWER 9
#define DEPTH 2

namespace boost_fs = boost::filesystem;

using namespace std;



External::External( const ProblemInfo& info, const std::string& data_dir )
{
    float cur_time = aptk::time_used();
    initial();
    initial_time = aptk::time_used()-cur_time;
    counter = 0;
}

External::~External() {
    cout << "[INFO][Function] Number of calling: " << counter << endl;
    cout << "[INFO][Function] Initial Time: " << initial_time << endl;
    cout << "[INFO][Function] Total Checking Time: " << time_counter << endl;
    ofstream myfile;
    myfile.open("running.txt");
    myfile << "[INFO][Function] Number of calling: " << counter << endl;
    myfile << "[INFO][Function] Initial Time: " << initial_time << endl;
    myfile << "[INFO][Function] Total Checking Time: " << time_counter << endl;
    myfile.close();

}


void External::registerComponents() const {
    //LPT_DEBUG("pacman", "Registering Components...");
    LogicalComponentRegistry::instance().
        addTermCreator( "@update", [](const std::vector<const fs::Term*>& subterms){ return new UpdateTerm(subterms); });
    LogicalComponentRegistry::instance().
        addTermCreator( "@translate", [](const std::vector<const fs::Term*>& subterms){ return new TranslateTerm(subterms); });
    LogicalComponentRegistry::instance().
        addTermCreator( "@check", [](const std::vector<const fs::Term*>& subterms){ return new CheckTerm(subterms); });

}

ObjectIdx
External::update(const std::vector<ObjectIdx>& args )  {
    //cout << "------------------updating" << endl;
    float cur_time = aptk::time_used();
    counter++;
    ObjectIdx agent_input = args[0];
    ObjectIdx state_input_a = args[1];
    ObjectIdx state_input_b = args[2];
    ObjectIdx state_input_c = args[3];
    int state_a = state_input_a;
    int state_b = state_input_b;
    int state_c = state_input_c;
    int a1,a2;
    bool ra = false;
    bool rb = false;
    bool rc = false;

    if (agent_input == 1)
    {
        a1 = 0;
        a2 = 1;
        ra = true;
    }
    else if (agent_input == 2)
    {
        a1 = 0;
        a2 = 1;
        rb = true;
    }
    else if (agent_input == 3)
    {
        a1 =0;
        a2 =1;
        rc = true;
    }
    else if (agent_input == 4)
    {
        a1 = 0;
        a2 = 2;
        ra = true;
    }
    else if (agent_input == 5)
    {
        a1 = 0;
        a2 = 2;
        rb = true;
    }
    else if (agent_input == 6)
    {
        a1 =0;
        a2 =2;
        rc = true;
    }
    else if (agent_input == 7)
    {
        a1 = 1;
        a2 = 2;
        ra = true;
    }
    else if (agent_input == 8)
    {
        a1 = 1;
        a2 = 2;
        rb = true;
    }
    else if (agent_input == 9)
    {
        a1 =1;
        a2 =2;
        rc = true;
    }
    
    

    int state_array_a[POWER];
    int state_array_b[POWER];
    int state_array_c[POWER];

    for (int i = POWER -1; i>=0;i--)
    {
        if(state_a!=0)
        {
            state_array_a[i] = state_a % 2;
            state_a = state_a /2;
        }
        else
        {
            state_array_a[i] = 0;
        }
    }
    for (int i = POWER -1; i>=0;i--)
    {
        if(state_b!=0)
        {
            state_array_b[i] = state_b % 2;
            state_b = state_b /2;
        }
        else
        {
            state_array_b[i] = 0;
        }
    }
    for (int i = POWER -1; i>=0;i--)
    {
        if(state_c!=0)
        {
            state_array_c[i] = state_c % 2;
            state_c = state_c /2;
        }
        else
        {
            state_array_c[i] = 0;
        }
    }

    // cout << "This is the result a string: ";
    // for (auto i : state_array_a)
    // {
    //     cout << i;
    // }
    // cout << endl;
    // cout << "This is the result b string: ";
    // for (auto i : state_array_b)
    // {
    //     cout << i;
    // }
    // cout << endl;
    // cout << "This is the result c string: ";
    // for (auto i : state_array_c)
    // {
    //     cout << i;
    // }
    // cout << endl;



    for (int d = 1; d < DEPTH;d++)
    {
        int a1_min=POWER/AGENT_NUMBER*a1,a1_max=POWER/AGENT_NUMBER*a1,a2_min=POWER/AGENT_NUMBER*a2,a2_max=POWER/AGENT_NUMBER*a2;
        int temp_min = POWER/AGENT_NUMBER;
        for (int temp_d = 1; temp_d < DEPTH - d ;temp_d++)
        {
            temp_min = temp_min/AGENT_NUMBER;
            a1_min=a1_min+a1*temp_min;
            a2_min=a2_min+a2*temp_min;
        }
        //a1_max = a1_min +temp_min;
        //a2_max = a2_min +temp_min;

        //cout << "current bound for a1: " <<a1_min << " to "<<a1_max << endl;
        //cout << "current bound for a2: " <<a2_min << " to "<<a2_max << endl;

        // update
        for (int i = 0; i< temp_min;i++)
        {
            if (a1 == 0 && state_array_a[a1_min+i]==1)
            {
                if (a2 == 1) state_array_b[a2_min+i] =1;
                else state_array_c[a2_min+i] =1;
            }
            else if (a1 == 1 && state_array_b[a1_min+i]==1)
            {
                if (a2 == 0) state_array_a[a2_min+i] =1;
                else state_array_c[a2_min+i] =1;
            }
            else if (a1 ==2 && state_array_c[a1_min+i]==1)
            {
                if (a2 == 0) state_array_a[a2_min+i] =1;
                else state_array_b[a2_min+i] =1;
            }

            if (a2 == 0 && state_array_a[a2_min+i]==1)
            {
                if (a1 == 1) state_array_b[a1_min+i] =1;
                else state_array_c[a1_min+i] =1;
            }
            else if (a2 == 1 && state_array_b[a2_min+i]==1)
            {
                if (a1 == 0) state_array_a[a1_min+i] =1;
                else state_array_c[a1_min+i] =1;
            }
            else if (a2 ==2 && state_array_c[a2_min+i]==1)
            {
                if (a1 == 0) state_array_a[a1_min+i] =1;
                else state_array_b[a1_min+i] =1;
            }
        }
    }

        for (int i=0;i< POWER;i++)
    {
        if (a1 == 0 && state_array_a[i]==1)
        {
            if (a2 == 1) state_array_b[i] =1;
            else state_array_c[i] =1;
        }
        else if (a1 == 1 && state_array_b[i]==1)
        {
            if (a2 == 0) state_array_a[i] =1;
            else state_array_c[i] =1;
        }
        else if (a1 ==2 && state_array_c[i]==1)
        {
            if (a2 == 0) state_array_a[i] =1;
            else state_array_b[i] =1;
        }

        if (a2 == 0 && state_array_a[i]==1)
        {
            if (a1 == 1) state_array_b[i] =1;
            else state_array_c[i] =1;
        }
        else if (a2 == 1 && state_array_b[i]==1)
        {
            if (a1 == 0) state_array_a[i] =1;
            else state_array_c[i] =1;
        }
        else if (a2 ==2 && state_array_c[i]==1)
        {
            if (a1 == 0) state_array_a[i] =1;
            else state_array_b[i] =1;
        }
    }










    int base =1;
    int result = 0;
    if (ra)
    {
        for (int i=pow(AGENT_NUMBER,DEPTH)-1;i>=0;i--)
        {
            if (state_array_a[i]==1)
            {
                result = result + base;
            }
            base = base * 2;
        }
    }
    else if (rb)
    {
        for (int i=pow(AGENT_NUMBER,DEPTH)-1;i>=0;i--)
        {
            if (state_array_b[i]==1)
            {
                result = result + base;
            }
            base = base * 2;
        }
    }
    else if (rc)
    {
        for (int i=pow(AGENT_NUMBER,DEPTH)-1;i>=0;i--)
        {
            if (state_array_c[i]==1)
            {
                result = result + base;
            }
            base = base * 2;
        }
    }

    ObjectIdx count = result;
    time_counter = time_counter + aptk::time_used() - cur_time;
    return count;
}

ObjectIdx
External::translate(const std::vector<ObjectIdx>& args )  {
    // float cur_time = aptk::time_used();

    // //this->m_callCounter++;
    // counter++;

    // ObjectIdx room_id = args[0];
    // ObjectIdx query_id = args[1];
    int result = 1;
    // ObjectIdx room_id = args[0];
    // ObjectIdx query_id = args[1];
    ObjectIdx count = result;
    return count;
}

ObjectIdx
External::check(const std::vector<ObjectIdx>& args )  {
    cout << "------------------checking" << endl;

    ObjectIdx state_input = args[0];
    ObjectIdx query_input = args[1];

    int state = state_input;
    int state_temp = state;
    int query_id_int = query_input;

    //cout << "This is state: " << state  << endl;
    //cout << "This is queryid: " << query_input  << endl;
    string query_id_str = pddl_objects.find(query_id_int)->second;



    

    int state_array[POWER];

    for (int i=pow(AGENT_NUMBER,DEPTH)-1;i>=0;i--)
    {
        if(state_temp!=0)
        {
            state_array[i] = state_temp % 2;
            state_temp = state_temp /2;
        }
        else
        {
            state_array[i] = 0;
        }
    }
    // ObjectIdx room_id = args[0];
    // ObjectIdx query_id = args[1];

    int agent_temp[DEPTH]={1,1};
    for (auto i: state_array)
    {
        if (agent_temp[1]==AGENT_NUMBER+1)
        {
            agent_temp[0]++;
            agent_temp[1]=1;
        }

        if(state1->changeObjectV("k"+to_string(agent_temp[0])+"s"+to_string(agent_temp[1]),"value",to_string(i)))
        {
            //cout << "changed" << endl;
        }

        agent_temp[1]++;
    }


    string output;
    output.append(state1->print());
    //cout << "Step 3" <<endl;
    output.append("/query:/");
    output.append(queries.find(query_id_str)->second);
    cout << output << endl;
    int result1=0;
    if (check_epistemic(output))
    {
        result1=1;
    }
    else
    {
        result1=0;
    }
    
    ObjectIdx count = result1;
    return count;
}




ObjectIdx
External::update(const State& state, const std::vector<ObjectIdx>& args ) const {
    return update(args);
}


UpdateTerm::UpdateTerm( const std::vector< const fs::Term*>& subterms )
        : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@update" ), subterms ),
        _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
{
        //assert( subterms.size() == 6);//what is this for?
}

UpdateTerm*
UpdateTerm::clone( const std::vector<const fs::Term*>& subterms) const {
        return new UpdateTerm( subterms );
}

ObjectIdx
UpdateTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
        LPT_DEBUG("pacman", "Invoked UpdateCommonTerm::compute()");
        return _external.update( state, arguments );
}

// translate
ObjectIdx
External::translate(const State& state, const std::vector<ObjectIdx>& args ) const {
    return translate(args);
}


TranslateTerm::TranslateTerm( const std::vector< const fs::Term*>& subterms )
        : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@translate" ), subterms ),
        _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
{
        //assert( subterms.size() == 6);//what is this for?
}

TranslateTerm*
TranslateTerm::clone( const std::vector<const fs::Term*>& subterms) const {
        return new TranslateTerm( subterms );
}

ObjectIdx
TranslateTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
        //LPT_DEBUG("pacman", "Invoked UpdateCommonTerm::compute()");
        return _external.translate( state, arguments );
}

// check
ObjectIdx
External::check(const State& state, const std::vector<ObjectIdx>& args ) const {
    return check(args);
}


CheckTerm::CheckTerm( const std::vector< const fs::Term*>& subterms )
        : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check" ), subterms ),
        _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
{
        //assert( subterms.size() == 6);//what is this for?
}

CheckTerm*
CheckTerm::clone( const std::vector<const fs::Term*>& subterms) const {
        return new CheckTerm( subterms );
}

ObjectIdx
CheckTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
        //LPT_DEBUG("pacman", "Invoked UpdateCommonTerm::compute()");
        return _external.check( state, arguments );
}

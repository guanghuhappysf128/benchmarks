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
#define POWER 27
#define DEPTH 3

namespace boost_fs = boost::filesystem;

using namespace std;



External::External( const ProblemInfo& info, const std::string& data_dir )
{
    // float cur_time = aptk::time_used();
    initial();
    // initial_time = aptk::time_used()-cur_time;
    // m_callCounter = 0;
    // counter = 0;
}

External::~External() {
    // //LPT_INFO("External Function Evaluation", "Initial time" << initial_time);
    // cout << "[INFO][Function] Number of calling: " << counter << endl;
    // cout << "[INFO][Function] Initial Time: " << initial_time << endl;
    // cout << "[INFO][Function] Total Checking Time: " << time_counter << endl;
    // //cout << "\n\n\n\nThis is end" << endl;
    // //cout << counter <<endl;

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
    cout << "------------------updating" << endl;
    ObjectIdx agent1_input = args[0];
    ObjectIdx agent2_input = args[1];
    ObjectIdx state_input = args[2];

    int agent1 = agent1_input;
    int agent2 = agent2_input;
    int state = state_input;
    int state_temp = state;

    // cout << "This is agent1: " << agent1 << endl;
    // cout << "This is agent2: " << agent2  << endl;
    // cout << "This is state: " << state  << endl;

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
    // cout << "This is the result string: ";
    // for (auto i : state_array)
    // {
    //     cout << i;
    // }
    // cout << endl;

    for (int i = 0; i<pow(AGENT_NUMBER,(DEPTH-1)) ;i++)
    {
        if (state_array[i+(agent1-1)*AGENT_NUMBER]==1) state_array[i+(agent2-1)*AGENT_NUMBER] =1;
        if (state_array[i+(agent2-1)*AGENT_NUMBER]==1) state_array[i+(agent1-1)*AGENT_NUMBER] =1;
    }

    // cout << "Updated array: ";
    // for (auto i : state_array)
    // {
    //     cout << i;
    // }
    // cout << endl;
    //translate back

    int base =1;
    int result = 0;
    for (int i=pow(AGENT_NUMBER,DEPTH)-1;i>=0;i--)
    {
        if (state_array[i]==1)
        {
            result = result + base;
        }
        base = base * 2;
    }
    ObjectIdx count = result;
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

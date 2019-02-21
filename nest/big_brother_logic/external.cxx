#include "external.hxx"
#include <constraints/registry.hxx>
#include <tuple>
#include <lapkt/tools/logging.hxx>
#include <boost/filesystem.hpp>
#include <fstream>
#include <sstream>
#include <cmath>
#include <iostream>
#include "translating.hxx"
#include "epistemic_checker.hxx"

#include <lapkt/tools/resources_control.hxx>



#include <string>
#include <list>
// #include <regex>
#include <glob.h>
#include <boost/algorithm/string.hpp>



#define PI 3.1415926
#define AGNET_NUMBER 2

namespace boost_fs = boost::filesystem;

using namespace std;



External::External( const ProblemInfo& info, const std::string& data_dir ) //:

{
    float cur_time = aptk::time_used();
    initial();
    m_callCounter = 0;
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
    LPT_DEBUG("pacman", "Registering Components...");
    LogicalComponentRegistry::instance().

        addTermCreator( "@check1", [](const std::vector<const fs::Term*>& subterms){ return new Check1Term(subterms); });
}



ObjectIdx
External::check1(const std::vector<ObjectIdx>& args ) {

    float cur_time = aptk::time_used();
    counter++;

    cout<<"get in check1"<<endl;
    //cout << "Step 1" <<endl;
    ObjectIdx camera1_x = args[0];
    ObjectIdx camera1_y = args[1];
    ObjectIdx camera1_dir = args[2];
    ObjectIdx query_id = args[3];

    int query_id_int = query_id;
    string location_str="";
    string direction_str;
    direction_str = to_string(camera1_dir);
    location_str += to_string(camera1_x);
    location_str += ",";
    location_str += to_string(camera1_y);

    string query_id_str = pddl_objects.find(query_id_int)->second;
    //cout << "Step 1" <<endl;
    if (state1==NULL) assert ("pointer not ready");


    LPT_DEBUG("checking", "argument1 :" << camera1_x << "");
    LPT_DEBUG("checking", "argument2 :" << camera1_y << "");
    LPT_DEBUG("checking", "argument3 :" << camera1_dir << "");
    LPT_DEBUG("checking", "argument4 :" << query_id << "");
    LPT_DEBUG("checking", "argument4 :" << location_str << "");
    //cout << "This is location string" << location_str << endl;
    //cout << "Step 2" <<endl;
    // string output;
    // output.append("state:/agents: ");
    // std::_List_const_iterator<External::agent> i = agents.begin();
    // //output.append(i->name);
    // //output.append(";id:");
    // output.append(i->id);
    // output.append(";location:");
    // output.append(to_string((int)camera1_x));
    // output.append(",");
    // output.append(to_string((int)camera1_y));
    // output.append(";direction:");
    // output.append(to_string((int)camera1_dir));
    // output.append(";range:");
    // output.append(i->range);
    // output.append("|");
    // //cout << "Step 3" <<endl;
    string output;
    if (!state1->findAgent(agent_name))
    {
        //cout << "Agent not found" <<endl;
        assert ("agent not found on checking");
    }
    else
    {
        //cout << "Agent found" <<endl;
        if (!state1->changeAgentV(agent_name,"location",location_str))
        {
            assert ("change agent location not found on checking");
        }
        if (!state1->changeAgentV(agent_name,"direction",direction_str))
        {
            assert ("change agent location not found on checking");
        }

    }
    //cout << "Step 2" <<endl;



    // for (std::_List_const_iterator<External::agent> i = agents.begin() ; i!=agents.end();++i)
    // {
    //   if (i == agents.begin())
    //   {

    //   }
    //   else
    //   {
    //     //output.append(i->name);
    //     //output.append(";id:");
    //     output.append(i->id);
    //     output.append(";location:");
    //     output.append(i->x);
    //     output.append(",");
    //     output.append(i->y);
    //     output.append(";direction:");
    //     output.append(i->dir);
    //     output.append(";range:");
    //     output.append(i->range);
    //     output.append("|");
    //   }

    // }
    // //cout << "Step 4" <<endl;

    // output.erase(output.end()-1,output.end());
    // output.append(" variables: ");

    // for (std::_List_const_iterator<External::object> i = objects.begin(); i!=objects.end();++i)
    // {
    //   output.append(i->id);
    //   output.append(";value:");
    //   output.append(i->name);
    //   output.append(";location:");
    //   output.append(i->x);
    //   output.append(",");
    //   output.append(i->y);
    //   output.append("|");
    // }
    // //cout << "Step 5" <<endl;


    // output.erase(output.end()-1,output.end());


    output.append(state1->print());
    //cout << "Step 3" <<endl;
    output.append("/query:/");
    output.append(queries.find(query_id_str)->second);

    //cout << "Step 4" <<endl;


    // for (std::_List_const_iterator<External::query> i = queries.begin(); i!=queries.end();++i)
    // {
    //   if (i-> id == to_string((int)query_id))
    //   {
    //     output.append(i->info);
    //     break;
    //   } 
    // }
    //cout << "Step 6" <<endl;
    LPT_DEBUG("checking", "This is string: " << output << "\n");

    //bool re = writing(output);
    int result1=0;
    //char* query = output.c_str();
    //check2(query, &result1);
    //dlclose(libsim);
    //LPT_DEBUG("checking", "This query is " << result1 << "\n");
    cout << output <<endl;
    if (check_epistemic(output))
    {
      result1=1;
    }
    else
    {
      result1=0;
    }
    cout << "result is " << result1<<endl;
    ObjectIdx count = result1;  
    time_counter = time_counter + aptk::time_used() - cur_time;
    return count;
}




ObjectIdx
External::check1(const State& state, const std::vector<ObjectIdx>& args ) const {
  return check1(args);
}


Check1Term::Check1Term( const std::vector< const fs::Term*>& subterms )
    : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check1" ), subterms ),
    _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
{
    //assert( subterms.size() == 6);//what is this for?
}

Check1Term*
Check1Term::clone( const std::vector<const fs::Term*>& subterms) const {
    return new Check1Term( subterms );
}

ObjectIdx
Check1Term::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
    LPT_DEBUG("pacman", "Invoked CheckCommonTerm::compute()");
    return _external.check1( state, arguments );
}

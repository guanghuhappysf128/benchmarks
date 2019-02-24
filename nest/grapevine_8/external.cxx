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
#define AGNET_NUMBER 4

namespace boost_fs = boost::filesystem;

using namespace std;



External::External( const ProblemInfo& info, const std::string& data_dir )
{
    float cur_time = aptk::time_used();
    initial();
    //cout << "initial success!\n";
    initial_time = aptk::time_used()-cur_time;
    //m_callCounter = 0;
    counter = 0;
}

External::~External() {
    //LPT_INFO("External Function Evaluation", "Initial time" << initial_time);
    cout << "[INFO][Function] Number of calling: " << counter << endl;
    cout << "[INFO][Function] Initial Time: " << initial_time << endl;
    cout << "[INFO][Function] Total Checking Time: " << time_counter << endl;
    //cout << "\n\n\n\nThis is end" << endl;
    //cout << counter <<endl;

}


void External::registerComponents() const {
    LPT_DEBUG("pacman", "Registering Components...");
    LogicalComponentRegistry::instance().
        addTermCreator( "@check", [](const std::vector<const fs::Term*>& subterms){ return new CheckTerm(subterms); });

}

ObjectIdx
External::check(const std::vector<ObjectIdx>& args )  {
        float cur_time = aptk::time_used();
        //this->m_callCounter++;
        counter++;
        //cout << counter << endl;
        //cout << "calling external function"<< endl;
        ObjectIdx agent_num = args[0];
        ObjectIdx room_encoding = args[1];
        ObjectIdx obj_loc = args[2];
        ObjectIdx obj_val = args[3];
        ObjectIdx query_id = args[4];
        int room_encoding_int = room_encoding;
        int obj_loc_int = obj_loc;
        int obj_val_int = obj_val;
        int query_id_int = query_id;
        string query_id_str = pddl_objects.find(query_id_int)->second;
        

        if (state1==NULL) assert ("pointer not ready");

        // LPT_DEBUG("checking", "argument1 :" << room_encoding_int << "");
        // LPT_DEBUG("checking", "argument2 :" << obj_loc_int << "");
        // LPT_DEBUG("checking", "argument3 :" << obj_val_int << "");
        // LPT_DEBUG("checking", "argument4 :" << query_id_int << "");
        // LPT_DEBUG("checking", "argument4 str:" << query_id_str << "");
        // cout << query_id_int << endl;
        // cout << query_id_str << endl;

        int encoding_int=9;
        int num_agt = state1->getAgents()->size();
        int num_obj = state1->getObjects()->size();
        string query_id_str ="p1";

        for (int i = num_obj;i>0;i--)
        {
            if (!state1->findObject("obj_"+to_string(i)))
            {
                //assert ("objects not found with id");
                cout << "obj not found with id " << to_string(i)<<endl;
            }
            else
            {
                cout << "obj found with id " << to_string(i)<<endl;
                if (state1->changeObjectV("obj_"+to_string(i),"belongsto",to_string(encoding_int%(num_agt+1))))
                {
                    cout << "var found with id " << to_string(i)<<endl;
                }
                else
                {
                    cout << "var not found with id " << to_string(i)<<endl;
                   // assert("belongsto not found");
                }
                encoding_int = encoding_int/(num_agt+1);
            }
        }


        string output = state1->print();

        output.append("/query:/");
        output.append(queries.find(query_id_str)->second);
        cout << "check string: \n" << output << endl;
        int result1=1;
        if (check_epistemic(output))
        {
            result1=1;
        }
        else
        {
            result1=0;
        }
        cout << "check result: " << result1 << endl;
        time_counter = time_counter + aptk::time_used() - cur_time;
        return count;
}




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
        LPT_DEBUG("pacman", "Invoked CheckCommonTerm::compute()");
        return _external.check( state, arguments );
}

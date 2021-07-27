#include "external.hxx"
#include <constraints/registry.hxx>
#include <tuple>
#include <lapkt/tools/logging.hxx>
#include <boost/filesystem.hpp>
#include <fstream>
#include <sstream>
#include <iostream>
#include <map>
#include <algorithm>

#include <string>
#include <list>
#include <glob.h>
#include <boost/algorithm/string.hpp>

#include "translating.hxx"
#include "epistemic_checker.hxx"
#include <lapkt/tools/resources_control.hxx>


#define PI 3.1415926
// #define NUM_OF_AGENT 3
// #define POWER 27

#define DEPTH 3

// NUM_OF_AGENT * NUM_OF_AGENT / 2
#define NUM_OF_ACTIONS 6

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
    ObjectIdx happened_input = args[0];
    ObjectIdx action_sequence_input = args[1];

    // update action sequence
    int action_sequence = action_sequence_input;
    int happened = happened_input;
    int action_sequence_result = 0;

    if (happened == 1)
    {
        action_sequence_result = 2* action_sequence + 1;
    }
    else
    {
        action_sequence_result = 2*action_sequence;
    }

    //cout << "This is result after update "<< action_sequence_result << endl;
    ObjectIdx count = action_sequence_result;
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
    //cout << "------------------checking" << endl;
    float cur_time = aptk::time_used();
    counter++;
    ObjectIdx a1_input = args[0];
    ObjectIdx a2_input = args[1];
    ObjectIdx a3_input = args[2];
    ObjectIdx a4_input = args[3];
    ObjectIdx a5_input = args[4];
    ObjectIdx a6_input = args[5];
    ObjectIdx query_input = args[6];
    // cout << "reading argument" << endl;
    ProblemState state_temp = *state1;
    // cout << "init state" << endl;
    int action_sequences[NUM_OF_ACTIONS]={a1_input,a2_input,a3_input,a4_input,a5_input,a6_input};

    if (a1_input+a2_input+a3_input+a4_input+a5_input+a6_input == 0) return 0;

    // cout << "init actions" << endl;
    int query_id_int = query_input;
    // cout << "finding query: " << query_id_int << endl;
    string query_id_str = pddl_objects.find(query_id_int)->second;
    // for (auto elem: pddl_objects)
    // {
    //     cout << elem.first << " "<< elem.second << endl; 
    // }
    // for (auto elem: queries)
    // {
    //     cout << elem.first << " "<< elem.second << endl; 
    // }
    boost::trim_if(query_id_str, boost::is_any_of("\t")); // removes only tabs
    // cout << "find q string with id: " << query_id_str << endl;
    string query_string = queries.find(query_id_str)->second;
    // cout << "find q string: " << query_string << endl;
    

    // boost::trim(s); // removes all leading and trailing white spaces


    vector<string> query_list = split(query_string,'|');
    // print_list(query_list);
    int max_depth =0;
    vector<vector<string>> query_detail_list;
    for (auto i:query_list)
    {
        vector<string> temp = split(i,' ');
        query_detail_list.push_back(temp);
        max_depth = max(max_depth,(int)(temp.size()-1)/2);
        temp.clear();
    }
    query_list.clear();
    // cout << "The max depth is " << max_depth << endl;
    // cout << "Generate actions base on action sequence" << endl;
    vector<int> all_actions_list[NUM_OF_ACTIONS];
    bool flag=true;
    while (flag)
    {
        for (int i=0;i<NUM_OF_ACTIONS;i++)
        {
            all_actions_list[i].push_back(action_sequences[i]%2);
            action_sequences[i] = action_sequences[i]/2;
        }
        flag = false;
        for (int i =0 ; i< NUM_OF_ACTIONS;i++)
        {
            if (action_sequences[i]!=0)
            {
                flag=true;
            }
        }
    }
    // for (auto i: all_actions_list)
    // {
    //     for (auto j: i)
    //     {
    //         cout <<j<< ", ";
    //     }
    //     cout << endl;
    // }

    vector<int> action_sequence_num;
    while (all_actions_list[0].size()!=0) {

        for (int j = 0; j < NUM_OF_ACTIONS; j++) {
            if (all_actions_list[j].back() == 1) {
                action_sequence_num.push_back(j);
            }
            //cout << "back is " << all_actions_list[j].back() << endl;
            all_actions_list[j].pop_back();
        }
    }
    all_actions_list->clear();
    // cout << "szie is " <<action_sequence_num.size()<<endl;

    // cout << "Result is ";
    // for (auto i: action_sequence_num)
    // {
    //     cout << i << ", ";
    // }
    // cout << endl;

    //updating state based on actions and queries
    for (auto action_num:action_sequence_num)
    {


        // cout << "This is action " << action_num << endl;
        // cout << "STATE1 before update: " << state_temp->print() << endl;
        char a1;
        char a2;
        if (action_num == 0)
        {
            a1 = '1';
            a2 = '2';
        } 
        else if (action_num == 1)
        {
            a1 = '1';
            a2 = '3';
        }
        else if (action_num == 2)
        {
            a1 = '1';
            a2 = '4';
        }
        else if (action_num == 3)
        {
            a1 = '2';
            a2 = '3';
        }
        else if (action_num == 4)
        {
            a1 = '2';
            a2 = '4';
        }
        else if (action_num == 5)
        {
            a1 = '3';
            a2 = '4';
        }
        else
        {
            cout << "action number wrong" << endl;
            return 0;
        }
        action_sequence_num.clear();

        for (auto query_detail : query_detail_list)
        {
            for (int depth = 0; depth < (query_detail.size() - 1) / 2;depth++)
            {
                vector<Object> temp_objects;
                for (auto object: *state_temp.getObjects()) {
                    auto temp_query_detail = query_detail;
                    int temp_depth = depth;
                    string obj_name = object.getId();
                    string temp_obj_name = "";

                    if (obj_name.size() > (depth+2) * 2) {
                        continue;
                    }
                    
                    // cout << depth << endl;
                    // cout << "Object name is " << obj_name << endl;
                    bool relative = true;
                    char obj_id = temp_query_detail.back()[1];
                    // cout << "Object id is " << obj_id << endl;
                    if (obj_id != obj_name.back()) {
                        // cout << "false becasue of obj name" << endl;
                        relative = false;
                    } else {
                        temp_obj_name.insert(temp_obj_name.begin(), obj_id);
                        temp_obj_name.insert(temp_obj_name.begin(), 's');
                        obj_name.pop_back();
                        obj_name.pop_back();
                        // cout << "String is " << temp_query_detail.back() << endl;
                        // cout << "this is object is " << obj_id << endl;
                        temp_query_detail.pop_back();
                        temp_depth--;
                        while (temp_depth >= 0) {
                            temp_depth--;
                            if (obj_name.back() != temp_query_detail.back()[0]) {
                                relative = false;
                                // cout << "False here" << endl;
                                break;
                            }
                            temp_obj_name.insert(temp_obj_name.begin(), temp_query_detail.back()[0]);
                            temp_obj_name.insert(temp_obj_name.begin(), 'k');
                            // cout << "This is " << temp_query_detail.back() << endl;
                            temp_query_detail.pop_back();
                            temp_query_detail.pop_back();
                            obj_name.pop_back();
                            obj_name.pop_back();
                        }
                    }
                    
                    if (obj_name.back() != a1 && obj_name.back() != a2 && obj_name.size()!=0) {
                        // cout << "False becasue of agent" << endl;
                        relative = false;
                    }
                    if (relative) {
                        // cout << "----------" << object.getId() << " should be updated" << endl;
                        // cout << "----------" << temp_obj_name << " is the base" << endl;
                        string name1 = "k";
                        name1.push_back(a1);
                        name1.append(temp_obj_name);
                        if (!state_temp.findObject(name1)) {
                            Object temp(name1);
                            
                            temp.addVariable("value", "1");
                            temp_objects.push_back(temp);
                            
                        }
                        name1.clear();
                        string name2 = "k";
                        name2.push_back(a2);
                        name2.append(temp_obj_name);
                        if (!state_temp.findObject(name2)&&name1!=name2) {
                            Object temp(name2);
                            temp.addVariable("value", "1");
                            temp_objects.push_back(temp);
                        }
                        
                    }
                    temp_query_detail.clear();
                }
                for (auto i : temp_objects)
                {
                    if (!state_temp.findObject(i.getId()))
                    {
                        state_temp.getObjects()->push_back(i);
                        // cout << "Adding object " << i.print()<< endl;
                    }

                }
                temp_objects.clear();


            }
        }
        // cout << "STATE1 after update: " << state_temp->print() << endl;
    }
    query_detail_list.clear();
    string output;
    output.append(state_temp.print());
    // cout << "Step 3" <<endl;
    output.append("/query:/");
    output.append(queries.find(query_id_str)->second);
    query_id_str.clear();
    
    // cout << output << endl;
    int result1=0;
    if (check_epistemic(output))
    {
        result1=1;
    }
    else
    {
        result1=0;
    }
    output.clear();
    ObjectIdx count = result1;
    time_counter = time_counter + aptk::time_used() - cur_time;
    // *state1=state_temp;
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
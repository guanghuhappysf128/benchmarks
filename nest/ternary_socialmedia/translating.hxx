#include <iostream>
#include <fstream>
#include "epistemic_checker.hxx"
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <map>
#include <glob.h>

using namespace std;
namespace pt = boost::property_tree;

const string agent_str = "agent_info";
const string object_str = "object_info";
const string query_str = "query_info";
const string agent_name = "agt_a";

static ProblemState* state1;

map<string,string> queries;
map<int,string> pddl_objects;
bool debug1 = false;

void handleObjects(string str)
{
    int index = 2;
    string temp="";
    bool skip=false;
    for(auto i:str)
    {
        if (i!=' '&&i!='-')
        {
            temp.append(string(1,i));
        }
        else if (i=='-')
        {
            skip = true;
        }
        else if (i == ' ')
        {
            if (temp!=""&&!skip)
            {
                pddl_objects.insert(pair<int,string>(index,temp));
                index++;
                temp="";
            }
            else if(temp!=""&&skip)
            {
                temp="";
                skip = false;
            }
        }
    }
}

static ProblemState generateS()
{
    vector<Agent> result_agents;
    vector<Object> result_objects;
    string line;
    string objects_str;
    bool start=false;
    glob_t globbuf;
    glob("definition/problem*.pddl",0,NULL, &globbuf);
    //glob("test*.pddl",0,NULL, &globbuf);

    const char* path = globbuf.gl_pathv[0];
    ifstream file;
    file.open(path,ios::in);
    if (debug1)
    {
        std::cout << "file opened"<< endl;
    }
    if(file.is_open())
    {
        while(getline(file,line))
        {
            size_t found;
            if ((found = line.find(agent_str))!=string::npos)
            {
                if (debug1)
                {
                    std::cout << "agent: ----"<< line <<  endl;
                }
                line.erase(line.begin(),line.begin()+found+agent_str.length()+2);
                line.erase(line.end()-1,line.end());
                stringstream ss;
                ss << line;
                pt::ptree p_tree;
                pt::read_json(ss,p_tree);
                Agent agent1(p_tree.get<string>("id"));
                for(auto i: p_tree)
                {
                    if (i.first!="id")
                        agent1.addVariable(i.first,i.second.data());
                }
                result_agents.push_back(agent1);
            }
            else if ((found = line.find(object_str))!=string::npos)
            {
                if (debug1)
                {
                    std::cout << "object: ----"<< line <<  endl;
                }
                line.erase(line.begin(),line.begin()+found+object_str.length()+2);
                line.erase(line.end()-1,line.end());
                stringstream ss;
                ss << line;
                pt::ptree p_tree;
                pt::read_json(ss,p_tree);
                Object object1(p_tree.get<string>("id"));
                for(auto i: p_tree)
                {
                    if (i.first!="id")
                        object1.addVariable(i.first,i.second.data());
                }
                result_objects.push_back(object1);
            }
            else if ((found = line.find(query_str))!=string::npos)
            {
                if (debug1)
                {
                    std::cout << "query: ----"<< line <<  endl;
                }
                line.erase(line.begin(),line.begin()+found+query_str.length()+2);
                line.erase(line.end()-1,line.end());
                stringstream ss;
                ss << line;
                pt::ptree p_tree;
                pt::read_json(ss,p_tree);
                queries.insert(pair<string,string>(p_tree.get<string>("id"),p_tree.get<string>("query")));
            }
            else if ((found = line.find("(:objects"))!=string::npos)
            {
                start = true;
            }
            else if (start&&(found = line.find(")"))!=string::npos)
            {
                start = false;
            }
            else if (start)
            {
                objects_str.append(line);
            }
        }
        handleObjects(objects_str);

        file.close();
    }
    else cout << "Unable to open file";
    ProblemState result(result_agents,result_objects);
    return result;
}


void initial()
{
   static ProblemState state2 = generateS();
   state1 = &state2;
}
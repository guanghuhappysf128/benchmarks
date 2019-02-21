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


#include <string>
#include <list>
// #include <regex>
#include <glob.h>
#include <boost/algorithm/string.hpp>



#define PI 3.1415926
#define AGNET_NUMBER 2

namespace boost_fs = boost::filesystem;

using namespace std;



External::External( const ProblemInfo& info, const std::string& data_dir ) 

{
  string line;

  glob_t globbuf;
  glob("definition/test*.pddl",0,NULL, &globbuf);

  const char* path = globbuf.gl_pathv[0];
  ifstream file;
  file.open(path,ios::in);

  if(file.is_open())
  {
    while(getline(file,line))
    {
      //cout<< line <<"\n";
      size_t found = line.find(agent_str);
      if (found != string::npos)
      {
        cout<< line <<"\n";
        cout << "found is" << found <<"\n";
        line.erase(line.begin(),line.begin()+found+agent_str.length()+1);
        cout << line << "\n";
        line.erase(line.end()-1,line.end());
        line.push_back(' ');
        cout << line << "\n";
        list<string> result;
        string temp = "";
        for (int i=0; i< line.length();i++)
        {
          if (line.at(i)==' ')
          {
            result.push_back(temp);
            cout << temp << "\n";
            temp="";
          }
          else
          {
            temp.push_back(line.at(i));
          }
        }
        agent agent1;
        agent1.x = result.front();
        result.pop_front();
        agent1.y = result.front();
        result.pop_front();
        agent1.dir = result.front();
        result.pop_front();
        agent1.range = result.front();
        result.pop_front();
        agent1.name = result.front();
        result.pop_front();
        agent1.id = result.front();
        result.pop_front();
        agents.push_back(agent1);

      }
      else if ((found = line.find(object_str))!=string::npos)
      {
        cout<< line <<"\n";
        cout << "found is" << found <<"\n";
        line.erase(line.begin(),line.begin()+found+object_str.length()+1);
        cout << line << "\n";
        line.erase(line.end()-1,line.end());
        line.push_back(' ');
        cout << line << "\n";
        list<string> result;
        string temp = "";
        for (int i=0; i< line.length();i++)
        {
          if (line.at(i)==' ')
          {
            result.push_back(temp);
            cout << temp << "\n";
            temp="";
          }
          else
          {
            temp.push_back(line.at(i));
          }
        }
        object object1;
        object1.x = result.front();
        result.pop_front();
        object1.y = result.front();
        result.pop_front();
        object1.name = result.front();
        result.pop_front();
        object1.id = result.front();
        result.pop_front();
        objects.push_back(object1);
      }
      else if ((found = line.find(query_str))!=string::npos)
      {
        cout<< line <<"\n";
        cout << "found is" << found <<"\n";
        line.erase(line.begin(),line.begin()+found+query_str.length()+1);
        cout << line << "    this result?\n";
        line.erase(line.end()-1,line.end());
        line.push_back(' ');
        cout << line << "\n";
        list<string> result;
        string temp = "";
        bool flag = true;
        for (int i=0; i< line.length();i++)
        {
          if (line.at(i)==' ' && flag)
          {
            result.push_back(temp);
            cout << temp << "\n";
            temp="";
            flag = false;
          }
          else
          {
            temp.push_back(line.at(i));
          }
        }
        temp.erase(temp.end()-1,temp.end());
        result.push_back(temp);
        query query1;
        query1.id = result.front();
        result.pop_front();
        query1.info = result.front();
        result.pop_front();
        queries.push_back(query1);
      }


    }
    file.close();

  }
  else cout << "Unable to open file";
 
}

External::~External() {

}




void External::registerComponents() const {
    LPT_DEBUG("pacman", "Registering Components...");
    LogicalComponentRegistry::instance().
   
        addTermCreator( "@check1", [](const std::vector<const fs::Term*>& subterms){ return new Check1Term(subterms); });
}


ObjectIdx
External::check1(const std::vector<ObjectIdx>& args ) const {

    //cout<<"get in check1"<<endl;
    //cout << "Step 1" <<endl;
    ObjectIdx camera1_x = args[0];
    ObjectIdx camera1_y = args[1];
    ObjectIdx camera1_dir = args[2];
    ObjectIdx query_id = args[3];


    LPT_DEBUG("checking", "argument1 :" << camera1_x << "");
    LPT_DEBUG("checking", "argument2 :" << camera1_y << "");
    LPT_DEBUG("checking", "argument3 :" << camera1_dir << "");
    LPT_DEBUG("checking", "argument4 :" << query_id << "");

    //cout << "Step 2" <<endl;
    string output;
    output.append("state:/agents: ");
    std::_List_const_iterator<External::agent> i = agents.begin();
    //output.append(i->name);
    //output.append(";id:");
    output.append(i->id);
    output.append(";location:");
    output.append(to_string((int)camera1_x));
    output.append(",");
    output.append(to_string((int)camera1_y));
    output.append(";direction:");
    output.append(to_string((int)camera1_dir));
    output.append(";range:");
    output.append(i->range);
    output.append("|");
    //cout << "Step 3" <<endl;



    for (std::_List_const_iterator<External::agent> i = agents.begin() ; i!=agents.end();++i)
    {
      if (i == agents.begin())
      {

      }
      else
      {
        //output.append(i->name);
        //output.append(";id:");
        output.append(i->id);
        output.append(";location:");
        output.append(i->x);
        output.append(",");
        output.append(i->y);
        output.append(";direction:");
        output.append(i->dir);
        output.append(";range:");
        output.append(i->range);
        output.append("|");
      }

    }
    //cout << "Step 4" <<endl;

    output.erase(output.end()-1,output.end());
    output.append(" variables: ");

    for (std::_List_const_iterator<External::object> i = objects.begin(); i!=objects.end();++i)
    {
      output.append(i->id);
      output.append(";value:");
      output.append(i->name);
      output.append(";location:");
      output.append(i->x);
      output.append(",");
      output.append(i->y);
      output.append("|");
    }
    //cout << "Step 5" <<endl;


    output.erase(output.end()-1,output.end());



    output.append("/query:/");


    for (std::_List_const_iterator<External::query> i = queries.begin(); i!=queries.end();++i)
    {
      if (i-> id == to_string((int)query_id))
      {
        output.append(i->info);
        break;
      } 
    }
    //cout << "Step 6" <<endl;
    LPT_DEBUG("checking", "This is string: " << output << "\n");

    //bool re = writing(output);
    int result1=1;
    //char* query = output.c_str();
    //check2(query, &result1);
    //dlclose(libsim);
    LPT_DEBUG("checking", "This query is " << result1 << "\n");
    //cout << output <<endl;
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

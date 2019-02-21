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
    // //those are the types in domain.pddl 
    // _pacman(info.getTypeObjects("pacman")),
    // _ghost(info.getTypeObjects("ghost")),
    // _location(info.getTypeObjects("location")),
    // //what does this line do?
    // _width(0)
{
  float cur_time = aptk::time_used();
  string line;
    m_callCounter = 0;
    counter = 0;


  // if  ((libsim = dlopen("libSim.so", RTLD_LAZY)) == NULL)
  // {
  //   LPT_DEBUG("checking", "Could not open lib\n");
  // }

  // else if ((check2 = (int* (*)(char *, int*))dlsym(libsim, "check")) == NULL )
  // {
  //     //printf("checking loading: %s\n", dlerror());
  //    LPT_DEBUG("checking", "Could not load check1\n");
  // }

  //ofstream ios::out
  //ifstream ios::in
  glob_t globbuf;
  glob("definition/problem*.pddl",0,NULL, &globbuf);
  // for (size_t i = 0; i< globbuf.gl_pathc;++i)
  // {
  //  cout << "found: "<< globbuf.gl_pathv[i] << "\n";
  // }
  const char* path = globbuf.gl_pathv[0];
  ifstream file;
  file.open(path,ios::in);
  // if(!file)
  // {
  //  cout << "unable to open file";
  //  exit(1); //terminate with error
  // }
  // else
  // {

  // }
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

      // if (regex_match(line,regex("*layout*")))
      // {
      //  cout<< line <<"\n";
      // }
    }
    file.close();

  }
  else cout << "Unable to open file";
  // libEval = dlopen("libTest.so", RTLD_LAZY);
  // addone = (int* (*)(int *, int*))dlsym(libEval, "addone");
  // doubled = (int* (*)(int *, int*))dlsym(libEval, "doubled");


    //! map layout file
   //  unsigned map_layout_sym_id = info.getSymbolId( "map_layout" );
   //  auto map_layout = info.get_extension(map_layout_sym_id).get_function();
   //  std::string map_name = info.deduceObjectName( map_layout({}), "layout") + ".lay";

   //  boost_fs::path map_file = boost_fs::path(data_dir) / boost_fs::path("layouts") / boost_fs::path(map_name);

   //  if (!boost_fs::exists(map_file))
   //      throw std::runtime_error("[Pacman::External]: Could not open map data file '" + map_file.string() + "' for map '" + map_name + "'");
   //  if (!boost_fs::is_regular_file(map_file))
   //      throw std::runtime_error("[Pacman::External]: Map data file '" + map_file.string() + "' cannot be opened");

   //  std::ifstream input(map_file.string());

   //  if ( !input.is_open() )
   //      throw std::runtime_error("[Pacman::External]: Failed to open map data file '" + map_file.string() + "'");

   //  int loc_idx = 1;
   //  int x = 0;
   //  int y = 0;
   //  int ghost = 0;

   //  for ( std::string line; std::getline(input,line);) {
   //      if ( _width == 0 ) _width = line.size();
   //      if ( line.size() != _width ) {
   //          std::stringstream ss;
   //          ss << "[Pacman::External]: line width mismatch, got ";
   //          ss << line.size() << " expected " << _width << std::endl;
   //          throw std::runtime_error( ss.str() );
   //      }
   //      x = 0;
   //      for ( auto c : line ) {
   //          if (c == '%') {
   //              _blocked[ loc_idx ] = true;
   //          }
   //          else if (c == 'P') {
   //              _blocked[ loc_idx ] = false;
   //          }
   //          else if (c == '.') {
   //              _blocked[ loc_idx ] = false;
   //          }
   //          else if (c == 'G' ) {
   //              _blocked[ loc_idx ] = false;
			// 	++ghost;
   //          } else if (c == ' ' ) {
			// 	_blocked[ loc_idx ] = false;
				
			// } 
   //          else if (c == 'o' ) {  // At the moment we just ignore  capsules
			// 	_blocked[ loc_idx ] = false;
				
			// } 			
			// else {
			// 	LPT_INFO("cout", "Unknown PACMAN encoding char: " << c);
			// 	throw std::runtime_error("Unknown PACMAN encoding char!!!");
			// }
				
				
   //          _location_x[ loc_idx ] = x;
   //          _location_y[ loc_idx ] = y;
   //          LPT_DEBUG("pacman", "Initialised: loc idx #" << loc_idx << " object = " << loc_idx );
   //          LPT_DEBUG("pacman", "\t blocked? " << _blocked[ loc_idx ]);
   //          LPT_DEBUG("pacman", "\t x? " << _location_x[ loc_idx ]);
   //          LPT_DEBUG("pacman", "\t y? " << _location_y[ loc_idx ]);

   //          x++;
   //          loc_idx++;
   //      }
   //      y++;
   //  }
   //  LPT_DEBUG("pacman", "Loaded map: '" << map_file << "'" );
   //  LPT_DEBUG("pacman", "\t # Locations: " << loc_idx << " width: " << _width << " height: " << y );

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

// void External::registerComponents() const {
//     LPT_DEBUG("pacman", "Registering Components...");
//     LogicalComponentRegistry::instance().
//         // term is function
//         addTermCreator( "@addone_count", [](const std::vector<const fs::Term*>& subterms){ return new AddoneCountTerm(subterms); });
//     LogicalComponentRegistry::instance().
//         // term is function
//         addTermCreator( "@double_count", [](const std::vector<const fs::Term*>& subterms){ return new DoubleCountTerm(subterms); });



// //     LogicalComponentRegistry::instance().
// //         // formula is predicate
// // 		addFormulaCreator("@valid_move", [](const std::vector<const fs::Term*>& subterms){ return new ValidMoveFormula(subterms); });
// }




void External::registerComponents() const {
    LPT_DEBUG("pacman", "Registering Components...");
    LogicalComponentRegistry::instance().
        // term is function
    //     addTermCreator( "@check_seeing", [](const std::vector<const fs::Term*>& subterms){ return new CheckSeeingTerm(subterms); });
    // LogicalComponentRegistry::instance().
    //     // term is function
    //     addTermCreator( "@check_common", [](const std::vector<const fs::Term*>& subterms){ return new CheckCommonTerm(subterms); });
    // LogicalComponentRegistry::instance().
    //     // term is function
    //     addTermCreator( "@check_nest", [](const std::vector<const fs::Term*>& subterms){ return new CheckNestTerm(subterms); });

    // LogicalComponentRegistry::instance().
    //     // term is function
    //     addTermCreator( "@check_nest_private", [](const std::vector<const fs::Term*>& subterms){ return new CheckNestPrivateTerm(subterms); });
    // LogicalComponentRegistry::instance().
    //     // term is function
    //     addTermCreator( "@check_distribute", [](const std::vector<const fs::Term*>& subterms){ return new CheckDistributeTerm(subterms); });
    // LogicalComponentRegistry::instance().
    //     // term is function
    //     addTermCreator( "@check_string", [](const std::vector<const fs::Term*>& subterms){ return new CheckStringTerm(subterms); });
    // LogicalComponentRegistry::instance().
    //     // term is function
    //     addTermCreator( "@check", [](const std::vector<const fs::Term*>& subterms){ return new CheckTerm(subterms); });
    // LogicalComponentRegistry::instance().
        // term is function
        addTermCreator( "@check1", [](const std::vector<const fs::Term*>& subterms){ return new Check1Term(subterms); });


//     LogicalComponentRegistry::instance().
//         // formula is predicate
//    addFormulaCreator("@valid_move", [](const std::vector<const fs::Term*>& subterms){ return new ValidMoveFormula(subterms); });
}

// ObjectIdx
// External::double_count(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     int temp = args[0];
//     int answer = 0;
//     doubled(&temp, &answer);
//     ObjectIdx count = answer;
//     return count;
//     //return (count * 2);
// }


// ObjectIdx
// External::check_seeing(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx direction = args[2];
//     ObjectIdx object_id = args[3];
//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }

//     // int delta_x = objx - camera1_x;
//     // int delta_y = objy - camera1_y;
//     // int dir = 0;

//     // if (delta_x == 0)
//     // {
//     //   if (delta_y > 0)  dir = 90;
//     //   else dir = -90;
//     // }
//     // else
//     // {
//     //   dir = (int) (atan2(delta_y,delta_x)*180/PI);
//     // }
//     // int delta_dir = abs(dir - direction);
//     // if (delta_dir > 180) delta_dir = 360 - delta_dir;
//     // int result = 0;
//     // if (delta_dir <= camera1_range/2) result = 1;

//     // ObjectIdx count = result;
//     ObjectIdx count = sees(camera1_x,camera1_y,camera1_range,direction,objx,objy);

//     return count;
//     //return (count * 2);
// }

// ObjectIdx
// External::check_common(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx camera1_dir = args[2];
//     ObjectIdx object_id = args[3];
//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }

    
//     int result = 0;
//     if (
//       sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//       &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//       &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,camera1_x,camera1_y)
//       &&sees(camera1_x,camera1_y,camera1_range,camera1_dir,camera2_x,camera2_y)
//       ) result = 1;
//     ObjectIdx count = result;

//     return count;
// }

// ObjectIdx
// External::check_nest(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx camera1_dir = args[2];
//     ObjectIdx object_id = args[3];
//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }

    
//     int result = 0;
//     if (
//       sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//       &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//       &&sees(camera1_x,camera1_y,camera1_range,camera1_dir,camera2_x,camera2_y)
//       ) result = 1;
//     ObjectIdx count = result;

//     return count;
// }


// ObjectIdx
// External::check_nest_private(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx camera1_dir = args[2];
//     ObjectIdx object_id = args[3];
//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }

    
//     int result = 0;
//     if (
//       sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//       &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//       &&sees(camera1_x,camera1_y,camera1_range,camera1_dir,camera2_x,camera2_y)
//       &&!sees(camera2_x,camera2_y,camera2_range,camera2_dir,camera1_x,camera1_y)
//       ) result = 1;
//     ObjectIdx count = result;

//     return count;
// }

// ObjectIdx
// External::check_distribute(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx camera1_dir = args[2];
//     ObjectIdx object_id = args[3];
//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }

    
//     int result = 0;
//     if (
//       sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//       ||sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//       ) result = 1;
//     ObjectIdx count = result;

//     return count;
// }


// ObjectIdx
// External::check_string(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );

//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     // ObjectIdx camera1_x = args[0];
//     // ObjectIdx camera1_y = args[1];
//     // ObjectIdx camera1_dir = args[2];
//     // ObjectIdx object_id = args[3];
//     // int objx=0;
//     // int objy=0;
//     // switch((int)object_id)
//     // {
//     //   case 1 : objx = obj1x; objy = obj1y; break;
//     //   case 2 : objx = obj2x; objy = obj2y; break;
//     //   case 3 : objx = obj3x; objy = obj3y; break;
//     //   default : objx = 19; objy = 19; break;
//     // }

    
//     // int result = 0;
//     // if (
//     //   sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//     //   ||sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//     //   ) result = 1;
//     // ObjectIdx count = result;
//     ObjectIdx arg = args[0];
//     //assert(arg);
//     LPT_DEBUG("test", "The arg is " << arg << " \n ");
//     int id = arg;
//     int result= 0;
//     if (id == 4) result = 1;
//     ObjectIdx count = result;  
//     return count;
// }

// ObjectIdx
// External::check(const std::vector<ObjectIdx>& args ) const {
//     //assert( args.size() == 1 );

//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     //LPT_DEBUG("checking", "The size of arguement" << args.size() << "\n");

//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx camera1_dir = args[2];
//     ObjectIdx knowledge_type = args[3];
//     ObjectIdx agent_group = args[4];
//     ObjectIdx object_id = args[5];

//     LPT_DEBUG("checking", "argument1 :" << camera1_x << "");
//     LPT_DEBUG("checking", "argument2 :" << camera1_y << "");
//     LPT_DEBUG("checking", "argument3 :" << camera1_dir << "");
//     LPT_DEBUG("checking", "argument4 :" << knowledge_type << "");
//     LPT_DEBUG("checking", "argument5 :" << agent_group << "");
//     LPT_DEBUG("checking", "argument6 :" << object_id << "\n");
//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }
    
//     // int agents[AGENT_NUMBER] = {0,0};
//     // int agent_index = AGENT_NUMBER-1;
//     // while(agent_group!=0)
//     // {
//     //   if(agent_group%2==1) agents[agent_index]=1;
//     //   agent_index++;
//     //   agent_group = agent_group/2;
//     // }
//     int result = 0;
//     switch((int)knowledge_type)
//     {
//       case 2 : 
//         if(agent_group == 1)
//         {
//           LPT_DEBUG("checking", "The query is checking commonknowledge about camera1 on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 2)
//         {
//           LPT_DEBUG("checking", "The query is checking commonknowledge about camera2 on object" << (int)object_id << "\n");
//           if (sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else {result = 1;LPT_DEBUG("checking", "The query is false\n");}
//         }
//         else if(agent_group == 3)
//         {
//           LPT_DEBUG("checking", "The query is checking commonknowledge about (camera1 and camera2) on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//                 &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//                 &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,camera1_x,camera1_y)
//                 &&sees(camera1_x,camera1_y,camera1_range,camera1_dir,camera2_x,camera2_y)
//               )
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         break;
//       case 3 :
//         if(agent_group == 1)
//         {
//           LPT_DEBUG("checking", "The query is checking distributeknowledge about camera1 on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 2)
//         {
//           LPT_DEBUG("checking", "The query is checking distributeknowledge about camera2 on object" << (int)object_id << "\n");
//           if (sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 3)
//         {
//           LPT_DEBUG("checking", "The query is checking distributeknowledge about (camera1 and camera2) on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//                 ||sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//               )
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         break;
//       case 4 :
//                 if(agent_group == 1)
//         {
//           LPT_DEBUG("checking", "The query is checking common seeing about camera1 on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 2)
//         {
//           LPT_DEBUG("checking", "The query is checking commonseeing about camera2 on object" << (int)object_id << "\n");
//           if (sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 3)
//         {
//           LPT_DEBUG("checking", "The query is checking commonseeing about (camera1 and camera2) on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//                 &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//                 &&sees(camera2_x,camera2_y,camera2_range,camera2_dir,camera1_x,camera1_y)
//                 &&sees(camera1_x,camera1_y,camera1_range,camera1_dir,camera2_x,camera2_y)
//               )
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         break;
//       case 5:
//         if(agent_group == 1)
//         {
//           LPT_DEBUG("checking", "The query is checking distributeseeing about camera1 on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 2)
//         {
//           LPT_DEBUG("checking", "The query is checking distributeseeing about camera2 on object" << (int)object_id << "\n");
//           if (sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy))
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         else if(agent_group == 3)
//         {
//           LPT_DEBUG("checking", "The query is checking distributeseeing about (camera1 and camera2) on object" << (int)object_id << "\n");
//           if (sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//                 ||sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//               )
//             {
//               result =1;
//               LPT_DEBUG("checking", "The query is true\n");
//             }
//             else LPT_DEBUG("checking", "The query is false\n");
//         }
//         break;
//       default :
//         LPT_DEBUG("checking", "Default happened!!!!\n");
//         objx = 19; objy = 19; break;
//     }


    
//     // int result = 0;
//     // if (
//     //   sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//     //   ||sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//     //   ) result = 1;
//     // ObjectIdx count = result;
//     // ObjectIdx arg = args[0];
//     // //assert(arg);
//     // LPT_DEBUG("test", "The arg is " << arg << " \n ");
//     // int id = arg;
//     // int result= 0;
//     // if (id == 4) result = 1;
//     //result=1;
//     ObjectIdx count = result;  
//     return count;
// }


// ObjectIdx
// External::check(const std::vector<ObjectIdx>& args ) const {
//     //assert( args.size() == 1 );

//     //arg has two integer input, which are ghost_loc and pacman location
//     //ObjectIdx count = args[0];
//     // int temp = args[0];
//     // int answer = 0;
//     // doubled(&temp, &answer);
//     // ObjectIdx count = answer;
//     //LPT_DEBUG("checking", "The size of arguement" << args.size() << "\n");

//     ObjectIdx camera1_x = args[0];
//     ObjectIdx camera1_y = args[1];
//     ObjectIdx camera1_dir = args[2];
//     ObjectIdx knowledge_type = args[3];
//     ObjectIdx agent_group = args[4];
//     ObjectIdx object_id = args[5];

//     LPT_DEBUG("checking", "argument1 :" << camera1_x << "");
//     LPT_DEBUG("checking", "argument2 :" << camera1_y << "");
//     LPT_DEBUG("checking", "argument3 :" << camera1_dir << "");
//     LPT_DEBUG("checking", "argument4 :" << knowledge_type << "");
//     LPT_DEBUG("checking", "argument5 :" << agent_group << "");
//     LPT_DEBUG("checking", "argument6 :" << object_id << "\n");


//     int objx=0;
//     int objy=0;
//     switch((int)object_id)
//     {
//       case 1 : objx = obj1x; objy = obj1y; break;
//       case 2 : objx = obj2x; objy = obj2y; break;
//       case 3 : objx = obj3x; objy = obj3y; break;
//       default : objx = 19; objy = 19; break;
//     }
    
//     // int agents[AGENT_NUMBER] = {0,0};
//     // int agent_index = AGENT_NUMBER-1;
//     // while(agent_group!=0)
//     // {
//     //   if(agent_group%2==1) agents[agent_index]=1;
//     //   agent_index++;
//     //   agent_group = agent_group/2;
//     // }



    
//     // int result = 0;
//     // if (
//     //   sees(camera1_x,camera1_y,camera1_range,camera1_dir,objx,objy)
//     //   ||sees(camera2_x,camera2_y,camera2_range,camera2_dir,objx,objy)
//     //   ) result = 1;
//     // ObjectIdx count = result;
//     // ObjectIdx arg = args[0];
//     // //assert(arg);
//     // LPT_DEBUG("test", "The arg is " << arg << " \n ");
//     // int id = arg;
//     // int result= 0;
//     // if (id == 4) result = 1;
//     //result=1;



//     string output;
//     output.append("state:/agents: ");
//     std::_List_const_iterator<External::agent> i = agents.begin();
//     //output.append(i->name);
//     //output.append(";id:");
//     output.append(i->id);
//     output.append(";location:");
//     output.append(to_string((int)camera1_x));
//     output.append(",");
//     output.append(to_string((int)camera1_y));
//     output.append(";direction:");
//     output.append(to_string((int)camera1_dir));
//     output.append(";angle:");
//     output.append(i->range);
//     output.append(";|");



//     // for (agent i : agents)
//     // {
//     //   output.append(i.name);
//     //   output.append(";id:");
//     //   output.append(i.id);
//     //   output.append(";location:");
//     //   output.append(i.x);
//     //   output.append(",");
//     //   output.append(i.y);
//     //   output.append(";direction:");
//     //   output.append(i.dir);
//     //   output.append(";angle:");
//     //   output.append(i.range);
//     //   output.append(";|");
//     // }


//     for (std::_List_const_iterator<External::agent> i = agents.begin() ; i!=agents.end();++i)
//     {
//       if (i == agents.begin())
//       {

//       }
//       else
//       {
//         //output.append(i->name);
//         //output.append(";id:");
//         output.append(i->id);
//         output.append(";location:");
//         output.append(i->x);
//         output.append(",");
//         output.append(i->y);
//         output.append(";direction:");
//         output.append(i->dir);
//         output.append(";angle:");
//         output.append(i->range);
//         output.append(";|");
//       }

//     }






//     // for (list<agent>::iterator i = ++agents.begin() ; i!=agents.end();++i)
//     // {
//     //   output.append(i->name);
//     //   output.append(";id:");
//     //   output.append(i->id);
//     //   output.append(";location:");
//     //   output.append(i->x);
//     //   output.append(",");
//     //   output.append(i->y);
//     //   output.append(";direction:");
//     //   output.append(i->dir);
//     //   output.append(";angle:");
//     //   output.append(i->range);
//     //   output.append(";|");
//     // }
//     output.erase(output.end()-1,output.end());
//     output.append(" variables: ");
//     // for (object i : objects)
//     // {
//     //   output.append(i.name);
//     //   output.append(";location:");
//     //   output.append(i.x);
//     //   output.append(",");
//     //   output.append(i.y);
//     //   output.append("|");
//     // }
//     for (std::_List_const_iterator<External::object> i = objects.begin(); i!=objects.end();++i)
//     {
//       output.append(i->id);
//       output.append(";value:");
//       output.append(i->name);
//       output.append(";location:");
//       output.append(i->x);
//       output.append(",");
//       output.append(i->y);
//       output.append("|");
//     }

//     // for (list<object>::iterator i = objects.begin(); i!=objects.end();++i)
//     // {
//     //   output.append(i->name);
//     //   output.append(";location:");
//     //   output.append(i->x);
//     //   output.append(",");
//     //   output.append(i->y);
//     //   output.append("|");
//     // }
//     output.erase(output.end()-1,output.end());
//     output.append("/query:/");
//     switch((int)knowledge_type)
//     {
//       case 2: output.append("ck ");break;
//       case 3: output.append("dk ");break;
//       case 4: output.append("ek ");break;
//       case 5: output.append("nk ");break;
//       case 6: output.append("es ");break;
//       case 7: output.append("ds ");break;
//       case 8: output.append("ns ");break;
//       default : break;
//     }
//     i = agents.end();
//     int as = (int) agent_group;
//     // as =1;
//     while(as!=0)//i!=agents.begin()&&
//     {
//       --i;//start at the end, the last element should be -- first
//       if (as%2==1)
//       {
//         output.append(i->id);
//         output.append(",");
//       }
//       as= as/2;
//     }
//     output.erase(output.end()-1,output.end());
//     output.append(" ");
//     std::_List_const_iterator<External::object> o = objects.begin();
//     int o_id = object_id;
//     while(o_id!=1)//o!= objects.end()
//     {
//       o++;
//       o_id--;
//     }
//     output.append(o->name);
//     //bool re = writing(output);
//     LPT_DEBUG("checking", "This is string: " << output << "\n");


//     int result1=1;
//     //char* query = output.c_str();
//     //check2(query, &result1);
//     //dlclose(libsim);
//     LPT_DEBUG("checking", "This query is " << result1 << "\n");

//     ObjectIdx count = result1;  
//     return count;
// }




// bool External::sees(const int agent_x,const int agent_y,const int agent_range,const int agent_dir,const int target_x, const int target_y)
// {
//   bool result = false; //default cannot sees
//   int delta_x = target_x - agent_x;
//   int delta_y = target_y - agent_y;
//   int dir = 0;

//   if (delta_x == 0)
//   {
//     if (delta_y > 0)  dir = 90;
//     else dir = -90;
//   }
//   else
//   {
//     dir = (int) (atan2(delta_y,delta_x)*180/PI);
//   }
//   int delta_dir = abs(dir - agent_dir);
//   if (delta_dir > 180) delta_dir = 360 - delta_dir;
//   if (delta_dir <= agent_range/2) result = true;


//   return result;
// }



// ObjectIdx
// External::addone_count(const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1 );
//     //arg has two integer input, which are ghost_loc and pacman location
//     int temp = args[0];
//     int answer = 0;
//     addone(&temp, &answer);
//     ObjectIdx count = answer;
//     return count;
//     //return answer;
//     //return (count + 1);
// 	//ObjectIdx pacman_loc = args[1];

// 	// If the ghost is at the same location where pacman has moved, let the ghost stay
// 	// there and catch pacman!
// 	// if (ghost_loc == pacman_loc) return ghost_loc;
	
//  //    ObjectIdx selected1 = 0;
//  //    unsigned min_dist = std::numeric_limits<unsigned>::max();
	
// 	// unsigned _num_locations = _location.size(); // Locations are assumed to go between 1 and width*height
// 	// // Collect the possible adjacent locations. Staying on the same loc is always an option
// 	// std::vector<int> possible_locs;
// 	// if (ghost_loc-_width > 0) possible_locs.push_back(ghost_loc-_width); // Move up
// 	// if (ghost_loc-1 > 0) possible_locs.push_back(ghost_loc-1); // Move to the left
// 	// possible_locs.push_back(ghost_loc); // Stay quiet
// 	// if (ghost_loc+1 <= _num_locations) possible_locs.push_back(ghost_loc+1); // Move to the right
// 	// if (ghost_loc+_width <= _num_locations) possible_locs.push_back(ghost_loc+_width); // Move down
	
	
//  //    for (int loc : possible_locs) {
// 	// 	// loc is, by definition, adjacent to ghost_loc
// 	// 	assert(adjacent(ghost_loc, loc));
		
//  //        if (_blocked.at(loc)) continue;

// 	// 	unsigned dist = manhattan(loc, pacman_loc);
//  //        //selecting the one most closest to pacman
//  //        if (dist < min_dist) {
//  //            selected1 = loc;
//  //            min_dist = dist;
//  //        }
//  //    }
//  //    assert(min_dist != std::numeric_limits<unsigned>::max());

// 	/*
// 	ObjectIdx selected2 = 0;
// 	min_dist = std::numeric_limits<unsigned>::max();
// 	for ( auto loc : _location ) {
//         if ( _blocked.at(loc) || !adjacent(ghost_loc, loc)) continue;

// 		unsigned dist = manhattan(loc, pacman_loc);
//         if (dist < min_dist) {
//             selected2 = loc;
//             min_dist = dist;
//         }
//     }
//     assert(min_dist != std::numeric_limits<unsigned>::max());
    
//     assert(selected1 == selected2);
// 	*/
    
//    // LPT_DEBUG("pacman", "Ghost moves to location " << selected1 << " from " << ghost_loc );

//     //return selected1;
// }

// ObjectIdx
// External::x(const std::vector<ObjectIdx>& arguments ) const {
//     assert( arguments.size() == 1 );
//     LPT_DEBUG("pacman", "x(args): argument: " << arguments[0] );
//     LPT_DEBUG("pacman", "\t value: " << _location_x.at(arguments[0]) );
//     return _location_x.at(arguments[0]);
// }

// ObjectIdx
// External::y(const std::vector<ObjectIdx>& arguments ) const {
//     assert( arguments.size() == 1 );
//     LPT_DEBUG("pacman", "y(args): argument: " << arguments[0] );
//     LPT_DEBUG("pacman", "\t value: " << _location_y.at(arguments[0]) );
//     return _location_y.at(arguments[1]);
// }

// bool
// External::valid_move(const std::vector<ObjectIdx>& arguments ) const {
// 	throw std::runtime_error("This shouldn't be invoked"); // we need to keep this for the moment being, silly as it is.
// }



// what is the input of this?
// ObjectIdx
// External::double_count(const State& state, const std::vector<ObjectIdx>& args ) const {
// 	return double_count(args);
// }

// ObjectIdx
// External::addone_count(const State& state, const std::vector<ObjectIdx>& args ) const {
//     return addone_count(args);
// }

ObjectIdx
External::check1(const std::vector<ObjectIdx>& args ) {

    float cur_time = aptk::time_used();
    counter++;

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
    time_counter = time_counter + aptk::time_used() - cur_time;
    return count;
}




// ObjectIdx
// External::check_seeing(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check_seeing(args);
// }

// ObjectIdx
// External::check_common(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check_common(args);
// }

// ObjectIdx
// External::check_nest(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check_nest(args);
// }

// ObjectIdx
// External::check_nest_private(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check_nest_private(args);
// }

// ObjectIdx
// External::check_distribute(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check_distribute(args);
// }

// ObjectIdx
// External::check_string(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check_string(args);
// }

// ObjectIdx
// External::check(const State& state, const std::vector<ObjectIdx>& args ) const {
//   return check(args);
// }

ObjectIdx
External::check1(const State& state, const std::vector<ObjectIdx>& args ) const {
  return check1(args);
}
// ObjectIdx
// External::x(const State& state, const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1);
//     return _location_x.at(args[0]);
// }

// ObjectIdx
// External::y(const State& state, const std::vector<ObjectIdx>& args ) const {
//     assert( args.size() == 1);
//     return _location_y.at(args[0]);
// }

// bool
// External::valid_move(const State& s, const std::vector<ObjectIdx>& args ) const {
//     assert(args.size() == 2 );
// 	ObjectIdx from = args[0];
// 	ObjectIdx to = args[1];

// 	if (from == to) return true; // A no-op
//     if ( _blocked.at(to) || !adjacent(from, to)) return false;

//     return get_x(from) != get_x(to) || get_y(from) != get_y(to); // ???
// }






// AddoneCountTerm::AddoneCountTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@addone_count" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 2);
// }

// AddoneCountTerm*
// AddoneCountTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new AddoneCountTerm( subterms );
// }

// ObjectIdx
// AddoneCountTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked AddoneCountTerm::compute()");
//     return _external.addone_count( state, arguments );
// }

// DoubleCountTerm::DoubleCountTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@double_count" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 2);
// }

// DoubleCountTerm*
// DoubleCountTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new DoubleCountTerm( subterms );
// }

// ObjectIdx
// DoubleCountTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked DoubleCountTerm::compute()");
//     return _external.double_count( state, arguments );
// }

// CheckSeeingTerm::CheckSeeingTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check_seeing" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// CheckSeeingTerm*
// CheckSeeingTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckSeeingTerm( subterms );
// }

// ObjectIdx
// CheckSeeingTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckSeeingTerm::compute()");
//     return _external.check_seeing( state, arguments );
// }


// CheckCommonTerm::CheckCommonTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check_common" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// CheckCommonTerm*
// CheckCommonTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckCommonTerm( subterms );
// }

// ObjectIdx
// CheckCommonTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckCommonTerm::compute()");
//     return _external.check_common( state, arguments );
// }


// CheckNestTerm::CheckNestTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check_nest" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// CheckNestTerm*
// CheckNestTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckNestTerm( subterms );
// }

// ObjectIdx
// CheckNestTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckNestTerm::compute()");
//     return _external.check_nest( state, arguments );
// }


// CheckNestPrivateTerm::CheckNestPrivateTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check_nest_private" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// CheckNestPrivateTerm*
// CheckNestPrivateTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckNestPrivateTerm( subterms );
// }

// ObjectIdx
// CheckNestPrivateTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckNestTerm::compute()");
//     return _external.check_nest_private( state, arguments );
// }


// CheckDistributeTerm::CheckDistributeTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check_distribute" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// CheckDistributeTerm*
// CheckDistributeTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckDistributeTerm( subterms );
// }

// ObjectIdx
// CheckDistributeTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckCommonTerm::compute()");
//     return _external.check_distribute( state, arguments );
// }



// CheckStringTerm::CheckStringTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check_string" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);//what is this for?
// }

// CheckStringTerm*
// CheckStringTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckStringTerm( subterms );
// }

// ObjectIdx
// CheckStringTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckCommonTerm::compute()");
//     return _external.check_string( state, arguments );
// }


// CheckTerm::CheckTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@check" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     //assert( subterms.size() == 6);//what is this for?
// }

// CheckTerm*
// CheckTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new CheckTerm( subterms );
// }

// ObjectIdx
// CheckTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked CheckCommonTerm::compute()");
//     return _external.check( state, arguments );
// }


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

// XTerm::XTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@x" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// XTerm*
// XTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new XTerm( subterms );
// }

// ObjectIdx
// XTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked XTerm::compute()");
//     return _external.x( state, arguments );
// }

// YTerm::YTerm( const std::vector< const fs::Term*>& subterms )
//     : AxiomaticTerm( ProblemInfo::getInstance().getSymbolId( "@y" ), subterms ),
//     _external( dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert( subterms.size() == 1);
// }

// YTerm*
// YTerm::clone( const std::vector<const fs::Term*>& subterms) const {
//     return new YTerm( subterms );
// }

// ObjectIdx
// YTerm::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("pacman", "Invoked YTerm::compute()");
//     return _external.y( state, arguments );
// }

// ValidMoveFormula::ValidMoveFormula( const std::vector<const fs::Term*>& subterms)
//     : AxiomaticFormula(subterms),
//     _external(dynamic_cast<const External&>(ProblemInfo::getInstance().get_external()))
// {
//     assert(subterms.size() == 2);
// }

// ValidMoveFormula*
// ValidMoveFormula::clone(const std::vector<const fs::Term*>& subterms) const {
//     return new ValidMoveFormula(subterms);
// }

// bool
// ValidMoveFormula::compute(const State& state, std::vector<ObjectIdx>& arguments) const {
//     LPT_DEBUG("predator_and_prey", "Invoked ValidMoveFormula::compute()");
//     return _external.valid_move( state, arguments );
// }

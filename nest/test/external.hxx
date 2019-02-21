#pragma once

#include <vector>
#include <unordered_map>

#include <lapkt/tools/logging.hxx>
#include <problem_info.hxx>
#include <utils/external.hxx>
#include <languages/fstrips/builtin.hxx>
#include <languages/fstrips/terms.hxx>
#include <state.hxx>
#include <dlfcn.h>

#include <string>
#include <list>
// #include <regex>
#include <glob.h>
#include <boost/algorithm/string.hpp>




namespace fs = fs0::language::fstrips;
using namespace fs0;





class External : public fs0::ExternalI {

public:


    External( const ProblemInfo& info, const std::string& data_dir ) ;

    ~External();

 

    const std::string agent_str = "camera_info";
    const std::string object_str = "object_info";
    const std::string query_str = "query_info";



    struct agent
    {
        std::string name;
        std::string id;
        std::string x;
        std::string y;
        std::string dir;
        std::string range;
    };

    struct object
    {
        std::string name;
        std::string id;
        std::string x;
        std::string y;
    };

    struct query
    {
        std::string id;
        std::string info;
    };

    std::list<agent> agents;
    std::list<object> objects; 
    std::list<query> queries; 


    void registerComponents() const;


  

    ObjectIdx   check1(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx   check1(const std::vector<ObjectIdx>& arguments ) const;
 
};



class Check1Term : public fs::AxiomaticTerm {
public:
    Check1Term( const std::vector<const fs::Term*>& subterms );
    // create a clone of the class
    Check1Term* clone(const std::vector<const fs::Term*>& subterms) const override;

    std::string name() const override { return "check1"; };

    ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
protected:
    //reference with constant address
    const External& _external;
};

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



//extern int *addone( int *,int *);
//extern int *doubled(int *, int *);

// extern int *(*addone)(int *, int *);
// extern int *(*doubled)(int *, int *);

class External : public fs0::ExternalI {

public:

    // yingyong to pass parameter, similar as point. change the value of original variable
    // why it is const?
    // using ref is aim to avoid passing value to increase performance
    // using const is for avoid accidently change the value of parameters
    External( const ProblemInfo& info, const std::string& data_dir ) ;
    
    //what this for?
    //destructor
    ~External();

    int counter;
    float time_counter;
    float initial_time;



    void registerComponents() const;



    ObjectIdx   check1(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx   check1(const std::vector<ObjectIdx>& arguments );
 
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

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
#include <glob.h>
#include <boost/algorithm/string.hpp>


namespace fs = fs0::language::fstrips;
using namespace fs0;


class External : public fs0::ExternalI {

public:

    External( const ProblemInfo& info, const std::string& data_dir ) ;

    ~External();

    void registerComponents() const;

    ObjectIdx  check(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx  check(const std::vector<ObjectIdx>& arguments ) ;

    int counter=0;
    float time_counter=0;
    float initial_time=0;

   
 
};

class CheckTerm : public fs::AxiomaticTerm {
public:
    CheckTerm( const std::vector<const fs::Term*>& subterms );
    // create a clone of the class
    CheckTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

    std::string name() const override { return "check"; };

    ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
protected:
    //reference with constant address
    const External& _external;
};

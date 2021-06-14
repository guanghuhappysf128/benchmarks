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

    ObjectIdx  update(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx  update(const std::vector<ObjectIdx>& arguments ) ;

    ObjectIdx  translate(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx  translate(const std::vector<ObjectIdx>& arguments ) ;

    ObjectIdx  check(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx  check(const std::vector<ObjectIdx>& arguments ) ;


    int counter;
    float time_counter;
    float initial_time;

   
 
};

class UpdateTerm : public fs::AxiomaticTerm {
public:
    UpdateTerm( const std::vector<const fs::Term*>& subterms );
    // create a clone of the class
    UpdateTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

    std::string name() const override { return "update"; };

    ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
protected:
    //reference with constant address
    const External& _external;
};


//translate
class TranslateTerm : public fs::AxiomaticTerm {
public:
    TranslateTerm( const std::vector<const fs::Term*>& subterms );
    // create a clone of the class
    TranslateTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

    std::string name() const override { return "translate"; };

    ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
protected:
    //reference with constant address
    const External& _external;
};


//check
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

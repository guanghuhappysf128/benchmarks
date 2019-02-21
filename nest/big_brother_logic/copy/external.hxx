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

    
    // void *libEval;
    // int *(*addone)(int *, int *);
    // int *(*doubled)(int *, int *);


    // int *(*check2)(char *,int *);
    // void *libsim;

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


    // ObjectIdx   double_count(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   double_count(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   addone_count(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   addone_count(const std::vector<ObjectIdx>& arguments ) const;



    // ObjectIdx   check_seeing(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check_seeing(const std::vector<ObjectIdx>& arguments ) const;

    // bool sees(const int agent_x,const int agent_y,const int agent_range,const int agent_dir,const int target_x, const int target_y);
    // // ObjectIdx   check_common(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // // ObjectIdx   check_common(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   check_common(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check_common(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   check_nest(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check_nest(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   check_nest_private(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check_nest_private(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   check_distribute(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check_distribute(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   check_string(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check_string(const std::vector<ObjectIdx>& arguments ) const;

    // ObjectIdx   check(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    // ObjectIdx   check(const std::vector<ObjectIdx>& arguments ) const;

    ObjectIdx   check1(const State& state, const std::vector<ObjectIdx>& arguments ) const;
    ObjectIdx   check1(const std::vector<ObjectIdx>& arguments );
 //    //! Procedurally defined symbols
 //    //! initial location of objects
 //    // ObjectIDx is in fs-types
 //    // two different methods
	// ObjectIdx   initial_location(const State& state, const std::vector<ObjectIdx>& arguments ) const;
 //    ObjectIdx   initial_location(const std::vector<ObjectIdx>& arguments ) const;

 //    //! initial number of pellets at a given location
 //    ObjectIdx   initial_num_pellets(const State& state, const std::vector<ObjectIdx>& arguments ) const;
 //    ObjectIdx   initial_num_pellets(const std::vector<ObjectIdx>& arguments ) const;

 //    //! move_ghost(?g)
 //    //! deterministic policy that determines the location the ghost will move
 //    ObjectIdx   move_ghost(const State& state, const std::vector<ObjectIdx>& arguments ) const;
 //    ObjectIdx   move_ghost(const std::vector<ObjectIdx>& arguments ) const;

 //    //! x(?o) - x coordinate of an object
 //    ObjectIdx  x(const State& state, const std::vector<ObjectIdx>& arguments ) const;
 //    ObjectIdx  x(const std::vector<ObjectIdx>& arguments ) const;

 //    //! y(?o) - y coordinate of an object
 //    ObjectIdx  y(const State& state, const std::vector<ObjectIdx>& arguments ) const;
 //    ObjectIdx  y(const std::vector<ObjectIdx>& arguments ) const;
    
 //    //! valid_move(?l)
 //    //! whether location ?l is valid_move from the current location of the pacman
 //    bool  valid_move(const State& state, const std::vector<ObjectIdx>& arguments ) const;// the const at the end is to protected all those private variable
 //    bool  valid_move(const std::vector<ObjectIdx>& arguments ) const;


// protected:

//     int     get_x( ObjectIdx o ) const { return _location_x.at(o); }//return boost::get<int>( _location_x.at(o) ); }
//     int     get_y( ObjectIdx o ) const { return _location_y.at(o); }//return boost::get<int>( _location_y.at(o) ); }

//     unsigned manhattan( ObjectIdx src, ObjectIdx dst ) const {
//         return std::abs( get_x(src) - get_x(dst) ) + std::abs( get_y(src) - get_y(dst) );
//     }

//     bool     adjacent( ObjectIdx src, ObjectIdx dst ) const {
//         return manhattan(src,dst) <= 1;
//     }

//protected:

    //! These guys are static.
    // std::vector<ObjectIdx>                                      _pacman;
    // std::vector<ObjectIdx>                                      _ghost;
    // std::vector<ObjectIdx>                                      _location;
    // std::unordered_map<ObjectIdx,ObjectIdx>                     _location_x;
    // std::unordered_map<ObjectIdx,ObjectIdx>                     _location_y;
    // std::unordered_map<ObjectIdx,bool>                          _blocked;
	
	//unsigned _width; // The width of the map
};


//what's this for?
// define a class
// class MoveGhostTerm : public fs::AxiomaticTerm {
// public:
//     MoveGhostTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
// 	MoveGhostTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "move_ghost"; };

// 	ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };


// class AddoneCountTerm : public fs::AxiomaticTerm {
// public:
//     AddoneCountTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     AddoneCountTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "addone_count"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };

// class DoubleCountTerm : public fs::AxiomaticTerm {
// public:
//     DoubleCountTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     DoubleCountTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "double_count"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };


// class CheckSeeingTerm : public fs::AxiomaticTerm {
// public:
//     CheckSeeingTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckSeeingTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check_seeing"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };


// class CheckCommonTerm : public fs::AxiomaticTerm {
// public:
//     CheckCommonTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckCommonTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check_common"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };

// class CheckNestTerm : public fs::AxiomaticTerm {
// public:
//     CheckNestTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckNestTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check_nest"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };

// class CheckNestPrivateTerm : public fs::AxiomaticTerm {
// public:
//     CheckNestPrivateTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckNestPrivateTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check_nest_private"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };


// class CheckDistributeTerm : public fs::AxiomaticTerm {
// public:
//     CheckDistributeTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckDistributeTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check_distribute"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };



// class CheckStringTerm : public fs::AxiomaticTerm {
// public:
//     CheckStringTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckStringTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check_string"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };

// class CheckTerm : public fs::AxiomaticTerm {
// public:
//     CheckTerm( const std::vector<const fs::Term*>& subterms );
//     // create a clone of the class
//     CheckTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "check"; };

//     ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:
//     //reference with constant address
//     const External& _external;
// };

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

// class XTerm : public fs::AxiomaticTerm {
// public:
//     XTerm( const std::vector<const fs::Term*>& subterms );

// 	XTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "x"; };

// 	ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:

//     const External& _external;
// };

// class YTerm : public fs::AxiomaticTerm {
// public:
//     YTerm( const std::vector<const fs::Term*>& subterms );

// 	YTerm* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "y"; };

// 	ObjectIdx compute(const State& state, std::vector<ObjectIdx>& arguments) const override;
// protected:

//     const External& _external;
// };

// class ValidMoveFormula : public fs::AxiomaticFormula {
// public:

//     ValidMoveFormula( const std::vector<const fs::Term*>& subterms);

//     ValidMoveFormula* clone(const std::vector<const fs::Term*>& subterms) const override;

//     std::string name() const override { return "valid_move"; };

// 	bool compute(const State& state, std::vector<ObjectIdx>& arguments) const override;

// protected:

//     const External& _external;

// };

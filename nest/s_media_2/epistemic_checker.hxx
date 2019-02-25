//
// Created by ghu1 on 21/08/18.
//

#include <vector>
#include <string>
#include <iostream>
#include <list>

#ifndef S_MEDIA_EPISTEMIC_CHECKER_HXX
#define S_MEDIA_EPISTEMIC_CHECKER_HXX

using namespace std;


class Agent;
class Variable;
class Object;
class ProblemState;
class Query;
class Seeing;
class Knowledge;

class Variable
{
private:
    string value;
    string name;
    string id;
public:
    Variable(string name, string value, string id)
    {
        this->value=value;this->name=name;this->id=id;
    };
//    bool compareVariable(Variable &v)
//    {
//        return v.sameName(this->name)&&v.sameId(this->id)&&v.sameValue(this->value);
//    };
    void setV(string v){this->value = v;};
    bool sameName(string name) {return name == this->name;};
    bool sameValue(string value) {return value == this->value;};
    bool sameId(string id) {return id == this->id;};
    string getValue(){return this->value;};
    string getName(){return this->name;};
    string getId(){return this->id;};
    static Variable getNone(){return *new Variable("None","None","None"); };
    string show(){
        string result = "[<";
        result += this->id;
        result += ">'s ";
        result += this->name;
        result += ": ";
        result += this->value;
        result += "]";
        return result;
    };
    string print()
    {
        string result;
        result += this->name;
        result += ":";
        result += this->value;
        return result;
    };
    Variable* getPtr(){return this;};

};


class Object
{
private:
    string id;

public:
    vector<Variable> variables;
    Object(string id){this->id=id;};
    bool compareObject(Object &o)
    {
        if (this->getId()!=o.getId())
            return false;
        for (auto i:o.variables)
        {
            if (!i.sameValue(this->getV(i.getName())))
                return false;
        }
        return true;
    };
    string getV(string variable_name)
    {
        for (auto i:this->variables)
        {
            if (i.sameName(variable_name))
                return i.getValue();
        }
        return "NONE";
    };
    string getId(){return this->id;};
    void addVariable(string name, string value)
    {
        this -> variables.push_back(*new Variable(name,value,this->id));
    };
    string show()
    {
        string result;
        result += "Object ";
        result += this->id;
        result += ": ";
        for (auto i: variables)
        {
            result += "\"";
            result += i.getName();
            result += "\": ";
            result += i.getValue();
            result += ", ";
        }
        result +="\n";
        return result;
    };
    string print()
    {
        string result;
        result += this->id;
        result +=";";
        for (auto i: variables)
        {
            result+=i.print();
            result+=";";
        }
        result.pop_back();
        return result;
    }

};

class Agent
{
private:
    string id;

public:
    vector<Variable> variables;
    Agent(string id){this->id=id;};
    bool changeV(string name, string value)
    {
        for (auto i:variables)
        {
            if (i.sameName(name))
            {
                i.setV(value);
                return true;
            }

        }
        return false;
    }
    string getV(string variable_name)
    {
        for (auto i:variables)
        {
            if (i.sameName(variable_name))
                return i.getValue();
        }
        return "NONE";
    };

    void addVariable(string name, string value)
    {
        this -> variables.push_back(*new Variable(name,value,this->id));
    };
    string show()
    {
        string result;
        result += "Agent ";
        result += this->id;
        result += ": ";
        for (auto i: variables)
        {
            result += "\"";
            result += i.getName();
            result += "\": ";
            result += i.getValue();
            result += ", ";
        }
        result +="\n";
        return result;
    };
    string getId(){return this->id;};
    bool seesAgent(Agent &a);
    bool seesObject(Object &o);
    bool compareAgent(Agent &a)
    {
        if (this->getId()!=a.getId())
            return false;
        for (auto i:a.variables)
        {
            if (!i.sameValue(this->getV(i.getName())))
                return false;
        }
        return true;
    };
    Agent seesAV(Agent &a);
    Object seesOV(Object &o);
    string print()
    {
        string result;
        result += this->id;
        result +=";";
        for (auto i: variables)
        {
            result+=i.print();
            result+=";";
        }
        result.pop_back();
        return result;
    }
};

class ProblemState
{
private:
    vector<Agent> agents;
    vector<Object> objects;
public:

    //constructor
    ProblemState(vector<Agent> agents,vector<Object> objects)
    {
        this -> agents = agents;
        this -> objects = objects;
    };
    void clear()
    {
        this -> agents.clear();
        this -> objects.clear();
    };
    string show()
    {
        string result;
        result = "\n\n----STATE:\nagents:\n";
        for (auto i: agents)
            result += i.show();
        result += "objects:\n";
        for (auto i : objects)
            result += i.show();
        result += "\n";
        return result;

    };
    vector<Agent>* getAgents(){return &(this -> agents);};
    vector<Object>* getObjects(){return &(this -> objects);};
    ProblemState getAgentState(Agent agt)
    {
        vector<Agent> result_agents;
        vector<Object> result_objects;
        for (auto i: this->objects)
        {
            result_objects.push_back(agt.seesOV(i));
        }
        for (auto i: this->agents)
        {
            result_agents.push_back(agt.seesAV(i));
        }
        ProblemState new_state(result_agents,result_objects);
        return new_state;
    };
    string print()
    {
        string result;
        result+="state:/agents: ";
        for (auto i: agents)
        {
            result+=i.print();
            result+="|";
        }
        result.pop_back();
        result.append(" variables: ");
        for (auto i: objects)
        {
            result+=i.print();
            result+="|";
        }
        result.pop_back();
        return result;
    }
    bool changeAgentV(string id, string name, string value)
    {
        for (auto &i : agents)
        {
            if (i.getId()==id)
            {
                for(auto &v:i.variables)
                {
                    if (v.sameName(name))
                    {
                        v.setV(value);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    bool changeObjectV(string id, string name, string value)
    {
        for (auto &i : objects)
        {
            if (i.getId()==id)
            {
                for(auto &v:i.variables)
                {
                    if (v.sameName(name))
                    {
                        v.setV(value);
                        return true;
                    }
                }
            }
        }
        return false;
    }




    bool findAgent(string name)
    {
        for (auto i:agents)
        {
            if(i.getId()==name)
                return true;
        }
        return false;
    }
    Agent getAgent(string name)
    {
        for (auto i:agents)
        {
            if(i.getId()==name)
                return i;
        }
        //return NULL;
    };
    bool findObject(string name)
    {
        for (auto i:objects)
        {
            if(i.getId()==name)
                return true;
        }
        return false;
    }
    Object getObject(string name)
    {
        for (auto i:objects)
        {
            if(i.getId()==name)
                return i;
        }
        //return NULL;
    };
    bool compare(ProblemState &s);
    bool checkV(Variable &v);
    bool checkS(Seeing &s);
};



class Seeing
{
public:
    bool negation;
    enum {ES,DS,CS,SV} seeing_type;
    enum {SEEING,VARIABLE} ptr_type;
    union
    {
        Seeing* seeing_ptr;
//        class pair<string,Object>* object_ptr;
//        class pair<string,Agent>* agent_ptr;
        Variable* variable_ptr;
    };
    vector<string> agent_ids;

    Seeing(bool negation, string seeing_type_string, string ptr_type_str, vector<string> agent_ids)
    {
        if (seeing_type_string == "es") this -> seeing_type = ES;
        else if (seeing_type_string == "ds") this -> seeing_type = DS;
        else if (seeing_type_string == "cs") this -> seeing_type = CS;
        else if (seeing_type_string == "sv") this -> seeing_type = SV;
        //else assert("seeing type error when init");

        if (ptr_type_str == "seeing") this -> ptr_type = SEEING;
//        else if (ptr_type_str == "object") this -> ptr_type = OBJECT;
//        else if (ptr_type_str == "agent") this -> ptr_type = AGENT;
        else if (ptr_type_str == "variable") this -> ptr_type = VARIABLE;
        //else assert("seeing pointer type error when init");

        this -> agent_ids = agent_ids;
        this -> negation = negation;
    };
    string show()
    {
        string result;
        result.append("(in group [");
        if (seeing_type!=SV)
        {
            for (auto i : agent_ids)
            {
                result.append(i);
                result.append(",");
            }
            result.pop_back();
        }
        result.append("] ");
        //cout << "seeing agent fine"<<endl;
        switch(seeing_type)
        {
            case ES: result.append("everyone sees "); break;
            case DS: result.append("distributed sees "); break;
            case CS: result.append("commonly sees "); break;
            case SV: result.append("sees target "); break;
                //default: assert("seeing type error when show");
        }
        //cout << "seeing case fine"<<endl;
        switch (ptr_type)
        {
            case SEEING: result.append(seeing_ptr->show()); break;
            case VARIABLE: result.append(variable_ptr->show());break;
//            case OBJECT: result.append(object_ptr->second.show()); break;
//            case AGENT: result.append(agent_ptr->second.show()); break;
                //default: assert("seeing pointer type error when show");
        }
        //cout << "seeing next fine"<<endl;
        return result;
    };

    ProblemState getState(ProblemState s);
};

class Knowledge
{

public:
    bool negation= false;
    enum {EK,DK,CK} knowledge_type;
    enum {KNOWLEDGE,SEEING,VARIABLE} ptr_type;
    union
    {
        Knowledge* knowledge_ptr;
        Seeing* seeing_ptr;
//        class pair<string,Object>* object_ptr;
//        class pair<string,Agent>* agent_ptr;
        Variable* variable_ptr;
    };
    vector<string> agent_ids;
    //Query();
    Knowledge(bool negation,string knowledge_type_str,string ptr_type_str, vector<string> agent_ids)
    {
        if (knowledge_type_str == "ek") this -> knowledge_type = EK;
        else if (knowledge_type_str == "ck") this -> knowledge_type = CK;
        else if (knowledge_type_str == "dk") this -> knowledge_type = DK;
        //else assert("knowledge type error when init");

        if (ptr_type_str == "knowledge") this -> ptr_type = KNOWLEDGE;
        else if (ptr_type_str == "seeing") this -> ptr_type = SEEING;
//        else if (ptr_type_str == "agent") this -> ptr_type = AGENT;
//        else if (ptr_type_str == "object") this -> ptr_type = OBJECT;
        else if (ptr_type_str == "variable") this -> ptr_type = VARIABLE;
        //else assert("knowledge pointer type error when init");

        this -> negation = negation;
        this -> agent_ids = agent_ids;

    };

    string show()
    {
        string result;
        result.append("(in group [");
        for (auto i : agent_ids)
        {
            result.append(i);
            result.append(",");
        }
        result.pop_back();
        result.append("] ");
        //cout << "kwnoing agent fine"<<endl;
        //cout << result<<endl;
        switch(knowledge_type)
        {
            case EK: result.append("everyone knows "); break;
            case CK: result.append("commonly knows "); break;
            case DK: result.append("distributed knows "); break;
                //default: assert("knowledge type error when show");
        }
        //cout << "kwnoing type fine"<<endl;
        //cout << result<<endl;
        switch (ptr_type)
        {
            case SEEING: result.append(seeing_ptr->show()); break;
//            case OBJECT: result.append(object_ptr->second.show()); break;
//            case AGENT: result.append(agent_ptr->second.show()); break;
            case VARIABLE: result.append(variable_ptr->show());break;
            case KNOWLEDGE: result.append(knowledge_ptr->show()); break;
                //default: assert("knowledge pointer type error when init");
        }
        //cout << "kwnoing next fine"<<endl;
        //cout << result<<endl;
        result.append(") ");
        return result;
    };
    list<Seeing*> KtoS();
};

class Query
{
public:
    enum
    {
        SEEING,
        KNOWLEDGE
    }query_type;
    union
    {
        Seeing* seeing_ptr;
        Knowledge* knowledge_ptr;
    };

    Query(string query_type_str)
    {
        if (query_type_str == "knowledge") this -> query_type = KNOWLEDGE;
        else if (query_type_str == "seeing") this -> query_type = SEEING;
    };
    string show()
    {
        string result;
        switch (query_type)
        {
            case KNOWLEDGE:
                result+="This is a knowledge query:\n\t";
                result.append(knowledge_ptr->show());
                break;
            case SEEING:
                result.append("This is a seeing query:\n\t");
                result.append(seeing_ptr->show()); break;
                //default: assert("query type error when show");
        }
        return result;
    };
};





bool check_epistemic(string str);
template <typename T> T translate(string str);
Seeing* transS(vector<string> details);
Knowledge* transK(vector<string> details);
Query* transQ(string query_str);


ProblemState unionState(ProblemState s1, ProblemState s2);
ProblemState intersectState(ProblemState s1, ProblemState s2);



//help functions
vector<string> split(string str, char ch);
void print_list(vector<string> list);

//bool sees(string agent_l,string agent_d,string agent_r,string target_l);
bool sees(string agent_l,string target_l);



#endif //S_MEDIA_EPISTEMIC_CHECKER_HXX

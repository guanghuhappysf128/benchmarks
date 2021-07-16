import os

def find(name, path):
    for root,dirs, files in os.walk(path):
        if name in files:
            return os.path.join(root,name)

# this needed to be updated to check whether the change has already been made
def adding_fpermissive():
    sconstruct_path=find("SConstruct",os.environ['FS_PATH']+"/planners/generic/")

    f = open(sconstruct_path, "r")
    contents = f.readlines()
    f.close()

    contents.insert(32, "#")
    contents.insert(34, "env.Append( CCFLAGS = ['-Wall', '-pedantic', '-std=c++14', '-fpermissive' ] )\n")

    f = open(sconstruct_path, "w")
    contents = "".join(contents)
    f.write(contents)
    f.close()

# this needed to be updated to check whether the change has already been made
def adding_external_function_files():
    sconstruct_path=find("SConstruct",os.environ['FS_PATH']+"/planners/generic/")

    f = open(sconstruct_path, "r")
    contents = f.readlines()
    f.close()

    contents.insert(32, "#")
    contents.insert(34, "env.Append( CCFLAGS = ['-Wall', '-pedantic', '-std=c++14', '-fpermissive' ] )\n")

    f = open(sconstruct_path, "w")
    contents = "".join(contents)
    f.write(contents)
    f.close()

    external_path=find("runner.py",os.environ['FS_PATH']+"/python/parser/")

    f = open(external_path, "r")
    contents = f.readlines()
    f.close()

    contents.insert(92, "            if os.path.isfile(base_dir + '/translating.hxx'):  # We also copy a tranlaing hxx header file for generating the initial state from pddl problem file\n")
    contents.insert(93, "                shutil.copy(base_dir + '/translating.hxx', target_dir)\n")
    contents.insert(94, "            if os.path.isfile(base_dir + '/epistemic_checker.cxx'):  # We also copy an epistemic relation checker cxx\n")
    contents.insert(95, "                shutil.copy(base_dir + '/epistemic_checker.cxx', target_dir)\n")
    contents.insert(96, "            if os.path.isfile(base_dir + '/epistemic_checker.hxx'):  # We also copy an epistemic relation checker cxx\n")
    contents.insert(97, "                shutil.copy(base_dir + '/epistemic_checker.hxx', target_dir)\n")
    contents.insert(98, "            if os.path.isfile(base_dir + '/domain.hxx'):  # We also copy a domain header file, which specify the domain dependent seeing rules\n")
    contents.insert(99, "                shutil.copy(base_dir + '/domain.hxx', target_dir)\n")

    f = open(external_path, "w")
    contents = "".join(contents)
    f.write(contents)
    f.close()

def adding_n_arity1(target):
    file_path =find("static.hxx",os.environ['FS_PATH']+"/src/utils")
    print(file_path)
    f = open(file_path,"r")
    data = f.readlines()
    f.close()
    current = 4
    while any(f"Arity{current}" in s for s in data):
        current = current +1
    print(current)
    for i in range(current,target+1):
        l = len(data)
        l=l-2
        data.insert(l,"\n")
        l = l+1
        data.insert(l,"class Arity"+str(i)+"Function : public StaticExtension {\n")
        l = l+1
        data.insert(l,"protected:\n")
        l = l+1
        data.insert(l,"\tSerializer::BoostArity"+str(i)+"Map _data;\n")
        l = l+1
        data.insert(l,"\n")
        l = l+1
        data.insert(l,"public:\n")
        l = l+1
        data.insert(l,"\tArity"+str(i)+"Function(Serializer::BoostArity"+str(i)+"Map&& data) : _data(std::move(data)) {}\n")
        l = l+1
        data.insert(l,"\t\n")
        l = l+1
        temp = "\tObjectIdx value("
        for j in range(i):
            temp = temp +f"ObjectIdx x{j}, "
        temp1 = temp[:-2]
        temp1 = temp1 +") const { return _data.at(std::make_tuple("
        for j in range(i):
            temp1 = temp1 +f"x{j},"
        temp2 = temp1[:-1]
        temp2 = temp2 +")); }\n"
        data.insert(l,temp2)
        l = l+1
        data.insert(l,"\t\n")
        l = l+1
        data.insert(l,"\tFunction get_function() const override {\n")
        l = l+1
        data.insert(l,"\t\tauto& data = _data;\n")
        l = l+1
        data.insert(l,"\t\treturn [&data](const ValueTuple& parameters){\n")
        l = l+1
        data.insert(l,"\t\t\tassert(parameters.size() == "+str(i)+");\n")
        l = l+1
        temp = "\t\t\treturn data.at(std::make_tuple("
        for j in range(i):
            temp = temp +f"parameters[{j}], "
        temp1 = temp[:-2]
        temp1 = temp1 +"));\n"
        data.insert(l,temp1)
        l = l+1
        data.insert(l,"\t\t};\n")
        l = l+1
        data.insert(l,"\t}\n")
        l = l+1
        data.insert(l,"};\n")
        l = l+1
        data.insert(l,"\n")
        l = l+1      
        data.insert(l,"class Arity"+str(i)+"Predicate : public StaticExtension {\n")
        l = l+1
        data.insert(l,"protected:\n")
        l = l+1
        data.insert(l,"\tSerializer::BoostArity"+str(i)+"Set _data;\n")
        l = l+1
        data.insert(l,"\n")
        l = l+1
        data.insert(l,"public:\n")
        l = l+1
        data.insert(l,"\tArity"+str(i)+"Predicate(Serializer::BoostArity"+str(i)+"Set&& data) : _data(std::move(data)) {}\n")
        l = l+1
        data.insert(l,"\t\n")
        l = l+1
        temp = "\tbool value("
        for j in range(i):
            temp = temp +f"ObjectIdx x{j}, "
        temp1 = temp[:-2]
        temp1 = temp1 +") const { return _data.find(std::make_tuple("
        for j in range(i):
            temp1 = temp1 +f"x{j},"
        temp2 = temp1[:-1]
        temp2 = temp2 +")) != _data.end(); }\n"
        data.insert(l,"\t\n")
        l = l+1
        data.insert(l,"\tFunction get_function() const override {\n")
        l = l+1
        data.insert(l,"\t\tauto& data = _data;\n")
        l = l+1
        data.insert(l,"\t\treturn [&data](const ValueTuple& parameters){\n")
        l = l+1 
        data.insert(l,"\t\t\tassert(parameters.size() == "+str(i)+");\n")
        l = l+1
        temp = "\t\t\treturn data.find(std::make_tuple("
        for j in range(i):
            temp = temp +f"parameters[{j}], "
        temp1 = temp[:-2]
        temp1 = temp1 +")) != data.end();\n"
        data.insert(l,temp1)            
        l = l+1
        data.insert(l,"\t\t};\n")
        l = l+1 
        data.insert(l,"\t}\n")
        l = l+1
        data.insert(l,"};\n")
        l = l+1
    data_str = "".join(data) 

    f = open(file_path,"w")
    f.write(data_str)
    f.close()
    
def adding_n_arity2(target):
    file_path =find("static.cxx",os.environ['FS_PATH']+"/src/utils")
    print(file_path)
    f = open(file_path,"r")
    data = f.readlines()
    f.close()
    current = 4
    while any(f"arity == {current}" in s for s in data):
        current = current +1
    print(current)
    for i in range(current,target+1):
        l=0
        for j in range(len(data)):
            if '} else WORK_IN_PROGRESS("Such high symbol arities have not yet been implemented");' in data[j]:
                print("Found")
                l=j
        l=l-1
        data.insert(l,"\t} else if (arity == "+str(i)+") {\n")
        l = l+1
        data.insert(l,"\t\tif (type == SymbolData::Type::PREDICATE) extension = new Arity"+str(i)+"Predicate(Serializer::deserializeArity"+str(i)+"Set(filename));\n")
        l = l+1
        data.insert(l,"\t\telse extension = new Arity"+str(i)+"Function(Serializer::deserializeArity"+str(i)+"Map(filename));\n")
        l = l+1
        data.insert(l,"\n")
        l = l+1
    data_str = "".join(data) 

    f = open(file_path,"w")
    f.write(data_str)
    f.close()

def adding_n_arity2(target):
    file_path =find("static.cxx",os.environ['FS_PATH']+"/src/utils")
    print(file_path)
    f = open(file_path,"r")
    data = f.readlines()
    f.close()
    current = 4
    while any(f"arity == {current}" in s for s in data):
        current = current +1
    print(current)
    for i in range(current,target+1):
        l=0
        for j in range(len(data)):
            if '} else WORK_IN_PROGRESS("Such high symbol arities have not yet been implemented");' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-1
        data.insert(l,"\t} else if (arity == "+str(i)+") {\n")
        l = l+1
        data.insert(l,"\t\tif (type == SymbolData::Type::PREDICATE) extension = new Arity"+str(i)+"Predicate(Serializer::deserializeArity"+str(i)+"Set(filename));\n")
        l = l+1
        data.insert(l,"\t\telse extension = new Arity"+str(i)+"Function(Serializer::deserializeArity"+str(i)+"Map(filename));\n")
        l = l+1
        data.insert(l,"\n")
        l = l+1
    data_str = "".join(data) 

    f = open(file_path,"w")
    f.write(data_str)
    f.close()

def adding_n_arity3(target):
    file_path =find("serializer.hxx",os.environ['FS_PATH']+"/src/utils")
    print(file_path)
    f = open(file_path,"r")
    data = f.readlines()
    f.close()
    current = 4
    while any(f"BoostArity{current}Map" in s for s in data):
        current = current +1
    print(current)
    for i in range(current,target+1):
        l=0
        for j in range(len(data)):
            if 'typedef std::set<int> UnarySet;' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-1
        data.insert(l,"\n")
        l = l+1
        temp = "\ttypedef std::map<std::tuple<"
        for j in range (i):
            temp = temp + "int ,"
        temp = temp[:-2]
        temp =  temp+">, int> Arity"+str(i)+"Map;\n"
        data.insert(l,temp)
        l = l+1
        temp = "\ttypedef boost::container::flat_map<std::tuple<"
        for j in range (i):
            temp = temp + "int ,"
        temp = temp[:-2]
        temp =  temp+">, int> BoostArity"+str(i)+"Map;\n"
        data.insert(l,temp)

        l=0
        for j in range(len(data)):
            if '//! For the sake of completeness' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-2
        data.insert(l,"\n")
        l = l+1
        temp = "\ttypedef std::set<std::tuple<"
        for j in range (i):
            temp = temp + "int ,"
        temp = temp[:-2]
        temp =  temp+">> Arity"+str(i)+"Set;\n"
        data.insert(l,temp)
        l = l+1
        temp = "\ttypedef boost::container::flat_set<std::tuple<"
        for j in range (i):
            temp = temp + "int ,"
        temp = temp[:-2]
        temp =  temp+">> BoostArity"+str(i)+"Set;\n"
        data.insert(l,temp)

        l=0
        for j in range(len(data)):
            if '//! Set (de)serialization' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-2
        data.insert(l,"\tstatic BoostArity"+str(i)+"Map deserializeArity"+str(i)+"Map(const std::string& filename);\n")

        l=0
        for j in range(len(data)):
            if 'typedef std::function<void (const std::vector<int>&)> DataInserter;' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-2

        data.insert(l,"\tstatic BoostArity"+str(i)+"Set deserializeArity"+str(i)+"Set(const std::string& filename);\n")


    data_str = "".join(data) 

    f = open(file_path,"w")
    f.write(data_str)
    f.close()

def adding_n_arity4(target):
    file_path =find("serializer.cxx",os.environ['FS_PATH']+"/src/utils")
    print(file_path)
    f = open(file_path,"r")
    data = f.readlines()
    f.close()
    current = 4
    while any(f"BoostArity{current}Map" in s for s in data):
        current = current +1
    print(current)
    for i in range(current,target+1):
        l=0
        for j in range(len(data)):
            if 'Serializer::BoostUnarySet Serializer::deserializeUnarySet(const std::string& filename) {' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-1
        data.insert(l, "\n")
        l = l+1
        data.insert(l,"Serializer::BoostArity"+str(i)+"Map Serializer::deserializeArity"+str(i)+"Map(const std::string& filename) {\n")
        l = l+1
        data.insert(l, "\tBoostArity"+str(i)+"Map data;\n")
        l = l+1
        temp = "DataInserter inserter = [&data](const std::vector<int>& elems) { assert(elems.size() == "+str(i+1)+"); data.insert(std::make_pair(std::make_tuple("
        for j in range(i):
            temp = temp + f"elems[{j}], "
            
        temp = temp[:-2]
        temp = temp + "), elems["+str(i)+"]));};\n"
        data.insert(l, temp)
        l = l+1
        data.insert(l, "\tdeserialize(filename, inserter);\n")
        l = l+1
        data.insert(l, "\treturn data;\n")
        l = l+1
        data.insert(l, "}\n")
        l = l+1

        l=0
        for j in range(len(data)):
            if 'std::ostream& Serializer::serialize(std::ostream& os, const Serializer::BinaryMap& map) {' in data[j]:
                print("Found")
                l=j
        if l ==0:
            print("Not Found")
            return
        l=l-1
        data.insert(l, "\n")
        l = l+1
        data.insert(l,"Serializer::BoostArity"+str(i)+"Set Serializer::deserializeArity"+str(i)+"Set(const std::string& filename) {\n")
        l = l+1
        data.insert(l, "\tBoostArity"+str(i)+"Set data;\n")
        l = l+1
        temp = "DataInserter inserter = [&data](const std::vector<int>& elems) { assert(elems.size() == "+str(i)+"); data.insert(std::make_tuple("
        for j in range(i):
            temp = temp + f"elems[{j}], "
        temp = temp[:-2]
        temp = temp + "));};\n"
        data.insert(l, temp)
        l = l+1
        data.insert(l, "\tdeserialize(filename, inserter);\n")
        l = l+1
        data.insert(l, "\treturn data;\n")
        l = l+1
        data.insert(l, "}\n")
        l = l+1

    data_str = "".join(data) 

    f = open(file_path,"w")
    f.write(data_str)
    f.close()



if __name__ == '__main__':
    # adding_fpermissive()
    # adding_external_function_files()

    n = 11
    # add n arity support in static.hxx
    adding_n_arity1(n)
    # add n arity support in static.cxx
    adding_n_arity2(n)
    # add n arity support in serializer.hxx
    adding_n_arity3(n)
    # add n arity support in serializer.cxx
    adding_n_arity4(n)


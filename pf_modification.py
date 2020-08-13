import os

def find(name, path):
    for root,dirs, files in os.walk(path):
        if name in files:
            return os.path.join(root,name)

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


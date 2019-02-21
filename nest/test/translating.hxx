#include<iostream>
#include<fstream>

using namespace std;

bool writing(string str)
{
	ofstream myfile;
	myfile.open("output.txt");
	myfile << "this is output:\n"<<str<<endl;
	myfile.close();
	return true;
}
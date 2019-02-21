//#include "translating.hxx"
#include <fstream>
#include <vector>
#include <cmath>


using namespace std;
int main()
{
	//initial();
	//state1->print();
	ofstream myfile;
    myfile.open("temp.txt");
    string ind="\t\t\t\t";

    vector<int> range = {0,1};

    // for (int i =511; i>=0;i--)
    // {
    // 	int temp = i;
    // 	int digital = 9;
    // 	myfile << "\t\t\t\t" << "(= (map ";
    // 	while (digital!=0)
    // 	{
    // 		digital--;
    // 		if (temp>=pow(2,digital))
    // 		{
    // 			temp=temp-pow(2,digital);
    // 			myfile << "1 ";
    // 		}
    // 		else
    // 		{
    // 			myfile << "0 ";
    // 		}
    // 	}
    // 	myfile << ") "<< i << ")"<< endl;
    // }

    for (int i =511; i>=0;i--)
    {
    	for (int j=1;j<4;j++)
    	{
    		myfile << "\t\t\t\t" << "(= (check ";
    		myfile << i << " " << j <<") 0)"<< endl;

    	}


    }



    myfile.close();
	return 1;
}

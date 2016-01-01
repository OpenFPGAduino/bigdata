#include<iostream>
using namespace std;
int main(int argc, char** argv)
{
    string name,age;
 
    //读入姓名、年龄
    while(cin >> name >> age)
    {
        //输出姓名、年龄、人数
        cout << name << "/t" << age  << "/t" << "1" << endl;
    }
    return 0;
}

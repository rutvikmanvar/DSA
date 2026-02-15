#include <iostream>

using namespace std;

class Student{
public:
    int rollNo;
    int age;
};

int main(){
    Student s1;
    Student s2;
    s1.rollNo=101;
    s1.age=18;
    cout<<s1.rollNo<<s1.age<<endl;
    cout<<s2.rollNo<<s2.age<<endl;
}
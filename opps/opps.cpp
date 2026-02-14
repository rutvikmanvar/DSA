#include <iostream>

using namespace std;

class Teacher{
private:
    double salary;
public:
    string name;
    string dept;
    string subject;

    //setter
    void setSalary(double s){
        salary = s;
    }
    //getter
    double getSalary(){
        return salary;
    }
};

int main(){
    Teacher t1;
    t1.name="Rutvik";
    t1.dept="Computer Science";
    t1.subject="C++";
    t1.setSalary(59000);
    cout<<t1.name<<endl<<t1.dept<<endl<<t1.subject<<endl<<t1.getSalary()<<endl; 
}
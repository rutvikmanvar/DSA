#include<iostream>

using namespace std;

int main(){
    int a=5;

    int *p=&a;
    cout<<*p<<endl;

    int *q = p;
    cout<<p<<" - "<<*p<<endl;
    cout<<q<<" - "<<*q<<endl;

    p++;
    q++;
    cout<<p<<" - "<<*p<<endl;
    cout<<q<<" - "<<*q<<endl;
}
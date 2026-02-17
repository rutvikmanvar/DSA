#include<iostream>

using namespace std;

int sqrt(int n){
    int s=0;
    int e=n;
    long long int ans=-1;
    long long int mid=s+(e-s)/2;
    
    while(s<=e){
        long long int sqare=mid*mid;
        if(sqare == n){
            return mid;
        }
        if(sqare<n){
            ans=mid;
            s=mid+1;
        }
        else{
            e=mid-1;
        }
        mid=s+(e-s)/2;
    }
    return ans;
}

double morePresition(int n,int presition,int tempsol){
    double factor=1;
    double ans= tempsol;
    for(int i=0;i<presition;i++){
        factor=factor/10;
        for(double j=0;j*j<n;j+=factor){
            ans=j;
        }
    }
    return ans;
}

int main(){
    int n;
    cout<<"Find Square Root = ";
    cin>>n;
    int tempResult = sqrt(n);
    double result=morePresition(n,5,tempResult);
    cout<<"Sqaure root of "<<n<<" is = "<<result<<endl;
}
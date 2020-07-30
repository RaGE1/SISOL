//https://www.hackerrank.com/contests/smart-interviews/challenges/si-reverse-bits
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */  
    long long int t,n;
    cin>>t;
    while(t--)
    {
        cin>>n;
        long int s=0;
        for(long long int i=0;i<31;i++)
        {
            if(n&(1ll<<i))s+=(1ll<<(31-i));
        }
        cout<<s<<endl;
    }
    return 0;
}

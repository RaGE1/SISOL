//https://www.hackerrank.com/contests/smart-interviews/challenges/si-activity-selection
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;
struct act
{
    int f,s;
};
int cmp(act a,act b)
{
    return a.f<b.f;
}

int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int t;
    cin>>t;
    while(t--)
    {
        int n,i,c=0,j=0;
        cin>>n;
      act  a[100000];
        for(i=0;i<n;i++)
            cin>>a[i].s;
        for(i=0;i<n;i++)
            cin>>a[i].f;
        sort(a,a+n,cmp);
        c++;j=0;
        for(i=1;i<n;i++)
        {
            if(a[i].s>=a[j].f)
            {  c++;j=i;}
        }
        cout<<c<<"\n";
    }
    return 0;
}

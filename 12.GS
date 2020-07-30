//https://www.hackerrank.com/contests/smart-interviews/challenges/si-gone-sort
#include <bits/stdc++.h>

using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int t;
    cin>>t;
    while(t--)
    {
        int n;
        cin>>n;
        int a[n+1];
       for(int i=0;i<=n;i++)
           a[i]=0;
int i,max,n1=n;
max=-1;
while(n--){
    cin>>i;
     a[i]=a[i-1]+1;
    if(a[i]>max)
    max=a[i];
}
        
    
        
   
       
        
        cout<<n1-max<<"\n";
    }
    return 0;
}

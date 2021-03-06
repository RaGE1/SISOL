//https://www.hackerrank.com/contests/smart-interviews/challenges/si-max-subarray-sum
#include<bits/stdc++.h>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);cout.precision(10);
    int t;
    cin>>t;
    while(t--)
    {
        //kadane's algorithm
        int n;
        cin>>n;
        int a[n] = {};
        for(int i=0;i<n;i++)
        {
            cin>>a[i];
        }
        int maxs = INT_MIN;
        int cur = 0;
        int k=0,j=0,l = 0;
        for(int i=0;i<n;i++)
        {
            cur+=a[i];
            if(cur<0)
            {
                cur = 0;
                k = i+1;
            }
            if(maxs<cur)
            {
                l = k;
                maxs = cur;
                j = i;
            }
        }
        cout<<maxs<<" "<<l<<" "<<j<<endl;
    }
    return 0;
}

//https://www.hackerrank.com/contests/smart-interviews/challenges/si-fibonacci-series
#include <bits/stdc++.h>
using namespace std;
long long int mod= 1000000007;
long long int k[2][2];
void mul(long long int F[2][2], long long int M[2][2]) 
{ 
long long int x =  (F[0][0]*M[0][0])%mod + (F[0][1]*M[1][0])%mod; 
long long int y =  (F[0][0]*M[0][1])%mod + (F[0][1]*M[1][1])%mod; 
long long int z =  (F[1][0]*M[0][0])%mod + (F[1][1]*M[1][0])%mod; 
long long int w =  (F[1][0]*M[0][1])%mod + (F[1][1]*M[1][1])%mod; 
  
  k[0][0] = x%mod; 
  k[0][1] = y%mod; 
  k[1][0] = z%mod; 
  k[1][1] = w%mod; 
 
}
long long int upow(long long int f[][2],long long int n)
{
    long long int ans[2][2]={ {1, 1}, {1, 0} };
    while(n>0)
    {
        if(n%2==1)
    {mul(f,ans);
    ans[0][0]=k[0][0];
            ans[0][1]=k[0][1];
                ans[1][1]=k[1][1];
                    ans[1][0]=k[1][0];
    }
        mul(f,f);
        f[0][0]=k[0][0];
            f[0][1]=k[0][1];
                f[1][1]=k[1][1];
                    f[1][0]=k[1][0];
    
        n/=2;
    }
    return ans[0][0];
}
long long int fib(long long int n)
{
    long long int f[2][2] ={ {1, 1}, {1, 0} }; 
 return    upow(f,n-1);

    
}

int main() {
int t;
cin>>t;
while(t--)
{
    long long int n;
    cin>>n;
    cout<<fib(n)<<"\n";
 
}
    return 0;
}

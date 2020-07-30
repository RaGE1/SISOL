//https://www.hackerrank.com/contests/smart-interviews/challenges/si-palindrome-partitioning
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
        string s;
        cin>>s;
        int isp[n+1][n+1],ans[n+1];
        for(int i=0;i<n;i++)
            isp[i][i]=1;
     /*   for(int i=0;i<n-1;i++)
        {
            if(s[i]==s[i+1])
                isp[i][i+1]=1;
            else
                isp[i][i+1]=0;
        }*/
        for(int l=2;l<=n;l++)
        {
            for(int i=0;i<n-l+1;i++)
            {
                int j=i+l-1;
                if(s[i]==s[j] && (isp[i+1][j-1] || l==2) )
                    isp[i][j]=1;
                else
                    isp[i][j]=0;
                    
            }
        }
        for(int i=0;i<n;i++)
        {
            if(isp[0][i])
                ans[i]=0;
            else
            {int temp=INT_MAX;
                for(int j=0;j<i;j++)
                {
                    if(isp[j+1][i])
                        temp=min(temp,ans[j]+1);
                }
                ans[i]=temp;
            }
        }
        cout<<ans[n-1]<<"\n";
    }
    return 0;
}

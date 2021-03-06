//https://www.hackerrank.com/contests/smart-interviews/challenges/si-path-in-a-graph
#include <bits/stdc++.h>

using namespace std;
bool vis[1000001];
void dfs(int a,vector<int>v[]){
    if(!vis[a]){
        
        vis[a]=1;
        for(int i=0;i<v[a].size();i++){
            if(!vis[v[a][i]])
                dfs(v[a][i],v);
        }
    }
    
}


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int t;
    cin>>t;
    for(int t1=1;t1<=t;t1++){
        cout<<"Test Case #"<<t1<<":\n";
     
        int n,m;
        cin>>n>>m;
           vector<int>v[n+1];
        while(m--){
            int a,b;
            cin>>a>>b;
            v[a].push_back(b);
            v[b].push_back(a);
        }
        int q;
        cin>>q;
        while(q--){
            
            int a,b;
            
              for(int i1=0;i1<=n;i1++)
                vis[i1]=0;
            cin>>a>>b;
            dfs(a,v);
            if(vis[b])
                cout<<"Yes\n";
            else
                cout<<"No\n";
        }
    }
    return 0;
}

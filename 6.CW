//https://www.hackerrank.com/contests/smart-interviews/challenges/si-collecting-water
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int min(int a,int b)
{
    if(a<b)
        return a;
    else 
        return b;
}
int max(int a,int b)
{
    if(a>b)
        return a;
    else 
        return b;
}

int main() {

int t;
    scanf("%d",&t);
    while(t--)
    {
        int t,n,a[100000],r=0,i,j;
      scanf("%d",&n);
        for(i=0;i<n;i++)
            scanf("%d",&a[i]);

      
  int left[100000],right[100000]; 
    left[0] = a[0]; 
    for ( i = 1; i < n; i++) 
        left[i] = max(left[i - 1], a[i]); 
  
    right[n - 1] = a[n - 1]; 
    for (i = n - 2; i >= 0; i--) 
        right[i] = max(right[i + 1], a[i]); 
 
    for (int i = 0; i < n; i++) 
        r += min(left[i], right[i]) - a[i];
        printf("%d\n",r);
}
    }

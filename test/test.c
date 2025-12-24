#include <stdio.h>
#include <stdlib.h>

static char* strA = "Hello A";

void hello(int a){
    if(a == 1){
        printf("Hello A\n");
    }
    else{
        printf("%s\n",strA);
    }
    return;
}

int main(){
    int a = 10;
    int b = 2;
    int c = 0;
    char* strB = "Ohhhh bililib";
    scanf("%d",&c);
    b = c + b;
    printf("%s\n",strB);

    printf("%d\n",a-c+b);
    
    hello(a-c+b);
    return 0;
}
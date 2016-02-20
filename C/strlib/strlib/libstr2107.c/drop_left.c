#include "stringH.h"
#include <stdlib.h>
#include <string.h>

void drop_left(char *s, int n){
    if(!*s) return;
    int x = findlength(s);
    char *d = '\0';
    
    if(n >= x){*s = '\0';} 
    else{
        char *t = s;
        while(*(t+n)){
            *s = *(t+n);
            s++; t++;
        }
        *s = '\0';
    } 
}
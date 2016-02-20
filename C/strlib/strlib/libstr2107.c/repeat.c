#include <stdlib.h>
#include "stringH.h"
#include <stdio.h>

char *repeat(char *s, int x){
    if(s==NULL)return NULL;
    int newlen = x*findlength(s);
    char *result = calloc(newlen,sizeof(char));
    char *y = result;
    int i;
    char *t;
    
    for(i = 0;i < x; i++){
        t = s;
        while(*t){
            *y = *t;
            y++; t++;
        }
    }
    *y = '\0';
    return result;
}

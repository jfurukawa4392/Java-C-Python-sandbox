#include "stringH.h"
#include <stdlib.h>

void center(char *s,int width){
    int len = findlength(s);
    if(len >= width) return;
    int padding = (width-len);
    char *result = malloc(len+padding);
    char *x = result;
    
    int i;
    for(i = 0;i < (padding/2);i++){
        *x = ' ';
        x++;
    }
    while(*s){
        *x = *s;
        x++;
        s++;
    }
    while(*x){
        *x = ' ';
        x++;
    }
    s = result;
    free(result);
}

#include "stringH.h"
#include <stdlib.h>

void strcopy(char* dest,char* origin){
    char *x=dest, *y=origin;
    if(y==NULL){return;}
    while(*y){
        *x = *y;
        x++; y++;
    }
}

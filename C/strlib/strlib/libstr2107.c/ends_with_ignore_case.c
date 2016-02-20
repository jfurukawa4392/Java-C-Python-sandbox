#include "stringH.h"
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

int ends_with_ignore_case(char *s, char *suff){
    int x = findlength(suff);
    
    while(*s+x){ //reach the first element to be changed using length of suff
        s++;
    }
    while(*s){
        if(toupper(*s)!=toupper(*suff)&&findlength(s)==findlength(suff)) return 0;
        s++;
        suff++;
    }
    return 1;
}

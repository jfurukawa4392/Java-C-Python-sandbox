#include <stdlib.h>
#include "stringH.h"

char *intersect(char *s1, char *s2){
    char *result;
    result = calloc(findlength(s1),sizeof(char));
    
    char *a=s1, *b=s2, *i=result;
    
    while(*a){
        if(belongs(b,a)) {*i = *a; i++; a++;}
        else{
            a++;
        }
    }
    result = distinct(result);
    return result;
}
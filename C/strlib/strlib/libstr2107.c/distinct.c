#include "stringH.h"
#include <stdlib.h>

char * distinct(char *s){
    int newlen=findlength(s)+1;
    char *x = malloc(newlen*sizeof(char));
    char *i = x;
        
    while(*s){
        if(belongs(x,s)==0) {*i=*s; i++;} //does s already exist in x?
        else {newlen--;}
        s++;
    }
    x = realloc(x,newlen*sizeof(char));
    return x;
}
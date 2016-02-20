#include "stringH.h"
#include <stdlib.h>

char * remove_chars(char* s1, char* s2){
    char *retval;
    int i = findlength(s1);
    retval=calloc(i,sizeof(char));
    if(retval==NULL) return NULL;
    char *x = retval;
    
    while(*s1){
        if(!belongs(s2,s1)){*x = *s1; x++;}
        s1++;
    }
    return retval;
}

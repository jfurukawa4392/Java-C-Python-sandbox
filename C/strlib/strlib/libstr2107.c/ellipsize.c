#include "stringH.h"
#include <stdlib.h>

char *ellipsize(char *s, int nw){
    int x;
    
    if(!*s){return NULL;}
    else if(x<nw){char *result = calloc(nw+4,sizeof(char)); strcopy(result,s);}
    else{
        char *result = calloc(nw+4,sizeof(char));
        char *i = result;
        
    }
}
#include "stringH.h"
#if !defined(NULL)
    #define NULL ((void*)0)
#endif

char * address_of(char*h, char *n){
    int index=index_of(h,n);
    if(index==-1) {
        return NULL;
    }
    else{
        return h+index;
    }
}
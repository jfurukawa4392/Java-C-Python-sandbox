#include "stringH.h"
#include <stdlib.h>

void drop_right(char *s, int n){
    if(!*s) return;
    int x = findlength(s);
    if(n>=x) {*s = '\0';return;}
    else{
        while(*(s+n)){s++;}
        *s = '\0';
        return;
    }
    
}

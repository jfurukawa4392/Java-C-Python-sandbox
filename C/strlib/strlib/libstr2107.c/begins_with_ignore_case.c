#include "stringH.h"
#include <ctype.h>

int begins_with_ignore_case(char *s, char *pre){
    while(*pre){
        if(toupper(*s)!=toupper(*pre)) return 0;
        s++;
        pre++;
    }
    return 1;
}

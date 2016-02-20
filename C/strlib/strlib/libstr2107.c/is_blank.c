#include <ctype.h>
#include "stringH.h"

int is_blank(char *s){
    if(!s)return (1);
    else{
        while(*s){
            if(*s!='\0'&&(isspace(*s)==0)){
                return 0;
            }
            else{
                s++;
            }
            }
        }
        return 1;
    }

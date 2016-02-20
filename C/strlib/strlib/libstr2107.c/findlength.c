#include <stdio.h>

int findlength(char *s){
    int retval = 0;
    while(*(s)){retval++; s++;}
    return (retval);
}
 

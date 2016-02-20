#include "stringH.h"
#include <stdlib.h>

char *make_space(int width){
    int i;
    char* retval = malloc((width+1)*sizeof(char));
    char* x = retval;
    for(i = 0;i < width;i++){
        x=retval+i;
        *x=' ';        
    }
    return retval;
}

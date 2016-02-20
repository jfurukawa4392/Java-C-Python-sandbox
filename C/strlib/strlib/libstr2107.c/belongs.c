#include <stdlib.h>

int belongs(char* h, char* n){
    while(*h){
        if(*h==*n) {return 1;} 
        h++;
    }
    return 0;
}

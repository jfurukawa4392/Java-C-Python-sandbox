#include "stringH.h"

int index_of(char*h, char *n){
    int ind=0;
    while(*h+ind!='\0'){
        if(*h+ind==*n) return ind;
        ind++;}
    return -1;
}
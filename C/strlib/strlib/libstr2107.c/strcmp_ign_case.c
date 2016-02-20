#include "stringH.h"
#include <stdlib.h>
#include <ctype.h>

int strcmp_ign_case(char *s1, char *s2){
    int x = findlength(s1), y = findlength(s2);
    char *a = s1, *b = s2;
    int result = 0;
    
    while((result = 0)&&(*b)){
        if((isalpha(*b)>0)&&(isalpha(*a)>0)){
            result = (toupper(*a))-(toupper(*b));
        }
        a++;
        b++;
    }
    if(result==0&&x>y){result = 1;}
    else if(result==0&&y>x){result = -1;}
    result *= -1;
   
    return result;
}
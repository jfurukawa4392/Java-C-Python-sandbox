
#include <stdio.h>
#include <stdlib.h>
#include "stringH.h"
#if !defined(NULL)
    #define NULL ((void*)0)
#endif

/*
 * 
 */
int main(int argc, char** argv) {
    char a[]="  ";
    char b[]="hhhhheellooo, world";
    
    int x=findlength(a);
    int y=findlength(b);
    
    printf("a %d   ,    b %d",x,y);
    
    int blankA = is_blank(a);
    int blankB = is_blank(b);
    printf("\na is blank? %d |0 if false, 1 if true",blankA);
    printf("\nb is blank? %d",blankB);
    
    drop_left(b,3);
    printf("\nafter dropping left: %s",b);
    
    drop_right(b,2);
    printf("\nafter dropping right: %s",b);
    
    char *l="l";
    printf("\nindex %d",index_of(b,l));
    
    char *address = address_of(b,l);
    printf("\naddress %d\n",address);
    
    
    char *s=make_space(6);
    printf("%s",s);
    printf("|");
    free(s);
    
    s = distinct(b);
    printf("\n%s",s);
    free(s);
    s = NULL;
    
    printf("\n%d",belongs("hi","x")); //returns 0 if second arg doesn't belong in first
    
    center(b,3);
    printf("\n%s",b);
    
    
    s = "pre";
    char *d = "prefix";
    printf("\n prefix begin with pre? 1 means yes: %d",begins_with_ignore_case(d,s));
    
    s = "x";
    d = "suffix";
    printf("\n suffix end with fix? 1 means yes: %d",ends_with_ignore_case(d,s));
    
    s = "buymorechikin";
    d = "ueoi";
    char *result = remove_chars(s,d);
    printf("\n%s",result);
    free(result);
    
    s = "hi";
    result = repeat(s,3);
    printf("\n%s",result);
    free(result);
    
    s="hello";
    d="world";
    result = intersect(s,d);
    printf("\n%s",result);
    free(result);
    
    s="apple";
    d="bike";
    int r = strcmp_ign_case(d,s);
    printf("\n%d, positive means %s appears first",r,s);
    
    
    
    return (0);
}


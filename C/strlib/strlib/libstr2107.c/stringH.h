/* 
 * File:   stringH.h
 * Author: Jesse Furukawa
 *
 * Created on March 22, 2015, 12:41 PM
 */

int findlength(char *s);
int belongs(char *h, char *n);
void strcopy(char *s, char *d);
int wordcount(char *s);

int is_blank(char *s);
void drop_left(char *s, int n);
void drop_right(char *s, int n);
int index_of(char*h, char *n);
char * address_of(char *h, char *n);
char * make_space(int width);


char * distinct(char *s);

void center(char *s,int width);

int begins_with_ignore_case(char *s, char *pre);
int ends_with_ignore_case(char *s, char *suf);


char * remove_chars(char *s1, char *s2);
char * repeat(char *s, int x);
char *intersect(char *s1, char *s2);
int strcmp_ign_case(char* s1,char* s2);
char *ellipsize(char *s, int nw);
char *replace(char *s, char *pat, char *rep);
char **chop(char *s, char c);
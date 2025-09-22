//Name: Anushka gondane(194)
%{
#include <stdio.h>
int count = 0;  
%}

%%

^.*com$   { count++; }       
.*\n      { }                

%%

int yywrap() {
    return 1;   
}

int main() {
    printf("Enter the lines :\n");
    yylex();   
    printf("\nNumber of lines ending with 'com' = %d\n", count);
    return 0;
}


//Name: Anushka Gondane (194)
%{
#include <stdio.h>
int count = 0;
int count_notcom = 0;
%}

%%
^.*com$       { count++; }
.*|\n          { count_notcom++; }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Number of lines ending with 'com' = %d\n", count);
    printf("Number of lines not ending with 'com' = %d\n", count_notcom);
    return 0;
}



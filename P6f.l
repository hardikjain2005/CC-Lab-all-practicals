%{
#include <stdio.h>
int count = 0;  
%}

%%

^.*com$ { count++; }          
.*\n {}

%%
int yywrap() {
    return 1;   
}
int main() {
yylex();
printf("Enter the lines: ");
printf("Number of lines ending with 'com' = %d\n", count);
return 0;
}


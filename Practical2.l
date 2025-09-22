%{
#include<stdio.h>
int id=0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* { id++;}
.|\n {ECHO;}
%%

int main()
{
printf("Enter your code: \n");
yylex();
printf("Number of IDs are : %d",id);
return 0;
}
int yywrap(){
return 1;
}

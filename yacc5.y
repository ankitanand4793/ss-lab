%{
#include<stdio.h>
%}
%token DIGIT
%%
S:S DIGIT|DIGIT DIGIT DIGIT;
%%
void main()
{
printf("enter an integer\n");
yyparse();
}
void yyerror()
{
printf("invalid\n");
exit(0);
}

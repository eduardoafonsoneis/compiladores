%{
#include <stdio.h>
int yylex();
int yyerror(char *s);
%}

%token INTEGER FLOAT CHAR VIRGULA FIMDECLARACAO ID


%{
#include <stdio.h>
int yylex();
void yyerror(char *s);
%}

%token INTEGER FLOAT CHAR VIRGULA FIMDECL ID

%start start

%%

start: TIPO idstream FIMDECL {printf("declaracao")}
;
idstream: ID, idstream {}
	| ID {}
;

%%

int main()
{
	return yyparse();
}

void yyerror(char *msg)
{
	fprintf(stderr, "erro: %s\n", msg);
}

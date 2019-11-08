%{
#include <stdio.h>
int yylex();
void yyerror(char *s);
%}

%token INTEGER FLOAT CHAR VIRGULA FIMDECL
%token <strr> ID
%start start

%union {
	char* strr;
}

%%

start: tipo idstream FIMDECL {printf(" declaracao completa");}
;
idstream: ID VIRGULA idstream {printf(", ID ");}
	| ID  {printf(" ID ");}
;
tipo: CHAR {printf(" tipo:char ");}
	| INTEGER {printf(" tipo:int ");}
	| FLOAT {printf(" tipo:float ");}
%%

int main()
{
	return yyparse();
}

void yyerror(char *msg)
{
	fprintf(stderr, "erro: %s\n", msg);
}

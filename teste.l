

%{
#include <stdio.h>
#include"teste.tab.h"
%}

%%

[ \t] ;
";"  {return FIMDECL;}
"int"        {return INTEGER;}
"float"      {return FLOAT;}
"char"       {return CHAR;}
"," {return VIRGULA;}
"if" {return IF;}
[a-zA-Z_]+[a-zA-Z0-9_]* {yylval.strr=strdup(yytext); return ID;}
. {printf("Charactere invalido");}

%%

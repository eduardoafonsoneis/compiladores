%option main

%{
#include <stdio.h>
%}

%%

[ \t] ;
";"  {printf("Fim da declaracao");}
"int"        {printf("integer");}
"float"      {printf("float number");}
"char"       {printf("char");}
"," {printf("virgula");}
[a-zA-Z_]+[a-zA-Z0-9_]* {printf("ID");}
. {printf("erro");}

%%

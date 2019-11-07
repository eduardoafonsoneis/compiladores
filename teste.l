%option main

%{
#include <stdio.h>
#include<teste.tab.h>
%}

%%

[ \t] ;
";"  {return FIMDECL;}
"int"        {return INTEGER;}
"float"      {return FLOAT;}
"char"       {return CHAR;}
"," {return VIRGULA;}
[a-zA-Z_]+[a-zA-Z0-9_]* {return ID;}
. {return ERRO;}

%%

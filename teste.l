%{
#include <stdio.h>
#include"teste.tab.h"
%}

%%

[ \t] ;
";"  {return FIMDECL;}
":" {return DOISPONT;}
"," {return VIRGULA;}
"if" {return IF;}
[a-zA-Z_]+[a-zA-Z0-9_]* {yylval.strr=strdup(yytext); return ID;}
"if" {return IF;}
"(" {return ABREPAR;}
")" {return FECHAPAR;}
"{" {return ABREBLOQ;}
"}" {return FECHABLOQ;}
"switch" {return SWITCH;}
"+" {return OPSOMA;}
"-" {return OPSUB;}
"*" {return OPMUL;}
"/" {return OPDIV;}
"%" {return OPMOD;}
"++" {return OPINC;}
"--" {return OPDEC;}
"=" {return OPREC;}
"+=" {return OPSOMAALT;}
"-=" {return OPSUBALT;}
"/=" {return OPDIVALT;}
"%=" {return OPMODALT;}
"==" {return OPIGUAL;}
"!=" {return OPDIF;}
"<=" {return MENORIGUAL;}
">=" {return MAIORIGUAL;}
"<"  {return OPMENOR;}
">"  {return OPMAIOR;}
"&&" {return OPAND;}
"||" {return OPOR;}
"!" {return OPNOT;}
. {printf("Charactere invalido");}

%%

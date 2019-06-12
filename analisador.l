%option noyywrap

%{
#include <stdio.h>
#define YY_DECL int yylex()
#include "parser.tab.h"
%}

%%

[ \t]	; //Ignora os espaços em branco
[0-9]+\.[0-9]+ 	{yylval.fval = atof(yytext); return FLOAT;} //Expressão para números floats
[0-9]+		{yylval.ival = atoi(yytext); return INT;} //Expressão para números int
\n		{return LINHA;}
"+"		{return MAIS;}
"-"		{return MENOS;}
"*"		{return MULT;}
"/"		{return DIVI;}

"("		{return P_ESQ;}
")"		{return P_DIR;}
"{"		{return CH_ESQ;}
"}"		{return CH_DIR;}
"["		{return CO_ESQ;}
"]"		{return CO_DIR;}

"=="	{return EQ;}
":="	{return AS;}
"!="	{return DIF;}
"<="	{return LE;}
">="	{return ME;}
">"		{return M;}
"<"		{return L;}
";"		{return PONTO_VIRG;}

"exit"	{return T_QUIT;}
"quit"	{return T_QUIT;}

%%

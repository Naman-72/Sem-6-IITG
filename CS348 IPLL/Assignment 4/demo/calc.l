%{
#include "calc.tab.h"
#define WS 1000
%}

ID 						[a-zA-Z_][a-zA-Z0-9_]*
NONZERO_DIGIT           [1-9]
DIGIT                   [0-9]
SIGN                    [+]|[-]
INT_CONST 				{NONZERO_DIGIT}{DIGIT}*
WS 						[ \t]

%%


"+"						{return PLUS;}
"-"						{return SUB;}
"*"						{return MULT;}
"/"						{return DIV;}
"^"						{return POW;}
{INT_CONST}				{return INT_CONST;}
"\n"					{return NL;}
"#"						{return EOI;}
{WS}					{}
%%

int yywrap() {}

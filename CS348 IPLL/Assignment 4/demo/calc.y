%{
#include <math.h>
#include <stdio.h>
int yylex (void);
int yyerror (char const *s);
#define YYDEBUG 1
%}

/* Bison declarations. */


%define api.value.type {int}

%token INT_CONST NL EOI
%left SUB PLUS
%left MULT DIV

/* negation--unary minus */
%right POW
/* exponentiation */


%% /* The grammar follows. */

input:
%empty
| line EOI { printf("Executed Rule 2\n"); printf("##############################################\n\n");}
;

line:
%empty
| line	exp NL { printf("Executed Rule 4\n"); printf("****************************************\n\n");}
;


exp:
	INT_CONST			{ printf("Executed Rule 5\n");}
	| exp PLUS exp		{ $$ = $1 + $3; printf("Executed Rule 6\n");}
	| exp SUB exp		{ $$ = $1 - $3; printf("Executed Rule 7\n");}
	| exp MULT exp		{ $$ = $1 * $3; printf("Executed Rule 8\n");}
	| exp DIV exp		{ $$ = $1 / $3; printf("Executed Rule 9\n");}
	| exp POW exp		{ $$ = pow($1, $3); printf("Executed Rule 10\n");}
	| SUB exp			{$$ = - $2; printf("Executed Rule 11\n");}
	;
	
%%

int yyerror(char const *s) {}



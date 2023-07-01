%{
    #include <stdio.h>
    #include "y.tab.h"
%}

%option yylineno

eseq	\\'|\\\"|\\\?|\\\\|\\a|\\b|\\f|\\n|\\r|\\t|\\v
arrow_symbol "->"
less_than_equal_operator "<="
greater_than_equal_operator ">="
equality_operator "=="
inequality_operator "!="
logical_and_operator "&&"
logical_or_operator "||"
str_literal \"([^"\\^\n]|{eseq})*\"

single_line_comment "//"[^\n]*
multi_line_comment "/*"([^*]|\*+[^*/])*\*+"/"
char "char"
else "else"
for "for"
if "if"
int "int"
return "return"
void "void"
identifier [_a-zA-Z][a-zA-Z0-9_]*
punctuator (\[|\]|\(|\)|\{|\}|->|&|\*|\+|\-|\/|\%|!|\?|<|>|=|:|;|,)
non_zero_integer ((\+|\-)?([1-9][0-9]*))
char_constant '([^'^\\^\n]|{eseq})'

%%
[ \t\n]+ {}
{arrow_symbol} {return ARROW_SYMBOL;}
{less_than_equal_operator} {return LESS_THAN_EQUAL_OPERATOR;}
{greater_than_equal_operator} {return GREATER_THAN_EQUAL_OPERATOR;}
{equality_operator} {return EQUALITY_OPERATOR;}
{inequality_operator} {return INEQUALITY_OPERATOR;}
{logical_and_operator} {return LOGICAL_AND_OPERATOR;}
{logical_or_operator} {return LOGICAL_OR_OPERATOR;}
{single_line_comment} {}
{multi_line_comment} {}
{char} {return CHAR;}
{else} {return ELSE;}
{for} {return FOR;}
{if} {return IF;}
{int} {return INT;}
{return} {return RETURN;}
{void} {return VOID;}
{str_literal} {
    return STRING_LITERAL;
    }
{identifier} {return IDENTIFIER;}
{punctuator} {return yytext[0];}
0|{non_zero_integer}   {return INT_CONST;}
{char_constant} {return CHAR_CONST;}

. {printf("Parsing Error : %s\n",yytext);}

%%


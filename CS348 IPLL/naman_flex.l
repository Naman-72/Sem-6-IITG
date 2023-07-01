/* FORMAT FOR FLEX */
/* % { */
/* // definitions  */
/* %} */
/* RULES FOR FLEX */
/* 
%%
    PRIORITY WISE
%%
*/
/* ************************************************************************* */
%{
        
%}

%%

[a-z]   {printf("Small Letter\n");}
.   {printf("NOT A Small Letter\n");}
\n  {return 0;}

%%

yywrap() {}
// driver func
int main()
{
    printf("Enter String :");
    // take the input and rule matching -> yylex 
    yylex();
    return 0;
}
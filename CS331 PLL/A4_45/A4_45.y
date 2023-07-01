%{
    /*  PROLOUGUE */
    #include <stdio.h>
    #include <stdlib.h>
    extern int yylex();
    void yyerror(char*);
    extern int yylineno;
%}

%union {
      int value;
      char *val;
}

%token IDENTIFIER
%token INT_CONST
%token CHAR_CONST
%token STRING_LITERAL
%token ARROW_SYMBOL
%token LESS_THAN_EQUAL_OPERATOR
%token GREATER_THAN_EQUAL_OPERATOR
%token EQUALITY_OPERATOR
%token INEQUALITY_OPERATOR
%token LOGICAL_AND_OPERATOR
%token LOGICAL_OR_OPERATOR
%token VOID
%token CHAR
%token INT
%token IF
%token ELSE
%token FOR
%token RETURN


%start translation_unit
%%
//  // GRAMMER RULES FOR EXPRESSIONS :
/*
primary-expression:
identifier // Simple identifier
constant // Integer or character constant
string-literal
( expression )
*/

// primary_expr :      IDENTIFIER 
//                 |   CONSTANT
//                 |   STRING_LITERAL
//                 |   '(' expression ')' ;

// we have breaked here constant to int_const and char_const
primary_expr :      IDENTIFIER {printf("%d) Primary expression -> Identifier\n",yylineno);}
                |   INT_CONST {printf("%d) Primary expression -> Integer constant\n",yylineno);}
                |   CHAR_CONST {printf("%d) Primary expression -> Character constant\n",yylineno);}
                |   STRING_LITERAL {printf("%d) Primary expression -> String Literal\n",yylineno);}
                |   '(' expr ')' {printf("%d) Primary expression -> '(' expr ')' \n",yylineno);}
                ;


/*
postfix-expression: // Expressions with postfix operators. Left assoc. in C; non-assoc. here
primary-expression
postfix-expression [ expression ] // 1-D array access
postfix-expression ( argument-expression-list OPT  ) // Function invocation
postfix-expression -> identifier // Pointer indirection. Only one level
// Only a single postfix op is allowed in an expression here
*/
// BECAUSE OF SINGLE POSTFIX OPERATION
postfix_expr      :    primary_expr {printf("%d) Postfix expression -> Primary expression\n",yylineno);}
                    |   IDENTIFIER '[' expr ']' {printf("%d) Postfix expression -> '[' expr ']'\n",yylineno);}
                    |   IDENTIFIER '(' arg_expr_list_opt ')' {printf("%d) Postfix expression -> '(' arg_expr_list_opt ')'\n",yylineno);}
                    |   IDENTIFIER ARROW_SYMBOL IDENTIFIER {printf("%d) Postfix expression -> ARROW_SYMBOL IDENTIFIER\n",yylineno);}
                    ;


/*
argument-expression-list:
assignment-expression
argument-expression-list , assignment-expression
*/

arg_expr_list_opt :       
                    | arg_expr_list {printf("%d) arg_expr_list_opt -> arg_expr_list\n",yylineno);}
                    ;
                    
arg_expr_list :     assign_expr {printf("%d) arg_expr_list -> assign_expr\n",yylineno);}
                |   arg_expr_list ',' assign_expr {printf("%d) arg_expr_list -> arg_expr_list ',' assign_expr\n",yylineno);} 
                ;
                
/*
unary-expression:
postfix-expression
unary-operator unary-expression // Expr. with prefix ops. Right assoc. in C; non-assoc. here
// Only a single prefix op is allowed in an expression here
*/

unary_expr : postfix_expr {printf("%d) unary_expr -> postfix_expr\n",yylineno);}
            | unary_operator unary_expr {printf("%d) unary_expr -> unary_operator unary-expr\n",yylineno);}
            ;
            
/*
unary-operator: one of
& * + - ! // address op, de-reference op, sign ops, boolean negation op
*/

unary_operator : '&' {printf("%d) unary-operator -> &\n",yylineno);}
                | '*' {printf("%d) unary-operator -> *\n",yylineno);}
                | '+' {printf("%d) unary-operator -> +\n",yylineno);}
                | '-' {printf("%d) unary-operator -> -\n",yylineno);}
                | '!' {printf("%d) unary-operator -> !\n",yylineno);}
                ;


/*
multiplicative-expression: // Left associative operators
unary-expression
multiplicative-expression * unary-expression
multiplicative-expression / unary-expression
multiplicative-expression % unary-expression
*/

mul_expr : unary_expr {printf("%d) mul_expr -> unary_expression\n",yylineno);}
            | mul_expr '*' unary_expr {printf("%d) mul_expr -> mul_expr '*' unary_expr\n",yylineno);}
            | mul_expr '/' unary_expr {printf("%d) mul_expr -> mul_expr '/' unary_expr\n",yylineno);}
            | mul_expr '%' unary_expr {printf("%d) mul_expr -> mul_expr %% unary_expr\n",yylineno);}
            ;

/*
additive-expression: // Left associative operators
multiplicative-expression
additive-expression + multiplicative-expression
additive-expression - multiplicative-expression
*/

add_expr : mul_expr {printf("%d) add_expr -> mul_expr\n",yylineno);}
            | add_expr '+' mul_expr {printf("%d) add_expr -> add_expr '+' mult_expr\n",yylineno);}
            | add_expr '-' mul_expr {printf("%d) add_expr -> add_expr '-' mult_expr\n",yylineno);}
            ;

/*
relational-expression: // Left associative operators
additive-expression
relational-expression < additive-expression
relational-expression > additive-expression
relational-expression <= additive-expression
relational-expression >= additive-expression
*/

rel_expr : add_expr {printf("%d) rel_expr -> add_expr\n",yylineno);}
            | rel_expr '<' add_expr {printf("%d) rel_expr -> rel_expr '<' add_expr\n",yylineno);}
            | rel_expr '>' add_expr {printf("%d) rel_expr -> rel_expr '>' add_expr\n",yylineno);}
            | rel_expr LESS_THAN_EQUAL_OPERATOR add_expr {printf("%d) rel_expr -> rel_expr '<=' add_expr\n",yylineno);}
            | rel_expr GREATER_THAN_EQUAL_OPERATOR add_expr {printf("%d) rel_expr -> rel_expr '>=' add_expr\n",yylineno);}
            ;

/*
equality-expression: // Left associative operators
relational-expression
equality-expression == relational-expression
equality-expression != relational-expression
*/

equality_expr : rel_expr {printf("%d) equality_expr -> rel_expr\n",yylineno);}
            | equality_expr EQUALITY_OPERATOR rel_expr {printf("%d) equality_expr -> equality_expr '==' rel_expr\n",yylineno);}
            | equality_expr INEQUALITY_OPERATOR rel_expr {printf("%d) equality_expr -> equality_expr '!=' rel_expr\n",yylineno);}
            ;

/*
logical-AND-expression: // Left associative operators
equality-expression
logical-AND-expression && equality-expression
*/

logical_and_expr : equality_expr {printf("%d) logical_and_expr -> equality_expr\n",yylineno);}
            | logical_and_expr LOGICAL_AND_OPERATOR equality_expr {printf("%d) logical_and_expr -> &&\n",yylineno);}
            ;

/*
logical-OR-expression: // Left associative operators
logical-AND-expression
logical-OR-expression || logical-AND-expression
*/

logical_or_expr : logical_and_expr {printf("%d) logical_or_expr -> logical_and_expr\n",yylineno);}
            | logical_or_expr LOGICAL_OR_OPERATOR logical_and_expr {printf("%d) logical_or_expr -> logical_or_expr || logical_and_expr\n",yylineno);}
            ;

/*
conditional-expression: // Right associative operator
logical-OR-expression
logical-OR-expression ? expression : conditional-expression
*/

cond_expr : logical_or_expr {printf("%d) conditional_expression -> logical_or_expr\n",yylineno);}
            | logical_or_expr '?' expr ':' cond_expr {printf("%d) conditional_expression -> logical_or_expr '?' cond_expr\n" ,yylineno);}
            ; 
            
/*
assignment-expression: // Right associative operator
conditional-expression
unary-expression = assignment-expression // unary-expression must have lvalue
*/

assign_expr : cond_expr {printf("%d) assignment-expression -> conditional_expression\n",yylineno);}
            | unary_expr '=' assign_expr {printf("%d) assignment-expression -> unary-expression = assign_expr\n" ,yylineno);}
            ;

/*
expression:
assignment-expression
*/

expr_opt :  
            | expr {printf("%d) expression_optional -> expression\n" ,yylineno);}
            ;

expr : assign_expr {printf("%d) expression -> assignment-expression\n" ,yylineno);}
;


// GRAMMER RULES FOR Declarations :
/*
declaration: // Simple identifier, 1-D array or function declaration of built-in type
type-specifier init-declarator ; // Only one element in a declaration
*/

declaration : type_specifier init_declarator ';' {printf("%d) declaration -> type-specifier init_declarator\n", yylineno);}
;

/*
init-declarator:
declarator // Simple identifier, 1-D array or function declaration
declarator = initializer // Simple id with init. initializer for array / fn/ is semantically skipped
*/

init_declarator : declarator {printf("%d) init_declarator -> declarator\n" ,yylineno);}
                | declarator '=' initializer {printf("%d) init_declarator -> declarator '=' initializer\n" ,yylineno);}
                ;
                
                
/*
type-specifier: // Built-in types
void
char
int
*/

type_specifier : VOID {printf("%d) type_specifier -> VOID\n" ,yylineno);}
                | CHAR {printf("%d) type_specifier -> CHAR\n" ,yylineno);}
                | INT  {printf("%d) type_specifier -> INT\n" ,yylineno);}
                ;

/*
declarator:
pointeropt direct-declarator // Optional injection of pointer
*/

declarator : pointer_opt direct_declarator {printf("%d) declarator -> pointer_opt direct_declarator\n" ,yylineno);}
;

/*
direct-declarator:
identifier // Simple identifier
identifier [ integer-constant ] // 1-D array of a built-in type or ptr to it. Only +ve constant
identifier ( parameter-listopt ) // Fn. header with params of built-in type or ptr to them
*/

direct_declarator : IDENTIFIER {printf("%d) direct_declarator -> IDENTIFIER\n" ,yylineno);}
                    | IDENTIFIER '[' INT_CONST ']' {printf("%d) direct_declarator -> IDENTIFIER '[' integer_constant ']\n" ,yylineno);}
                    | IDENTIFIER '(' parameter_list_opt ')' {printf ("%d) direct_declarator -> IDENTIFIER '(' parameter_list_opt ')'\n", yylineno);}
                    ;

/*
pointer:
*
*/
pointer_opt :  
                | pointer {printf("%d) pointer-optional -> pointer\n" ,yylineno);}
                ;

pointer : '*' {printf("%d) pointer -> '*'\n" ,yylineno);}
;

/*
parameter-list:
parameter-declaration
parameter-list , parameter-declaration
*/

parameter_list_opt :  
                    | parameter_list {printf("%d) parameter_list_optional -> parameter_list\n" ,yylineno);}
                    ;
parameter_list : parameter_declaration {printf("%d) parameter_list_ -> parameter_declaration\n" ,yylineno);}
                 | parameter_list ',' parameter_declaration {printf("%d) parameter_list -> parameter_list ',' parameter_declaration\n" ,yylineno);}
                 ;

/*
parameter-declaration:
type-specifier pointeropt identifieropt // Only simple ids of a built-in type or ptr to it as params
*/

parameter_declaration : type_specifier pointer_opt identifier_opt {printf("%d) parameter_declaration -> type_specifier pointer_opt identifier_opt\n" ,yylineno);}
;

identifier_opt :  
                | IDENTIFIER {printf("%d) identifier_opt -> IDENTIFIER\n" ,yylineno);}
                ;

/*
initializer:
    assignment-expression
*/

initializer : assign_expr {printf("%d) initializer -> assign_expr\n" ,yylineno);}
;

// GRAMMER RULES FOR Statements
/*
statement:
compound-statement // Multiple statements and / or nest block/s
expression-statement // Any expression or null statements
selection-statement // if or if-else
iteration-statement // for
jump-statement // return
*/

statement : compound_statement {printf("%d) statement -> compound_statement\n" ,yylineno);}
            | expr_statement {printf("%d) statement -> expr_statement\n" ,yylineno);}
            | selection_statement {printf("%d) statement -> selection_statement\n" ,yylineno);}
            | itr_statement {printf("%d) statement -> itr_statement\n" ,yylineno);}
            | jmp_statement  {printf("%d) statement -> jmp_statement\n" ,yylineno);}
            ;


/*
compound-statement:
{ block-item-listopt }
*/

compound_statement : '{' block_item_list_opt '}' {printf("%d) compound_statement -> '{' block_item_list_opt '}'\n" ,yylineno);}
;

/*
block-item-list:
block-item
block-item-list block-item
*/

block_item_list_opt :  
                    | block_item_list {printf("%d) block_item_list_opt -> block_item_list\n" ,yylineno);}
                    ;

block_item_list : block_item {printf("%d) block_item_list -> block_item\n" ,yylineno);}
                | block_item_list block_item {printf("%d) block_item_list -> block_item_list block_item\n" ,yylineno);}
                ;

/*
block-item: // Block scope - declarations followed by statements
declaration
statement
*/

block_item : declaration {printf("%d) block_item -> declaration\n" ,yylineno);}
            | statement {printf("%d) block_item -> statement\n" ,yylineno);}
            ;

/*
expression-statement:
expressionopt ;
*/

expr_statement : expr_opt ';' {printf("%d) expr_statement -> expr_opt ';'\n" ,yylineno);}
;

/*
selection-statement:
if ( expression ) statement
if ( expression ) statement else statement
*/

selection_statement : IF '(' expr ')' statement {printf("%d) selection_statement -> IF '(' expr ')' statement\n" ,yylineno);}
                     | IF '(' expr ')' statement ELSE statement {printf("%d) selection_statement -> IF '(' expr ')' statement ELSE statement\n" ,yylineno);}
                     ;

/*
iteration-statement:
for ( expressionopt ; expressionopt ; expressionopt ) statement
*/

itr_statement : FOR '(' expr_opt ';' expr_opt ';' expr_opt ')' statement {printf("%d) itr_statement -> FOR '(' expr_opt ';' expr_opt ';' expr_opt ')' statement\n" ,yylineno);}
;


/*
jump-statement:
return expressionopt ;
*/

jmp_statement : RETURN expr_opt ';' {printf("%d) jmp_statement -> RETURN expr_opt ';'\n" ,yylineno);}
;


// Grammer Rules for Translation Unit
/*
translation-unit:
external-declaration
translation-unit external-declaration
*/
translation_unit : ext_declaration  {printf("%d) translation_unit -> ext_declaration\n" ,yylineno);}
                | translation_unit ext_declaration {printf("%d) translation_unit -> translation_unit ext_declaration\n" ,yylineno);}
                ;

/*
external-declaration:
function-definition
declaration
*/

ext_declaration : func_defn {printf("%d) ext_declaration -> func_defn\n" ,yylineno);}
                | declaration {printf("%d) ext_declaration -> declaration\n" ,yylineno);}
                ;

/*
function-definition:
declaration-specifiers declarator declaration-listopt compound-statement
*/
// func_defn : type_specifier declarator   compound_statement {printf("%d) func_defn -> type_specifier declarator compound_statement\n" ,yylineno);}
//int func()int x=0;{}
func_defn : type_specifier declarator  declaration_list_opt  compound_statement {printf("%d) func_defn -> type_specifier declarator  declaration_list_opt  compound_statement\n" ,yylineno);}
;

/*
declaration-list:
declaration
declaration-list declaration
*/
declaration_list_opt :  
                    | declaration_list 
                    ;
                    

declaration_list : declaration {printf("%d) declaration_list -> declaration\n" ,yylineno);}
                | declaration_list declaration {printf("%d) declaration_list -> declaration_list declaration\n" ,yylineno);}
                ;


%%
// EPILOGUE

void yyerror(char *s) {
    printf("%d) Error: %s\n",yylineno, s);
    return;
}
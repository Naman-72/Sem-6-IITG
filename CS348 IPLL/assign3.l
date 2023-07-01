%{
#define CHAR 				10
#define ELSE 				11
#define FOR 				12
#define IF 					13
#define INT 				14
#define RETURN 				15
#define VOID 				16
#define	ID					17
#define	INT_CONST			18
#define CHAR_CONST			19
#define STRING_CONST 		20
#define LSQBRACKET 			21
#define RSQBRACKET 			22
#define	LBRACE				23
#define	RBRACE				24
#define LPARAN				25
#define RPARAN 				26
#define ARROW				27
#define BIT_AND 			28
#define	PLUS				29
#define SUB		 			30
#define	MULT				31
#define DIV 				32
#define MOD 				33
#define LOG_NOT 			34
#define LOG_AND				35
#define LOG_OR 				36
#define LESS				37
#define GREATER 			38
#define LESSEQ				39
#define GREATEREQ			40
#define EQUALS				41
#define NOTEQ				42
#define QUES 				43
#define COLON				44
#define	SEMICOLON			45
#define	ASSIGN				46
#define COMMA				47
#define SINGLE_COMMENT		48
#define MULTI_COMMENT		49
%}


/*keywords*/
CHAR                        "char"
ELSE                        "else"
FOR                         "for"
IF                          "if"
INT                         "int"
RETURN                      "return"
VOID                        "void"

/*Identifier*/
ID                          [a-zA-Z_][a-zA-Z0-9_]*

/*constants*/
DIG_SEQ                     [0-9]+
INT_CONST                   [1-9][0-9]*
ESC_SEQ					    [\\][']|[\\]["]|[\\][?]|[\\][\\]|[\\][a]|[\\][b]|[\\][f]|[\\][n]|[\\][r]|[\\][t]|[\\][v]
C_CHAR					    [^'\n\\]|{ESC_SEQ}
C_CHAR_SEQ				    {C_CHAR}+
CHAR_CONST				    [']{C_CHAR_SEQ}[']

/*string literals */
S_CHAR 					    [^"\n\\]|{ESC_SEQ}
S_CHAR_SEQ				    {S_CHAR}+
STRING_CONST			    ["]{S_CHAR_SEQ}["]|["]["]

/* comments*/
SINGLE_COMMENT			    [/][/][^\n]*[\n]
SENTENCE				    [^*]|[*]+[^/*]
MULTI_COMMENT			    [/][*]{SENTENCE}*[*]+[/]

/*white space */
WS                          [ \t\n]


%%
{MULTI_COMMENT}					{return MULTI_COMMENT;}
{SINGLE_COMMENT}				{return SINGLE_COMMENT;}
{CHAR}							{return CHAR;}
{ELSE}							{return ELSE;}
{FOR}							{return FOR;}
{IF}							{return IF;}
{INT}							{return INT;}
{RETURN}						{return RETURN;}
{VOID}							{return VOID;}


{ID}							{return ID;}

{INT_CONST}						{return INT_CONST;}
{CHAR_CONST}					{return CHAR_CONST;}
{STRING_CONST}					{return STRING_CONST;}


"["								{return LSQBRACKET;}
"]"								{return RSQBRACKET;}
"{"								{return LBRACE;}
"}"								{return RBRACE;}
"("								{return LPARAN;}
")"								{return RPARAN;}
"->"							{return ARROW;}
"<="							{return LESSEQ;}
">="							{return GREATEREQ;}
"=="							{return EQUALS;}
"!="							{return NOTEQ;}
"&"								{return BIT_AND;}
"+"								{return PLUS;}
"-"								{return SUB;}
"*"								{return MULT;}
"/"								{return DIV;}
"%"								{return MOD;}
"!"								{return LOG_NOT;}
"&&"							{return LOG_AND;}
"||"							{return LOG_OR;}
"<"								{return LESS;}
">"								{return GREATER;}
"?"								{return QUES;}
":"								{return COLON;}
";"								{return SEMICOLON;}
"="								{return ASSIGN;}
","								{return COMMA;}

{WS}							{/* Ignore whitespace */}
%%
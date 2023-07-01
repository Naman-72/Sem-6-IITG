#include<stdio.h>
#include<stdlib.h>

FILE *yyin;
int yylex (void);
int yyparse (void);

int main(int argc, char** argv)
{
	if(argc>1){
        FILE* file;
        file = fopen(argv[1],"r");

        if(!file){
            printf("could not open %s", argv[1]);
            exit(1);
        }

        yyin = file;        
    }
	
	yyparse();
}

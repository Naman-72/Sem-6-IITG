#include <stdio.h>
#include "y.tab.h"
int main(){
  	extern int yydebug;
	yydebug=1;
	int val=yyparse();
	if(!val)
		printf("Successs 🤩️ \nCongrats🙂️\n\n");
	else
		printf("Error ☠️ \nFailure 🙀️\n\n");
	return 0;
}
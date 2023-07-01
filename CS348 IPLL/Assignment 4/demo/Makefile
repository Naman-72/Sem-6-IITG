# Makefile


calc:		bison.o lex.o main.o
		gcc bison.o lex.o main.o -o calc -lm

bison.o:	cacl.tab.c
		gcc -c cacl.tab.c -o bison.o

cacl.tab.c:	calc.y
		bison -d -v calc.y
		
lex.o:		lex.yy.c
		gcc -c lex.yy.c -o lex.o

lex.yy.c:	calc.l
		flex calc.l


main.o:		main.cc
		gcc -c main.c -o main.o


clean:
	rm -f *.o *~ lex.yy.c cacl.tab.c cacl.tab.h calc


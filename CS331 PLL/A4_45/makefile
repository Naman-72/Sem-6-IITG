a.out: y.tab.o lex.yy.o A4_45.o 
	gcc A4_45.o lex.yy.o y.tab.o -lfl
	./a.out < A4_45_TEST_1.nc > output.txt
lex.yy.c: A4_45.l y.tab.h
	flex A4_45.l
y.tab.c: A4_45.y
	bison -dty A4_45.y
A4_45.o: A4_45.c y.tab.h
	cp original.c A4_45.c
	gcc -c A4_45.c
y.tab.h: A4_45.y
	bison -dty A4_45.y
lex.yy.o: lex.yy.c
	gcc -c lex.yy.c
y.tab.o:    y.tab.c y.tab.h
	gcc -c y.tab.c
clean:
	rm a.out lex.yy.o A4_45.o lex.yy.c y.tab.c y.tab.h y.tab.o output.txt
run:
	./a.out < A4_45_TEST_1.nc > output.txt

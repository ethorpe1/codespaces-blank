all: lab4

lab4: lab4.o sum.o
	gcc -o lab4 lab4.o sum.o

lab4.o: lab4.c
	gcc -c lab4.c -o lab4.o

sum.o: sum.s
	gcc -c sum.s -o sum.o

clean:
	rm -f lab4 lab4.o sum.o




test: test.o math.o
			gcc -o test test.o math.o

test.o: test.c
			gcc -c test.c

math.o: math.c
			gcc -c math.c

clean:
			rm *.o

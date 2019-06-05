.PHONY : clean all

all : error_functions.o

error_functions.o : error_functions.c
	gcc -c error_functions.c -o error_functions.o

get_num.o : get_num.c
	gcc -c get_num.c -o get_num.o

clean : 
	-rm error_functions.o
	-rm get_num.o

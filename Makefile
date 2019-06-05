.PHONY : clean all

all: lib/error_functions.o lib/get_num.o copy

lib/error_functions.o : lib/error_functions.c
	gcc -c lib/error_functions.c -o lib/error_functions.o

lib/get_num.o : lib/get_num.c
	gcc -c lib/get_num.c -o lib/get_num.o

copy : fileio/copy.c lib/get_num.o lib/error_functions.o
	gcc fileio/copy.c lib/get_num.o lib/error_functions.o -I lib -o copy

install :
	-mv copy run/copy

clean : 
#	-rm lib/error_functions.o
#	-rm lib/get_num.o
	-rm run/copy

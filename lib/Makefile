.PHONY : clean all

all : error_functions.o

error_functions.o : error_functions.c
	gcc -c error_functions.c -o error_functions.o

get_num.o : get_num.c
	gcc -c get_num.c -o get_num.o

curr_time.o : curr_time.c
	gcc -c curr_time.c -o curr_time.o

print_wait_status.o : print_wait_status.c
	gcc -c print_wait_status.c -o print_wait_status.o

clean : 
	-rm error_functions.o
	-rm get_num.o

.PHONY : clean all

all: lib/error_functions.o lib/get_num.o copy

lib/error_functions.o : lib/error_functions.c
	gcc -c lib/error_functions.c -o lib/error_functions.o

lib/get_num.o : lib/get_num.c
	gcc -c lib/get_num.c -o lib/get_num.o

copy : fileio/copy.c lib/get_num.o lib/error_functions.o
	gcc fileio/copy.c lib/get_num.o lib/error_functions.o -I lib -o copy

necho : proc/necho.c lib/get_num.o lib/error_functions.o
	gcc proc/necho.c lib/get_num.o lib/error_functions.o -I lib -o necho

display-env : proc/display_env.c lib/get_num.o lib/error_functions.o
	gcc proc/display_env.c lib/get_num.o lib/error_functions.o -I lib -o display-env

t-fork : procexec/t_fork.c lib/get_num.o lib/error_functions.o
	gcc procexec/t_fork.c lib/get_num.o lib/error_functions.o -I lib -o t-fork

install-copy :
	mv copy run/copy
install-necho :
	mv necho run/necho
install-display-env :
	mv display-env run/display-env
install-t-fork : 
	mv t-fork run/t-fork

clean-copy : 
#	-rm lib/error_functions.o
#	-rm lib/get_num.o
	rm run/copy

clean-necho :
	rm run/necho

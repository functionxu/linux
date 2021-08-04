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

footprint: procexec/footprint.c lib/get_num.o lib/error_functions.o
	gcc procexec/footprint.c lib/get_num.o lib/error_functions.o -I lib -o footprint

fork-whos-on-first: procexec/fork_whos_on_first.c lib/get_num.o lib/error_functions.o
	gcc procexec/fork_whos_on_first.c lib/get_num.o lib/error_functions.o -I lib -o fork-whos-on-first

install-copy :
	mv copy run/copy
install-necho :
	mv necho run/necho
install-display-env :
	mv display-env run/display-env
install-t-fork : 
	mv t-fork run/t-fork
install-footprint:
	mv footprint run/footprint
install-fork-whos-on-first:
	mv fork-whos-on-first run/fork-whos-on-first

clean-copy : 
#	-rm lib/error_functions.o
#	-rm lib/get_num.o
	rm run/copy

clean-necho :
	rm run/necho

#include "tlpi_hdr.h"

//extern char **environ;

int main(int argc, char *argv[], char *environ[])
{
    char **ep;

    for (ep = environ; *ep != NULL; ep++) {
        puts(*ep); 
    }

    exit(EXIT_SUCCESS);
}

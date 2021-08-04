#include "tlpi_hdr.h"
#include <sys/wait.h>

int func(char *arg[])
{
    return 0;
}

int main(int argc, char *argv[])
{
    pid_t childPid;
    int status;

    childPid = fork();
    if (childPid == -1)
        errExit("fork");

    if (childPid == 0)
        exit(func(argv));

    if (wait(&status) == -1)
        errExit("wait");
}

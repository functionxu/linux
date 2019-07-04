#ifndef SIGNAL_FUNCTIONS_H
#define SIGNAL_FUNCTIONS_H

#include <signal.h>
#include "tlpi_hdr.h"

void printSigset(FILE *of, const char *prefix, const sigset_t *sigset);
int pringSigMask(FILE *of, const char *msg);
int printPendingSigs(FILE *of, const char *msg);

#endif

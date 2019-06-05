#include <stdio.h>
#include <stdlib.h>

char globBuf[65536]; //未初始化数据段，BSS
int primes[] = {2, 3, 5, 7}; //初始化数据段

static int square(int x) { //栈
    int result; //栈

    result = x * x;

    return result;
}

static void doCalc(int val) {
    printf("The square of %d is %d\n", val, square(val));
    
    if (val < 1000) {
        int t;

        t = val * val * val;
        printf("The cube of %d is %d\n", val, t);
    }
}


int main(int argc, char *argv[]) {
    static int key = 9973;

    static char mbuf[10240000];

    char *p;

    p = malloc(1024);
    doCalc(key);

    exit(EXIT_SUCCESS);
}

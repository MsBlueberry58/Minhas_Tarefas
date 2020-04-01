#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(void)
{
    int x;
    x = 0;
    fork();
    ++x;
    printf("ID do processo: %ld, valor de x = %d\n",
           (long)getpid(), x);
    return 0;
}
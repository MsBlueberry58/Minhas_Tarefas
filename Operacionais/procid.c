#include <stdio.h>
#include <unistd.h>
int main(void)
{
    printf("Meu ID de processo e %ld\n", (long)getpid());
    printf("ID do processo-pai e %ld\n", (long)getppid());
    return 0;
}

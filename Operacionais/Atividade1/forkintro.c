#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(void)
{
    pid_t pidFilho = fork();
    if (pidFilho == -1)
    {
        perror("Falhou no fork()!");
        return EXIT_FAILURE;
    }
    if (pidFilho == 0)
    {
        printf("Aqui se executa o código do filho...\n");
        printf("PID filho: %ld\n", (long)getpid());
    }
    else
    {
        printf("Aqui se executa o código do pai...\n");
        printf("PID pai: %ld\n", (long)getpid());
        printf("PID do processo filho retornado por fork(): %ld\n", (long)pidFilho);
    }
    return EXIT_SUCCESS;
}

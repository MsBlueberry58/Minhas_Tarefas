#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
int main(int argc, char *argv[])
{
    pid_t childpid = 0;
    int i, n;
    if (argc != 2)
    {
        fprintf(stderr, "Uso: %s numero\n", argv[0]);
        return EXIT_FAILURE;
    }
    n = atoi(argv[1]);
    for (i = 1; i < n; i++)
        if ((childpid = fork()) <= 0)
            break;
    fprintf(stderr, "#: %d - ID: %ld - ID pai: %ld - ID filho: %ld\n",
            i, (long)getpid(), (long)getppid(), (long)childpid);
    return 0;
}
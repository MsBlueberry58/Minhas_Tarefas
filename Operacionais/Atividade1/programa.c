#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(void)
{
    pid_t childpid;
    childpid = fork();
    if (childpid == -1)
    {
        perror("Failed to fork");
        return 1;
    }
    if (childpid == 0)
        fprintf(stderr, "Filho - PID = %ld\n", (long)getpid());
    else if (wait(NULL) != childpid)
        fprintf(stderr, "Sinal interrompeu wait!\n");
    else
        fprintf(stderr, "Pai - PID = %ld com filho %ld\n", (long)getpid(), (long)childpid);
    return 0;
}
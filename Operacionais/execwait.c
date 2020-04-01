#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void)
{
    pid_t childpid;
    childpid = fork();
    if (childpid == -1)
    {
        perror("Falhou fork!");
        return 1;
    }
    if (childpid == 0)
    { /*codigo do processo filho*/
        execl("/bin/ls", "ls", "-l", NULL);
        perror("Filho não executou ls!");
        return 1;
    }
    if (childpid != wait(NULL))
    { /*codigo do pai*/
        perror("Falha no pai - provocado por sinal ou erro");
        return 1;
    }

    return 0;
}

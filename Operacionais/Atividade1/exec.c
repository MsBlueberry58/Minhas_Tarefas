#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(int argc, char *argv[])
{
    static char *cmd[] = {"who", "ls", "date", "bongobongo"};
    int i;
    printf("0=who,1=ls,2=date,3=bongobongo: ");
    scanf("%d", &i);
    execlp(cmd[i], cmd[i], 0);
    printf("command not found\n");
    return EXIT_SUCCESS;
}
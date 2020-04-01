#include <stdio.h>
#include <unistd.h>
int main(void)
{
    printf("Meu ID real de usuario e %5ld\n", (long)getuid());
    printf("Meu ID efetivo de usuario e %5ld\n", (long)geteuid());
    printf("Meu ID real de grupo e %5ld\n", (long)getgid());
    printf("Meu ID efetivo de grupo e %5ld\n", (long)getegid());
    return 0;
}
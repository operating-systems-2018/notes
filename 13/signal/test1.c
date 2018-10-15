#include <signal.h>
#include <stdio.h>
void sigint(int a)
{
    printf("sigusr1 caught\n"); // not safe
}

int main()
{
    signal(SIGUSR1, sigint);
    while (1) {};
    return 0;
}
